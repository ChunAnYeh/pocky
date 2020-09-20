;; Auto-generated. Do not edit!


(when (boundp 'pocky_vision::ROI_bottom)
  (if (not (find-package "POCKY_VISION"))
    (make-package "POCKY_VISION"))
  (shadow 'ROI_bottom (find-package "POCKY_VISION")))
(unless (find-package "POCKY_VISION::ROI_BOTTOM")
  (make-package "POCKY_VISION::ROI_BOTTOM"))

(in-package "ROS")
;;//! \htmlinclude ROI_bottom.msg.html


(defclass pocky_vision::ROI_bottom
  :super ros::object
  :slots (_bottom_box _bottom_CenterX _bottom_CenterY _bottom_Angle ))

(defmethod pocky_vision::ROI_bottom
  (:init
   (&key
    ((:bottom_box __bottom_box) "")
    ((:bottom_CenterX __bottom_CenterX) 0.0)
    ((:bottom_CenterY __bottom_CenterY) 0.0)
    ((:bottom_Angle __bottom_Angle) 0.0)
    )
   (send-super :init)
   (setq _bottom_box (string __bottom_box))
   (setq _bottom_CenterX (float __bottom_CenterX))
   (setq _bottom_CenterY (float __bottom_CenterY))
   (setq _bottom_Angle (float __bottom_Angle))
   self)
  (:bottom_box
   (&optional __bottom_box)
   (if __bottom_box (setq _bottom_box __bottom_box)) _bottom_box)
  (:bottom_CenterX
   (&optional __bottom_CenterX)
   (if __bottom_CenterX (setq _bottom_CenterX __bottom_CenterX)) _bottom_CenterX)
  (:bottom_CenterY
   (&optional __bottom_CenterY)
   (if __bottom_CenterY (setq _bottom_CenterY __bottom_CenterY)) _bottom_CenterY)
  (:bottom_Angle
   (&optional __bottom_Angle)
   (if __bottom_Angle (setq _bottom_Angle __bottom_Angle)) _bottom_Angle)
  (:serialization-length
   ()
   (+
    ;; string _bottom_box
    4 (length _bottom_box)
    ;; float64 _bottom_CenterX
    8
    ;; float64 _bottom_CenterY
    8
    ;; float64 _bottom_Angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _bottom_box
       (write-long (length _bottom_box) s) (princ _bottom_box s)
     ;; float64 _bottom_CenterX
       (sys::poke _bottom_CenterX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottom_CenterY
       (sys::poke _bottom_CenterY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottom_Angle
       (sys::poke _bottom_Angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _bottom_box
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bottom_box (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _bottom_CenterX
     (setq _bottom_CenterX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottom_CenterY
     (setq _bottom_CenterY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottom_Angle
     (setq _bottom_Angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pocky_vision::ROI_bottom :md5sum-) "a26b9311496d0733040a34bd19d4492d")
(setf (get pocky_vision::ROI_bottom :datatype-) "pocky_vision/ROI_bottom")
(setf (get pocky_vision::ROI_bottom :definition-)
      "string bottom_box
float64 bottom_CenterX
float64 bottom_CenterY
float64 bottom_Angle

")



(provide :pocky_vision/ROI_bottom "a26b9311496d0733040a34bd19d4492d")


