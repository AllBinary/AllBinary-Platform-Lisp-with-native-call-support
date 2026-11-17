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
;;;; package org.allbinary.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommonPhoneStrings (JObject)
  ((f_UP :initform nil)
   (f_DOWN :initform nil)
   (f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_ZERO :initform nil)
   (f_ONE :initform nil)
   (f_TWO :initform nil)
   (f_THREE :initform nil)
   (f_FOUR :initform nil)
   (f_FIVE :initform nil)
   (f_SIX :initform nil)
   (f_SEVEN :initform nil)
   (f_EIGHT :initform nil)
   (f_NINE :initform nil)
   (f_POUND :initform nil)
   (f_STAR :initform nil)
   (f_FIRE :initform nil)))

(defvar CommonPhoneStrings.jcell_instance :jnone)
(defun CommonPhoneStrings.jstatic_instance ()
  (when (eq CommonPhoneStrings.jcell_instance :jnone) (setf CommonPhoneStrings.jcell_instance (CommonPhoneStrings.jnew_0)))
  CommonPhoneStrings.jcell_instance)

(defun CommonPhoneStrings.jnew_0 ()
  (let ((this (make-instance 'CommonPhoneStrings)))
    (setf (slot-value this 'f_UP) "UP")
    (setf (slot-value this 'f_DOWN) "DOWN")
    (setf (slot-value this 'f_LEFT) "LEFT")
    (setf (slot-value this 'f_RIGHT) "RIGHT")
    (setf (slot-value this 'f_ZERO) "0")
    (setf (slot-value this 'f_ONE) "1")
    (setf (slot-value this 'f_TWO) "2")
    (setf (slot-value this 'f_THREE) "3")
    (setf (slot-value this 'f_FOUR) "4")
    (setf (slot-value this 'f_FIVE) "5")
    (setf (slot-value this 'f_SIX) "6")
    (setf (slot-value this 'f_SEVEN) "7")
    (setf (slot-value this 'f_EIGHT) "8")
    (setf (slot-value this 'f_NINE) "9")
    (setf (slot-value this 'f_POUND) "#")
    (setf (slot-value this 'f_STAR) "*")
    (setf (slot-value this 'f_FIRE) "FIRE")
    this))

    
(defun CommonPhoneStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CommonPhoneStrings.jstatic_instance)))))



