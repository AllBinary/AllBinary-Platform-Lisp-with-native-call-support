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
;;;; package org.allbinary.game.ag.ai.sequence

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NumberLayersSequenceAI (SequenceAI)
  ((f_numberOfLayersLeft :initform 0)))

    
(defun NumberLayersSequenceAI.jnew_4 (_numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (declare (ignorable _numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'NumberLayersSequenceAI)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_numberOfLayersLeft) _numberOfEnemiesLeft)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this NumberLayersSequenceAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (if (eq (jm_getIndex_0 this) 0)
            (progn
            (if (< (jm_getSize_0 _allBinaryLayerManager) (slot-value this 'f_numberOfLayersLeft))
                (progn
                (jm_setIndex_1 this 1)))))
        (call-next-method this _allBinaryLayerManager))))



