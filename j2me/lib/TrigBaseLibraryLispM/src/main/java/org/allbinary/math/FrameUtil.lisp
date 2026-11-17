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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FrameUtil (JObject)
  ())

(defvar FrameUtil.jcell_instance :jnone)
(defun FrameUtil.jstatic_instance ()
  (when (eq FrameUtil.jcell_instance :jnone) (setf FrameUtil.jcell_instance (FrameUtil.jnew_0)))
  FrameUtil.jcell_instance)

    
(defun FrameUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FrameUtil.jstatic_instance)))))

    
(defun FrameUtil.jnew_0 ()
  (let ((this (make-instance 'FrameUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getFrameForAngle_2) (defgeneric jm_getFrameForAngle_2 (this p1 p2)))
(defmethod jm_getFrameForAngle_2 ((this FrameUtil) _angle _angleIncrement)
  (declare (ignorable this _angle _angleIncrement))
  (let ()
    (block jreturn
        (return-from jreturn (JR.idiv (jm_adjustAngleToFrameAngle_1 this _angle) _angleIncrement)))))

    
(unless (fboundp 'jm_getFrameAngle_2) (defgeneric jm_getFrameAngle_2 (this p1 p2)))
(defmethod jm_getFrameAngle_2 ((this FrameUtil) _frame _angleIncrement)
  (declare (ignorable this _frame _angleIncrement))
  (let (_frameAngle)
  (declare (ignorable _frameAngle))
    (block jreturn
        (setf _frameAngle (JR.i32 (- (JR.i32 (* _angleIncrement _frame)) 90)))
        (return-from jreturn (jm_adjustAngleToFrameAngle_1 this _frameAngle)))))

    
(unless (fboundp 'jm_adjustAngleToFrameAngle_1) (defgeneric jm_adjustAngleToFrameAngle_1 (this p1)))
(defmethod jm_adjustAngleToFrameAngle_1 ((this FrameUtil) _currentAngle)
  (declare (ignorable this _currentAngle))
  (let (_angleFactory)
  (declare (ignorable _angleFactory))
    (block jreturn
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (if (> _currentAngle 359)
            (progn
            (setf _currentAngle (JR.i32 (- _currentAngle (slot-value _angleFactory 'f_TOTAL_ANGLE))))
            (block jbreak (loop while (> _currentAngle 359) do
                    (block jcontinue
                (setf _currentAngle (JR.i32 (- _currentAngle (slot-value _angleFactory 'f_TOTAL_ANGLE)))))))))
        (if (< _currentAngle 0)
            (progn
            (setf _currentAngle (JR.i32 (+ _currentAngle (slot-value _angleFactory 'f_TOTAL_ANGLE))))
            (block jbreak (loop while (< _currentAngle 0) do
                    (block jcontinue
                (setf _currentAngle (JR.i32 (+ _currentAngle (slot-value _angleFactory 'f_TOTAL_ANGLE)))))))))
        (return-from jreturn _currentAngle))))



