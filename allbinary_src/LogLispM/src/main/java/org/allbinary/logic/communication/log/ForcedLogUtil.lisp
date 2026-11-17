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
;;;; package org.allbinary.logic.communication.log

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ForcedLogUtil (JObject)
  ())

(defun ForcedLogUtil.jnew_0 ()
  (let ((this (make-instance 'ForcedLogUtil)))
    this))

    
(defun ForcedLogUtil.jm_log_2 (_message _anyType)
  (declare (ignorable _message _anyType))
  (let ()
    (block jreturn
        (handler-case (progn
            (error (JR.newException "Exception" _message)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 (slot-value (CommonStrings.jm_getInstance_0) 'f_EXCEPTION) _anyType "log" _e))))))



