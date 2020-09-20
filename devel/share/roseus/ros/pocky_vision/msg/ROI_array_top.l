;; Auto-generated. Do not edit!


(when (boundp 'pocky_vision::ROI_array_top)
  (if (not (find-package "POCKY_VISION"))
    (make-package "POCKY_VISION"))
  (shadow 'ROI_array_top (find-package "POCKY_VISION")))
(unless (find-package "POCKY_VISION::ROI_ARRAY_TOP")
  (make-package "POCKY_VISION::ROI_ARRAY_TOP"))

(in-package "ROS")
;;//! \htmlinclude ROI_array_top.msg.html


(defclass pocky_vision::ROI_array_top
  :super ros::object
  :slots (_ROI_top_list ))

(defmethod pocky_vision::ROI_array_top
  (:init
   (&key
    ((:ROI_top_list __ROI_top_list) (let (r) (dotimes (i 0) (push (instance pocky_vision::ROI_top :init) r)) r))
    )
   (send-super :init)
   (setq _ROI_top_list __ROI_top_list)
   self)
  (:ROI_top_list
   (&rest __ROI_top_list)
   (if (keywordp (car __ROI_top_list))
       (send* _ROI_top_list __ROI_top_list)
     (progn
       (if __ROI_top_list (setq _ROI_top_list (car __ROI_top_list)))
       _ROI_top_list)))
  (:serialization-length
   ()
   (+
    ;; pocky_vision/ROI_top[] _ROI_top_list
    (apply #'+ (send-all _ROI_top_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pocky_vision/ROI_top[] _ROI_top_list
     (write-long (length _ROI_top_list) s)
     (dolist (elem _ROI_top_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pocky_vision/ROI_top[] _ROI_top_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ROI_top_list (let (r) (dotimes (i n) (push (instance pocky_vision::ROI_top :init) r)) r))
     (dolist (elem- _ROI_top_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pocky_vision::ROI_array_top :md5sum-) "355919cc8ce59f1f4229b0fb075cd563")
(setf (get pocky_vision::ROI_array_top :datatype-) "pocky_vision/ROI_array_top")
(setf (get pocky_vision::ROI_array_top :definition-)
      "ROI_top[] ROI_top_list

================================================================================
MSG: pocky_vision/ROI_top
string  top_box
float64 top_CenterX
float64 top_CenterY
float64 top_Angle
")



(provide :pocky_vision/ROI_array_top "355919cc8ce59f1f4229b0fb075cd563")


