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
;;;; package org.allbinary.animation.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LineAnimation (Animation)
  ((f_newLine :initform nil)
   (f_tempLine :initform nil)
   (f_line :initform nil)))

    
(defun LineAnimation.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'LineAnimation)))
    (setf (slot-value this 'f_newLine) (JR.newArray 0 2 2))
    (setf (slot-value this 'f_tempLine) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY))
    (setf (slot-value this 'f_line) (JR.newArray 0 2 2))
  (let ()
    (block jreturn
        (jm_setBasicColorP_1 this _basicColor)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this LineAnimation) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (setf (aref (aref (slot-value this 'f_newLine) 0) 0) _x)
        (setf (aref (aref (slot-value this 'f_newLine) 0) 1) _y)
        (setf (aref (aref (slot-value this 'f_newLine) 1) 0) _x)
        (setf (aref (aref (slot-value this 'f_newLine) 1) 1) _y)
        (setf (slot-value this 'f_tempLine) (slot-value this 'f_line))
        (setf (slot-value this 'f_line) (slot-value this 'f_newLine))
        (setf (slot-value this 'f_newLine) (slot-value this 'f_tempLine)))))

    
(unless (fboundp 'jm_setPosition_3) (defgeneric jm_setPosition_3 (this p1 p2 p3)))
(defmethod jm_setPosition_3 ((this LineAnimation) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (setf (aref (aref (slot-value this 'f_newLine) 0) 0) (aref (aref (slot-value this 'f_line) 1) 0))
        (setf (aref (aref (slot-value this 'f_newLine) 0) 1) (aref (aref (slot-value this 'f_line) 1) 1))
        (setf (aref (aref (slot-value this 'f_newLine) 1) 0) _x)
        (setf (aref (aref (slot-value this 'f_newLine) 1) 1) _y)
        (setf (slot-value this 'f_tempLine) (slot-value this 'f_line))
        (setf (slot-value this 'f_line) (slot-value this 'f_newLine))
        (setf (slot-value this 'f_newLine) (slot-value this 'f_tempLine)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this LineAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let (_currentLine)
  (declare (ignorable _currentLine))
    (block jreturn
        (setf _currentLine (slot-value this 'f_line))
        (jm_setBasicColorP3_3 (slot-value this 'f_basicSetColorUtil) _graphics (jm_getBasicColorP_0 this) (jm_getColor_0 this))
        (jm_drawLine_4 _graphics (aref (aref _currentLine 0) 0) (aref (aref _currentLine 0) 1) (aref (aref _currentLine 1) 0) (aref (aref _currentLine 1) 1)))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this LineAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this LineAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this LineAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (call-next-method this _basicColor))))



