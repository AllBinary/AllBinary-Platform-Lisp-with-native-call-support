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
;;;; package org.allbinary.game.ag.layer.hud.basic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NextUnremoveableProcessor (Processor)
  ((f_updateMeasurementProcessor :initform nil)))

    
(defun NextUnremoveableProcessor.jnew_1 (_updateMeasurementProcessor)
  (declare (ignorable _updateMeasurementProcessor))
  (let ((this (make-instance 'NextUnremoveableProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_updateMeasurementProcessor) _updateMeasurementProcessor)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this NextUnremoveableProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setNextUnremoveableProcess_0 (slot-value this 'f_updateMeasurementProcessor)))))



