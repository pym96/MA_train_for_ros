#include <chrono>
#include <cstddef>
#include <cstdint>
#include <exception>
#include <memory>
#include <rclcpp/logging.hpp>
#include <string>
#include <thread>
#include <vector>

#include "io_context/io_context.hpp"
#include "rclcpp/rclcpp.hpp"
#include "serial_driver/serial_driver.hpp"
#include "serial_driver/serial_port.hpp"

class SerialPortNode : public rclcpp::Node
{


public:
    SerialPortNode()
        : Node("serial_port_node"),
          owned_ctx_ {new IoContext(2)},
          serial_driver_(new drivers::serial_driver::SerialDriver(*(owned_ctx_)))
    {          
         
        if(owned_ctx_.get() == nullptr){
            RCLCPP_INFO(this->get_logger(),"Current owned_ctx is a null pointer");
        }else{
            RCLCPP_INFO(this->get_logger(),"Current owned_ctx is not a null pointer");
        }
        
        if(serial_driver_.get() == nullptr){
            RCLCPP_INFO(this->get_logger(),"Current serial driver pointer is a null pointer");
        }else{
            RCLCPP_INFO(this->get_logger(),"Current serial driver pointer is not a null pointer");
        }

        param();

        try{
             RCLCPP_INFO(this->get_logger(),"黄树根6");
            serial_driver_->init_port(device_name_, *serial_port_config_);

            if (!serial_driver_->port()->is_open()) {
                serial_driver_->port()->open();
                demo_thread = std::thread(&SerialPortNode::readSerialDemo,this);
            }
        }catch(const std::exception& ex){
            RCLCPP_INFO(this->get_logger(),"黄树根6");

            RCLCPP_ERROR(this->get_logger(),"Error creating serail port %s - %s", device_name_.c_str(), ex.what());
            throw ex;
        }
        
        RCLCPP_INFO(this->get_logger(),"黄树根7");

        
      
    }
    
    ~SerialPortNode(){
        if (demo_thread.joinable()) {
            demo_thread.join();
        }

        if (serial_driver_->port()->is_open()) {
            serial_driver_->port()->close();
         }

        if (owned_ctx_) {
            owned_ctx_->waitForExit();
         }
    }
    
    void demo_serial_start(){
     demo_thread = std::thread(&SerialPortNode::readSerialDemo,this);
     demo_thread.detach();
    }

    void readSerialDemo(){
       std::vector<uint8_t> buffer;
        
       while(rclcpp::ok()){
        
        serial_driver_->port()->receive(buffer);
        
        RCLCPP_INFO(this->get_logger(),"Current buffer content %d",buffer[0]);

       }
    }


    void param(){

        using FlowControl = drivers::serial_driver::FlowControl;
        using Parity = drivers::serial_driver::Parity;
        using StopBits = drivers::serial_driver::StopBits;


        auto fc = FlowControl::NONE;
        auto pt = Parity::NONE;
        auto sb = StopBits::ONE;

        try{
            device_name_ = declare_parameter<std::string>("device_name","/dev/ttyACM0");
        }catch(rclcpp::ParameterTypeException& ex){
            RCLCPP_ERROR(this->get_logger(),"The device name provided was invalid");
            throw ex;
        }

        try{
            baud_rate = declare_parameter<int>("baud_rate",115200);
        }catch(rclcpp::ParameterTypeException& ex){
            RCLCPP_ERROR(this->get_logger(),"The baud rate provided was incalid");
            throw ex;
        }     

        serial_port_config_ = 
            std::make_unique<drivers::serial_driver::SerialPortConfig>(baud_rate,fc,pt,sb);
    }
    
private:

        
    std::unique_ptr<IoContext> owned_ctx_;
    std::unique_ptr<drivers::serial_driver::SerialDriver> serial_driver_;
    std::unique_ptr<drivers::serial_driver::SerialPortConfig> serial_port_config_;
    rclcpp::TimerBase::SharedPtr read_timer_;

    uint32_t baud_rate{};
    std::string device_name_;

    std::thread demo_thread;
    
};

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<SerialPortNode>());
    rclcpp::shutdown();
    return 0;
}