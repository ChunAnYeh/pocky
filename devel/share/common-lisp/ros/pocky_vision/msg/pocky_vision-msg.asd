
(cl:in-package :asdf)

(defsystem "pocky_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ROI_array_bottom" :depends-on ("_package_ROI_array_bottom"))
    (:file "_package_ROI_array_bottom" :depends-on ("_package"))
    (:file "ROI_array_top" :depends-on ("_package_ROI_array_top"))
    (:file "_package_ROI_array_top" :depends-on ("_package"))
    (:file "ROI_bottom" :depends-on ("_package_ROI_bottom"))
    (:file "_package_ROI_bottom" :depends-on ("_package"))
    (:file "ROI_top" :depends-on ("_package_ROI_top"))
    (:file "_package_ROI_top" :depends-on ("_package"))
    (:file "vision_state" :depends-on ("_package_vision_state"))
    (:file "_package_vision_state" :depends-on ("_package"))
  ))