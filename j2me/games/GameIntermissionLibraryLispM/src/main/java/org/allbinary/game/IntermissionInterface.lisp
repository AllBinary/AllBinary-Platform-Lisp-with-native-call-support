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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass IntermissionInterface (JObject)
  ())

(defun IntermissionInterface.jnew_0 ()
  (let ((this (make-instance 'IntermissionInterface)))
    this))

    
(unless (fboundp 'jm_getTimeDelayHelper_0) (defgeneric jm_getTimeDelayHelper_0 (this)))
(defmethod jm_getTimeDelayHelper_0 ((this IntermissionInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getTimeDelayHelper")))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this IntermissionInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isEnabled")))

    
(unless (fboundp 'jm_setEnabled_1) (defgeneric jm_setEnabled_1 (this p1)))
(defmethod jm_setEnabled_1 ((this IntermissionInterface) _value)
  (declare (ignorable this _value))
  (error (JR.newException "AbstractMethodError" "setEnabled")))

    
(unless (fboundp 'jm_setListener_1) (defgeneric jm_setListener_1 (this p1)))
(defmethod jm_setListener_1 ((this IntermissionInterface) _enableListener)
  (declare (ignorable this _enableListener))
  (error (JR.newException "AbstractMethodError" "setListener")))



