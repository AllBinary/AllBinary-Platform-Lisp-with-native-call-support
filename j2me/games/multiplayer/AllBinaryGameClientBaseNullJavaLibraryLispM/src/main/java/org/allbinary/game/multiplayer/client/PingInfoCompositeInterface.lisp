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
;;;; package org.allbinary.game.multiplayer.client

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PingInfoCompositeInterface (JObject)
  ())

(defun PingInfoCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'PingInfoCompositeInterface)))
    this))

    
(unless (fboundp 'jm_setPingInfo_1) (defgeneric jm_setPingInfo_1 (this p1)))
(defmethod jm_setPingInfo_1 ((this PingInfoCompositeInterface) _show)
  (declare (ignorable this _show))
  (error (JR.newException "AbstractMethodError" "setPingInfo")))



