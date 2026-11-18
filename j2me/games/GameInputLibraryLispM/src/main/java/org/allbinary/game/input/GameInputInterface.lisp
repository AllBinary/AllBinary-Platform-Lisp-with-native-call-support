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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameInputInterface (JObject)
  ())

(defun GameInputInterface.jnew_0 ()
  (let ((this (make-instance 'GameInputInterface)))
    this))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this GameInputInterface) _layerManager)
  (declare (ignorable this _layerManager))
  (error (JR.newException "AbstractMethodError" "processInput")))

    
(unless (fboundp 'jm_initInputProcessors_0) (defgeneric jm_initInputProcessors_0 (this)))
(defmethod jm_initInputProcessors_0 ((this GameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "initInputProcessors")))



