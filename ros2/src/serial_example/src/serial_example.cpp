#include <chrono>
#include <cstdint>
#include <exception>
#include <memory>
#include <rclcpp/parameter_value.hpp>
#include <string>
#include <vector>

#include "rclcpp/rclcpp.hpp"
#include "serial_driver/serial_driver.hpp"
#include "serial_driver/serial_port.hpp"

class SerialPortNode : public rclcpp::Node
{


public:
    SerialPortNode()
        : Node("serial_port_node")
    {
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
            baud_rate = declare_parameter<int>("baud_rate",0);
        }catch(rclcpp::ParameterTypeException& ex){
            RCLCPP_ERROR(this->get_logger(),"The baud rate provided was incalid");
            throw ex;
        }     

        serial_prot_config_ = 
            std::make_unique<drivers::serial_driver::SerialPortConfig>(baud_rate,fc,pt,sb);

        try{
            serial_driver_->init_port(device_name_, *serial_prot_config_);
            
        }catch(const std::exception& ex){
            RCLCPP_ERROR(this->get_logger(),"Error creating serail port %s - %s", device_name_.c_str(), ex.what());
            throw ex;
        }
    }
    
    
private:
    
    using FlowControl = drivers::serial_driver::FlowControl;
    using Parity = drivers::serial_driver::Parity;
    using StopBits = drivers::serial_driver::StopBits;
        
    std::unique_ptr<drivers::serial_driver::SerialDriver> serial_driver_;
    std::unique_ptr<drivers::serial_driver::SerialPortConfig> serial_prot_config_;
    rclcpp::TimerBase::SharedPtr read_timer_;

    uint32_t baud_rate{};
    std::string device_name_;
    
};

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<SerialPortNode>());
    rclcpp::shutdown();
    return 0;
}