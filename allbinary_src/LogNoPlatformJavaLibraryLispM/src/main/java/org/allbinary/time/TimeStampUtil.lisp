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

;NoPlatform
(defclass TimeStampUtil (JObject)
  ())

(defvar TimeStampUtil.jcell_instance :jnone)
(defun TimeStampUtil.jstatic_instance ()
  (when (eq TimeStampUtil.jcell_instance :jnone) (setf TimeStampUtil.jcell_instance (TimeStampUtil.jnew_0)))
  TimeStampUtil.jcell_instance)

    
(defun TimeStampUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TimeStampUtil.jstatic_instance)))))

    
(defun TimeStampUtil.jnew_0 ()
  (let ((this (make-instance 'TimeStampUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getAsString_0) (defgeneric jm_getAsString_0 (this)))
(defmethod jm_getAsString_0 ((this TimeStampUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



