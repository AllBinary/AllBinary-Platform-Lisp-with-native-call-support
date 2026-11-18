;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2011 AllBinary
;;;; 
;;;; By agreeing to this license you and any business entity you represent are
;;;; legally bound to the AllBinary Open License Version 1 legal agreement.
;;;; 
;;;; You may obtain the AllBinary Open License Version 1 legal agreement from
;;;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;;;; 
;;;; Created By: Travis Berthelot
;;;;  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.health

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HealthBarAnimation (Animation)
  ((f_basicColorFactory :initform nil)
   (f_x2 :initform 0)
   (f_thickness :initform 0)
   (f_location :initform 0)
   (f_allbinaryLayer :initform nil)))

    
(defun HealthBarAnimation.jnew_2 (_layerInterface _location)
  (declare (ignorable _layerInterface _location))
  (let ((this (make-instance 'HealthBarAnimation)))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    
    
    
    
  (let (_basicHudFactory)
  (declare (ignorable _basicHudFactory))
    (block jreturn
        (setf (slot-value this 'f_allbinaryLayer) _layerInterface)
        (setf (slot-value this 'f_location) _location)
        (setf _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (if (and (/= (slot-value this 'f_location) (slot-value _basicHudFactory 'f_TOPLEFT)) (/= (slot-value this 'f_location) (slot-value _basicHudFactory 'f_BOTTOMLEFT)))
            (progn
            (error (JR.newException "Exception" "Location Not Valid"))))
        (if (> (jm_getWidth_0 _layerInterface) 40)
            (progn
            (setf (slot-value this 'f_thickness) 3))
            (if (> (jm_getWidth_0 _layerInterface) 20)
            (progn
            (setf (slot-value this 'f_thickness) 2))
            (progn
            (setf (slot-value this 'f_thickness) 1))))))
    this))

    
(unless (fboundp 'jm_onHealthChange_1) (defgeneric jm_onHealthChange_1 (this p1)))
(defmethod jm_onHealthChange_1 ((this HealthBarAnimation) _newX2)
  (declare (ignorable this _newX2))
  (let (_quarter)
  (declare (ignorable _quarter))
    (block jreturn
        (setf (slot-value this 'f_x2) _newX2)
        (setf _quarter (ash (jm_getWidth_0 (slot-value this 'f_allbinaryLayer)) (- (logand 2 31))))
        (if (> (slot-value this 'f_x2) (JR.i32 (* _quarter 3)))
            (progn
            (setf (slot-value this 'f_basicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_GREEN))
            (setf (slot-value this 'f_colorP) (jm_intValue_0 (slot-value this 'f_basicColor))))
            (if (> (slot-value this 'f_x2) (JR.i32 (* _quarter 2)))
            (progn
            (setf (slot-value this 'f_basicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_YELLOW))
            (setf (slot-value this 'f_colorP) (jm_intValue_0 (slot-value this 'f_basicColor))))
            (if (> (slot-value this 'f_x2) _quarter)
            (progn
            (setf (slot-value this 'f_basicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_ORANGE))
            (setf (slot-value this 'f_colorP) (jm_intValue_0 (slot-value this 'f_basicColor))))
            (progn
            (setf (slot-value this 'f_basicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_RED))
            (setf (slot-value this 'f_colorP) (jm_intValue_0 (slot-value this 'f_basicColor))))))))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this HealthBarAnimation))
  (declare (ignorable this))
  (let (_basicHudFactory)
  (declare (ignorable _basicHudFactory))
    (block jreturn
        (setf _basicHudFactory (BasicHudFactory.jm_getInstance_0))
        (if (= (slot-value this 'f_location) (slot-value _basicHudFactory 'f_TOPLEFT))
            (progn
            (return-from jreturn (JR.i32 (- (jm_getY_0 (jm_getViewPosition_0 (slot-value this 'f_allbinaryLayer))) 4))))
            (if (= (slot-value this 'f_location) (slot-value _basicHudFactory 'f_BOTTOMLEFT))
            (progn
            (return-from jreturn (JR.i32 (+ (jm_getY2_0 (jm_getViewPosition_0 (slot-value this 'f_allbinaryLayer))) 4))))))
        (return-from jreturn (JR.i32 (- 1))))))



