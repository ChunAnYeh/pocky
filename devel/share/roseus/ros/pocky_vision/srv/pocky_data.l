;; Auto-generated. Do not edit!


(when (boundp 'pocky_vision::pocky_data)
  (if (not (find-package "POCKY_VISION"))
    (make-package "POCKY_VISION"))
  (shadow 'pocky_data (find-package "POCKY_VISION")))
(unless (find-package "POCKY_VISION::POCKY_DATA")
  (make-package "POCKY_VISION::POCKY_DATA"))
(unless (find-package "POCKY_VISION::POCKY_DATAREQUEST")
  (make-package "POCKY_VISION::POCKY_DATAREQUEST"))
(unless (find-package "POCKY_VISION::POCKY_DATARESPONSE")
  (make-package "POCKY_VISION::POCKY_DATARESPONSE"))

(in-package "ROS")





(defclass pocky_vision::pocky_dataRequest
  :super ros::object
  :slots (_request_flag ))

(defmethod pocky_vision::pocky_dataRequest
  (:init
   (&key
    ((:request_flag __request_flag) 0)
    )
   (send-super :init)
   (setq _request_flag (round __request_flag))
   self)
  (:request_flag
   (&optional __request_flag)
   (if __request_flag (setq _request_flag __request_flag)) _request_flag)
  (:serialization-length
   ()
   (+
    ;; int64 _request_flag
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _request_flag
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _request_flag (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _request_flag) (= (length (_request_flag . bv)) 2)) ;; bignum
              (write-long (ash (elt (_request_flag . bv) 0) 0) s)
              (write-long (ash (elt (_request_flag . bv) 1) -1) s))
             ((and (class _request_flag) (= (length (_request_flag . bv)) 1)) ;; big1
              (write-long (elt (_request_flag . bv) 0) s)
              (write-long (if (>= _request_flag 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _request_flag s)(write-long (if (>= _request_flag 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _request_flag
#+(or :alpha :irix6 :x86_64)
      (setf _request_flag (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _request_flag (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass pocky_vision::pocky_dataResponse
  :super ros::object
  :slots (_is_done _top_box _top_CenterX _top_CenterY _top_Angle _bottom_box _bottom_CenterX _bottom_CenterY _bottom_Angle ))

(defmethod pocky_vision::pocky_dataResponse
  (:init
   (&key
    ((:is_done __is_done) nil)
    ((:top_box __top_box) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:top_CenterX __top_CenterX) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:top_CenterY __top_CenterY) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:top_Angle __top_Angle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bottom_box __bottom_box) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bottom_CenterX __bottom_CenterX) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bottom_CenterY __bottom_CenterY) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bottom_Angle __bottom_Angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _is_done __is_done)
   (setq _top_box __top_box)
   (setq _top_CenterX __top_CenterX)
   (setq _top_CenterY __top_CenterY)
   (setq _top_Angle __top_Angle)
   (setq _bottom_box __bottom_box)
   (setq _bottom_CenterX __bottom_CenterX)
   (setq _bottom_CenterY __bottom_CenterY)
   (setq _bottom_Angle __bottom_Angle)
   self)
  (:is_done
   (&optional __is_done)
   (if __is_done (setq _is_done __is_done)) _is_done)
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
    ;; bool _is_done
    1
    ;; string[] _top_box
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _top_box)) 4
    ;; float64[] _top_CenterX
    (* 8    (length _top_CenterX)) 4
    ;; float64[] _top_CenterY
    (* 8    (length _top_CenterY)) 4
    ;; float64[] _top_Angle
    (* 8    (length _top_Angle)) 4
    ;; string[] _bottom_box
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _bottom_box)) 4
    ;; float64[] _bottom_CenterX
    (* 8    (length _bottom_CenterX)) 4
    ;; float64[] _bottom_CenterY
    (* 8    (length _bottom_CenterY)) 4
    ;; float64[] _bottom_Angle
    (* 8    (length _bottom_Angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_done
       (if _is_done (write-byte -1 s) (write-byte 0 s))
     ;; string[] _top_box
     (write-long (length _top_box) s)
     (dolist (elem _top_box)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _top_CenterX
     (write-long (length _top_CenterX) s)
     (dotimes (i (length _top_CenterX))
       (sys::poke (elt _top_CenterX i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _top_CenterY
     (write-long (length _top_CenterY) s)
     (dotimes (i (length _top_CenterY))
       (sys::poke (elt _top_CenterY i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _top_Angle
     (write-long (length _top_Angle) s)
     (dotimes (i (length _top_Angle))
       (sys::poke (elt _top_Angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _bottom_box
     (write-long (length _bottom_box) s)
     (dolist (elem _bottom_box)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _bottom_CenterX
     (write-long (length _bottom_CenterX) s)
     (dotimes (i (length _bottom_CenterX))
       (sys::poke (elt _bottom_CenterX i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bottom_CenterY
     (write-long (length _bottom_CenterY) s)
     (dotimes (i (length _bottom_CenterY))
       (sys::poke (elt _bottom_CenterY i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bottom_Angle
     (write-long (length _bottom_Angle) s)
     (dotimes (i (length _bottom_Angle))
       (sys::poke (elt _bottom_Angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_done
     (setq _is_done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _top_box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_box (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _top_box i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _top_CenterX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_CenterX (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _top_CenterX i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _top_CenterY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_CenterY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _top_CenterY i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _top_Angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_Angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _top_Angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _bottom_box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom_box (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _bottom_box i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _bottom_CenterX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom_CenterX (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bottom_CenterX i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bottom_CenterY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom_CenterY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bottom_CenterY i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bottom_Angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bottom_Angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bottom_Angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pocky_vision::pocky_data
  :super ros::object
  :slots ())

(setf (get pocky_vision::pocky_data :md5sum-) "4482c320afdc1319d32f82f385f7708d")
(setf (get pocky_vision::pocky_data :datatype-) "pocky_vision/pocky_data")
(setf (get pocky_vision::pocky_data :request) pocky_vision::pocky_dataRequest)
(setf (get pocky_vision::pocky_data :response) pocky_vision::pocky_dataResponse)

(defmethod pocky_vision::pocky_dataRequest
  (:response () (instance pocky_vision::pocky_dataResponse :init)))

(setf (get pocky_vision::pocky_dataRequest :md5sum-) "4482c320afdc1319d32f82f385f7708d")
(setf (get pocky_vision::pocky_dataRequest :datatype-) "pocky_vision/pocky_dataRequest")
(setf (get pocky_vision::pocky_dataRequest :definition-)
      "int64   request_flag
---
bool is_done
string[]  top_box
float64[] top_CenterX
float64[] top_CenterY
float64[] top_Angle
string[] bottom_box
float64[] bottom_CenterX
float64[] bottom_CenterY
float64[] bottom_Angle
")

(setf (get pocky_vision::pocky_dataResponse :md5sum-) "4482c320afdc1319d32f82f385f7708d")
(setf (get pocky_vision::pocky_dataResponse :datatype-) "pocky_vision/pocky_dataResponse")
(setf (get pocky_vision::pocky_dataResponse :definition-)
      "int64   request_flag
---
bool is_done
string[]  top_box
float64[] top_CenterX
float64[] top_CenterY
float64[] top_Angle
string[] bottom_box
float64[] bottom_CenterX
float64[] bottom_CenterY
float64[] bottom_Angle
")



(provide :pocky_vision/pocky_data "4482c320afdc1319d32f82f385f7708d")


