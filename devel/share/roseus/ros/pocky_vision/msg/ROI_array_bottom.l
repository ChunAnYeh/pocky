;; Auto-generated. Do not edit!


(when (boundp 'pocky_vision::ROI_array_bottom)
  (if (not (find-package "POCKY_VISION"))
    (make-package "POCKY_VISION"))
  (shadow 'ROI_array_bottom (find-package "POCKY_VISION")))
(unless (find-package "POCKY_VISION::ROI_ARRAY_BOTTOM")
  (make-package "POCKY_VISION::ROI_ARRAY_BOTTOM"))

(in-package "ROS")
;;//! \htmlinclude ROI_array_bottom.msg.html


(defclass pocky_vision::ROI_array_bottom
  :super ros::object
  :slots (_ROI_bottom_list ))

(defmethod pocky_vision::ROI_array_bottom
  (:init
   (&key
    ((:ROI_bottom_list __ROI_bottom_list) (let (r) (dotimes (i 0) (push (instance pocky_vision::ROI_bottom :init) r)) r))
    )
   (send-super :init)
   (setq _ROI_bottom_list __ROI_bottom_list)
   self)
  (:ROI_bottom_list
   (&rest __ROI_bottom_list)
   (if (keywordp (car __ROI_bottom_list))
       (send* _ROI_bottom_list __ROI_bottom_list)
     (progn
       (if __ROI_bottom_list (setq _ROI_bottom_list (car __ROI_bottom_list)))
       _ROI_bottom_list)))
  (:serialization-length
   ()
   (+
    ;; pocky_vision/ROI_bottom[] _ROI_bottom_list
    (apply #'+ (send-all _ROI_bottom_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pocky_vision/ROI_bottom[] _ROI_bottom_list
     (write-long (length _ROI_bottom_list) s)
     (dolist (elem _ROI_bottom_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pocky_vision/ROI_bottom[] _ROI_bottom_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ROI_bottom_list (let (r) (dotimes (i n) (push (instance pocky_vision::ROI_bottom :init) r)) r))
     (dolist (elem- _ROI_bottom_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pocky_vision::ROI_array_bottom :md5sum-) "dc30c6d1057454a4c58d21103c2cea31")
(setf (get pocky_vision::ROI_array_bottom :datatype-) "pocky_vision/ROI_array_bottom")
(setf (get pocky_vision::ROI_array_bottom :definition-)
      "ROI_bottom[] ROI_bottom_list

================================================================================
MSG: pocky_vision/ROI_bottom
string bottom_box
float64 bottom_CenterX
float64 bottom_CenterY
float64 bottom_Angle

")



(provide :pocky_vision/ROI_array_bottom "dc30c6d1057454a4c58d21103c2cea31")


