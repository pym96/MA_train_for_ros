
(cl:in-package :asdf)

(defsystem "node_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "UserType" :depends-on ("_package_UserType"))
    (:file "_package_UserType" :depends-on ("_package"))
    (:file "UserType" :depends-on ("_package_UserType"))
    (:file "_package_UserType" :depends-on ("_package"))
  ))