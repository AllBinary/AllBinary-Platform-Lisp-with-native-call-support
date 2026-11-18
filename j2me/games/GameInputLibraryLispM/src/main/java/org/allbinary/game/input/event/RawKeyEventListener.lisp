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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RawKeyEventListener (JObject)
  ())

(defun RawKeyEventListener.jnew_0 ()
  (let ((this (make-instance 'RawKeyEventListener)))
    this))

    
(unless (fboundp 'jm_onEventRaw_3) (defgeneric jm_onEventRaw_3 (this p1 p2 p3)))
(defmethod jm_onEventRaw_3 ((this RawKeyEventListener) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (error (JR.newException "AbstractMethodError" "onEventRaw")))



