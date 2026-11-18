;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TimeBaseInterface (JObject)
  ())

(defun TimeBaseInterface.jnew_0 ()
  (let ((this (make-instance 'TimeBaseInterface)))
    this))

    
(unless (fboundp 'jm_getTimeBase_0) (defgeneric jm_getTimeBase_0 (this)))
(defmethod jm_getTimeBase_0 ((this TimeBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getTimeBase")))

    
(unless (fboundp 'jm_setTimeBase_1) (defgeneric jm_setTimeBase_1 (this p1)))
(defmethod jm_setTimeBase_1 ((this TimeBaseInterface) _timeBase)
  (declare (ignorable this _timeBase))
  (error (JR.newException "AbstractMethodError" "setTimeBase")))



