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

(defclass ArrayAI (BasicAI)
  ((f_artificialIntelligenceInterfaceArray :initform nil)))

    
(defun ArrayAI.jnew_3 (_artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (declare (ignorable _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'ArrayAI)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_artificialIntelligenceInterfaceArray) _artificialIntelligenceInterface)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this ArrayAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_artificialIntelligenceInterfaceArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_processAI_1 (aref (slot-value this 'f_artificialIntelligenceInterfaceArray) _index) _allBinaryLayerManager))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_getArtificialIntelligenceInterface_0) (defgeneric jm_getArtificialIntelligenceInterface_0 (this)))
(defmethod jm_getArtificialIntelligenceInterface_0 ((this ArrayAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_artificialIntelligenceInterfaceArray)))))



