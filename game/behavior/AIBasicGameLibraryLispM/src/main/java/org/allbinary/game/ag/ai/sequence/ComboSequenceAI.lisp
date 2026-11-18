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

(defclass ComboSequenceAI (SequenceAI)
  ())

    
(defun ComboSequenceAI.jnew_3 (_artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (declare (ignorable _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'ComboSequenceAI)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this ComboSequenceAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_artificialIntelligenceInterfaceArray _size _index)
  (declare (ignorable _artificialIntelligenceInterfaceArray _size _index))
    (block jreturn
        (setf _artificialIntelligenceInterfaceArray (jm_getArtificialIntelligenceInterface_0 this))
        (setf _size (length _artificialIntelligenceInterfaceArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_setIndex_1 this _index)
            (call-next-method this _allBinaryLayerManager))
                (setf _index (JR.i32 (+ _index 1)))))))))



