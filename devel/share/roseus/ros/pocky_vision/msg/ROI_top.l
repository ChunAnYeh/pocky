;; Auto-generated. Do not edit!


(when (boundp 'pocky_vision::ROI_top)
  (if (not (find-package "POCKY_VISION"))
    (make-package "POCKY_VISION"))
  (shadow 'ROI_top (find-package "POCKY_VISION")))
(unless (find-package "POCKY_VISION::ROI_TOP")
  (make-package "POCKY_VISION::ROI_TOP"))

(in-package "ROS")
;;//! \htmlinclude ROI_top.msg.html


(defclass pocky_vision::ROI_top
  :super ros::object
  :slots (_top_box _top_CenterX _top_CenterY _top_Angle ))

(defmethod pocky_vision::ROI_top
  (:init
   (&key
    ((:top_box __top_box) "")
    ((:top_CenterX __top_CenterX) 0.0)
    ((:top_CenterY __top_CenterY) 0.0)
    ((:top_Angle __top_Angle) 0.0)
    )
   (send-super :init)
   (setq _top_box (string __top_box))
   (setq _top_CenterX (float __top_CenterX))
   (setq _top_CenterY (float __top_CenterY))
   (setq _top_Angle (float __top_Angle))
   self)
  (:top_box
   (&optional __top_box)
   (if __top_box (setq _top_box __top_box)) _top_box)
  (:top_CenterX
   (&optional __top_CenterX)
   (if __top_CenterX (setq _top_CenterX __top_CenterX)) _top_CenterX)
  (:top_CenterY
   (&optional __top_CenterY)
   (if __top_CenterY (setq _top_CenterY __top_CenterY)) _top_CenterY)
  (:top_Angle
   (&optional __top_Angle)
   (if __top_Angle (setq _top_Angle __top_Angle)) _top_Angle)
  (:serialization-length
   ()
   (+
    ;; string _top_box
    4 (length _top_box)
    ;; float64 _top_CenterX
    8
    ;; float64 _top_CenterY
    8
    ;; float64 _top_Angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _top_box
       (write-long (length _top_box) s) (princ _top_box s)
     ;; float64 _top_CenterX
       (sys::poke _top_CenterX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _top_CenterY
       (sys::poke _top_CenterY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _top_Angle
       (sys::poke _top_Angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _top_box
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _top_box (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _top_CenterX
     (setq _top_CenterX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _top_CenterY
     (setq _top_CenterY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _top_Angle
     (setq _top_Angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pocky_vision::ROI_top :md5sum-) "3d377af5cd089c7785cff2ae8dcde5c3")
(setf (get pocky_vision::ROI_top :datatype-) "pocky_vision/ROI_top")
(setf (get pocky_vision::ROI_top :definition-)
      "string  top_box
float64 top_CenterX
float64 top_CenterY
float64 top_Angle
")



(provide :pocky_vision/ROI_top "3d377af5cd089c7785cff2ae8dcde5c3")


