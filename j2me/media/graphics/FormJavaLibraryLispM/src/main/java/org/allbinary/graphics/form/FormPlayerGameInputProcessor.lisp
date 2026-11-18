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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FormPlayerGameInputProcessor (Processor)
  ((f_playerGameInputCompositeInterface :initform nil)))

    
(defun FormPlayerGameInputProcessor.jnew_1 (_playerGameInputCompositeInterface)
  (declare (ignorable _playerGameInputCompositeInterface))
  (let ((this (make-instance 'FormPlayerGameInputProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_playerGameInputCompositeInterface) _playerGameInputCompositeInterface)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this FormPlayerGameInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_update_0 (jm_getPlayerGameInput_0 (slot-value this 'f_playerGameInputCompositeInterface))))))



