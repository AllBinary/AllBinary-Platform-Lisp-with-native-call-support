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

(defclass NumberOnOwnGroupSequenceAI (SequenceAI)
  ((f_numberOnSameTeam :initform nil)))

    
(defun NumberOnOwnGroupSequenceAI.jnew_4 (_numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (declare (ignorable _numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'NumberOnOwnGroupSequenceAI)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_numberOnSameTeam) _numberOnSameTeam)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this NumberOnOwnGroupSequenceAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_layerInterface _index _size)
  (declare (ignorable _layerInterface _index _size))
    (block jreturn
        (setf _layerInterface (jm_getOwnerLayerInterface_0 this))
        (setf _index (jm_getIndex_0 this))
        (if (> (length (slot-value this 'f_numberOnSameTeam)) _index)
            (progn
            (setf _size (jm_getGroupSizeFromInterface_1 (GroupLayerManagerListener.jm_getInstance_0) _layerInterface))
            (if (> (jm_intValue_0 (aref (slot-value this 'f_numberOnSameTeam) _index)) _size)
                (progn
                (jm_next_0 this)))))
        (call-next-method this _allBinaryLayerManager))))



