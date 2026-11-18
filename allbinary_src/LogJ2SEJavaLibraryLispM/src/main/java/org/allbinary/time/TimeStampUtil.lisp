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
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass TimeStampUtil (JObject)
  ((f_simpleDataFormat :initform nil)))

(defvar TimeStampUtil.jcell_instance :jnone)
(defun TimeStampUtil.jstatic_instance ()
  (when (eq TimeStampUtil.jcell_instance :jnone) (setf TimeStampUtil.jcell_instance (TimeStampUtil.jnew_0)))
  TimeStampUtil.jcell_instance)
(defun (setf TimeStampUtil.jstatic_instance) (value) (setf TimeStampUtil.jcell_instance value))

    
(defun TimeStampUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TimeStampUtil.jstatic_instance)))))

    
(defun TimeStampUtil.jnew_0 ()
  (let ((this (make-instance 'TimeStampUtil)))
    (setf (slot-value this 'f_simpleDataFormat) (SimpleDateFormat.jnew_1 "yyyy-MM-dd HH:mm:ss.SSS"))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getAsString_0) (defgeneric jm_getAsString_0 (this)))
(defmethod jm_getAsString_0 ((this TimeStampUtil))
  (declare (ignorable this))
  (let (_calendar _date)
  (declare (ignorable _calendar _date))
    (block jreturn
        (setf _calendar (Calendar.jm_getInstance_0))
        (setf _date (jm_getTime_0 _calendar))
        (return-from jreturn (jm_format_1 (slot-value this 'f_simpleDataFormat) _date)))))



