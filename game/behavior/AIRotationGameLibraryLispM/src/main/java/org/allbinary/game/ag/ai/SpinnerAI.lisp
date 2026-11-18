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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpinnerAI (BasicAI)
  ((f_isEven :initform nil)
   (f_direction :initform nil)))

    
(defun SpinnerAI.jnew_3 (_direction _ownerLayerInterface _gameInput)
  (declare (ignorable _direction _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'SpinnerAI)))
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_direction) _direction)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this SpinnerAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (if (slot-value this 'f_isEven)
            (progn
            (jm_processKeyAI_1 this (aref (slot-value this 'f_direction) 0))
            (setf (slot-value this 'f_isEven) nil))
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1))
            (setf (slot-value this 'f_isEven) t))))))



