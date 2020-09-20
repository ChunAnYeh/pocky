
(cl:in-package :asdf)

(defsystem "pocky_vision-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pocky_data" :depends-on ("_package_pocky_data"))
    (:file "_package_pocky_data" :depends-on ("_package"))
  ))