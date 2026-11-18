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

(defclass IntermissionCompositeInterface (JObject)
  ())

(defun IntermissionCompositeInterface.jnew_0 ()
  (let ((this (make-instance 'IntermissionCompositeInterface)))
    this))

    
(unless (fboundp 'jm_getStartIntermissionInterface_0) (defgeneric jm_getStartIntermissionInterface_0 (this)))
(defmethod jm_getStartIntermissionInterface_0 ((this IntermissionCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getStartIntermissionInterface")))

    
(unless (fboundp 'jm_getEndLevelIntermissionInterface_0) (defgeneric jm_getEndLevelIntermissionInterface_0 (this)))
(defmethod jm_getEndLevelIntermissionInterface_0 ((this IntermissionCompositeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getEndLevelIntermissionInterface")))



