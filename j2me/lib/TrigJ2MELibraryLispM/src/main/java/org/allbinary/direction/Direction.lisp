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

(defclass Direction (JObject)
  ((f_name :initform nil)
   (f_otherName :initform nil)
   (f_value :initform 0)
   (f_frameFactor :initform 0)))

(defvar Direction.jcell_directionArray :jnone)
(defun Direction.jstatic_directionArray ()
  (when (eq Direction.jcell_directionArray :jnone) (setf Direction.jcell_directionArray (JR.newArray nil 13)))
  Direction.jcell_directionArray)
(defun (setf Direction.jstatic_directionArray) (value) (setf Direction.jcell_directionArray value))

    
(defun Direction.jnew_4 (_name _otherName _value _frameFactor)
  (declare (ignorable _name _otherName _value _frameFactor))
  (let ((this (make-instance 'Direction)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_otherName) _otherName)
        (setf (slot-value this 'f_value) _value)
        (setf (slot-value this 'f_frameFactor) _frameFactor)
        (setf (aref (Direction.jstatic_directionArray) _value) this)))
    this))

    
(defun Direction.jm_getInstance_1 (_direction)
  (declare (ignorable _direction))
  (let ()
    (block jreturn
        (return-from jreturn (aref (Direction.jstatic_directionArray) _direction)))))

    
(unless (fboundp 'jm_getValue_0) (defgeneric jm_getValue_0 (this)))
(defmethod jm_getValue_0 ((this Direction))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_getFrameFactor_0) (defgeneric jm_getFrameFactor_0 (this)))
(defmethod jm_getFrameFactor_0 ((this Direction))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_frameFactor)))))

    
(unless (fboundp 'jm_getOtherName_0) (defgeneric jm_getOtherName_0 (this)))
(defmethod jm_getOtherName_0 ((this Direction))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_otherName)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this Direction))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Direction))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Direction: ")
        (jm_append_1 _stringBuffer (jm_getName_0 this))
        (jm_append_1 _stringBuffer " Or: ")
        (jm_append_1 _stringBuffer (jm_getOtherName_0 this))
        (jm_append_1 _stringBuffer " Value: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_value))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



