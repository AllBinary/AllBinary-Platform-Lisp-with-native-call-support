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
;;;; package org.allbinary.direction

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DirectionUtil (JObject)
  ((f_directionArray :initform nil)
   (f_directionArray2 :initform nil)))

(defvar DirectionUtil.jcell_instance :jnone)
(defun DirectionUtil.jstatic_instance ()
  (when (eq DirectionUtil.jcell_instance :jnone) (setf DirectionUtil.jcell_instance (DirectionUtil.jnew_0)))
  DirectionUtil.jcell_instance)
(defun (setf DirectionUtil.jstatic_instance) (value) (setf DirectionUtil.jcell_instance value))

    
(defun DirectionUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DirectionUtil.jstatic_instance)))))

    
(defun DirectionUtil.jnew_0 ()
  (let ((this (make-instance 'DirectionUtil)))
    (setf (slot-value this 'f_directionArray) (JR.newArray nil 10))
    (setf (slot-value this 'f_directionArray2) (JR.newArray nil 10))
  (let (_angleFactory _directionFactory)
  (declare (ignorable _angleFactory _directionFactory))
    (block jreturn
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (setf _directionFactory (DirectionFactory.jm_getInstance_0))
        (setf (aref (slot-value this 'f_directionArray) (jm_getValue_0 (slot-value _directionFactory 'f_LEFT))) (slot-value _angleFactory 'f_LEFT))
        (setf (aref (slot-value this 'f_directionArray) (jm_getValue_0 (slot-value _directionFactory 'f_RIGHT))) (slot-value _angleFactory 'f_RIGHT))
        (setf (aref (slot-value this 'f_directionArray) (jm_getValue_0 (slot-value _directionFactory 'f_UP))) (slot-value _angleFactory 'f_UP))
        (setf (aref (slot-value this 'f_directionArray) (jm_getValue_0 (slot-value _directionFactory 'f_DOWN))) (slot-value _angleFactory 'f_DOWN))
        (setf (aref (slot-value this 'f_directionArray2) (jm_getValue_0 (slot-value _directionFactory 'f_LEFT))) (slot-value _angleFactory 'f_LEFT))
        (setf (aref (slot-value this 'f_directionArray2) (jm_getValue_0 (slot-value _directionFactory 'f_RIGHT))) (slot-value _angleFactory 'f_RIGHT))
        (setf (aref (slot-value this 'f_directionArray2) (jm_getValue_0 (slot-value _directionFactory 'f_UP))) (slot-value _angleFactory 'f_UP))
        (setf (aref (slot-value this 'f_directionArray2) (jm_getValue_0 (slot-value _directionFactory 'f_DOWN))) (slot-value _angleFactory 'f_DOWN))))
    this))

    
(unless (fboundp 'jm_getAngle_1) (defgeneric jm_getAngle_1 (this p1)))
(defmethod jm_getAngle_1 ((this DirectionUtil) _direction)
  (declare (ignorable this _direction))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_directionArray2) (jm_getValue_0 _direction))))))

    
(unless (fboundp 'jm_getFrameAngle_1) (defgeneric jm_getFrameAngle_1 (this p1)))
(defmethod jm_getFrameAngle_1 ((this DirectionUtil) _direction)
  (declare (ignorable this _direction))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_directionArray) (jm_getValue_0 _direction))))))



