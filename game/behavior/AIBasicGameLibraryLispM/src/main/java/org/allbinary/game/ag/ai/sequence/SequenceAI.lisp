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

(defclass SequenceAI (ArrayAI)
  ((f_index :initform 0)))

(defvar SequenceAI.jcell_SEQUENCE_AI :jnone)
(defun SequenceAI.jstatic_SEQUENCE_AI ()
  (when (eq SequenceAI.jcell_SEQUENCE_AI :jnone) (setf SequenceAI.jcell_SEQUENCE_AI "Sequence AI"))
  SequenceAI.jcell_SEQUENCE_AI)
(defun (setf SequenceAI.jstatic_SEQUENCE_AI) (value) (setf SequenceAI.jcell_SEQUENCE_AI value))

    
(defun SequenceAI.jnew_3 (_artificialIntelligenceInterfaceArray _ownerLayerInterface _gameInput)
  (declare (ignorable _artificialIntelligenceInterfaceArray _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'SequenceAI)))
    
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this SequenceAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (jm_processAI_1 (aref (jm_getArtificialIntelligenceInterface_0 this) (slot-value this 'f_index)) _allBinaryLayerManager))))

    
(unless (fboundp 'jm_next_0) (defgeneric jm_next_0 (this)))
(defmethod jm_next_0 ((this SequenceAI))
  (declare (ignorable this))
  (let (_artificialIntelligenceInterface _artificialIntelligenceTransitionInterface)
  (declare (ignorable _artificialIntelligenceInterface _artificialIntelligenceTransitionInterface))
    (block jreturn
        (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1)))
        (setf _artificialIntelligenceInterface (jm_getSelectedArtificialIntelligenceInterface_0 this))
        (if (eq (jm_getId_0 _artificialIntelligenceInterface) (ArtificialIntelligence.jstatic_AI_ID))
            (progn
            (setf _artificialIntelligenceTransitionInterface _artificialIntelligenceInterface)
            (jm_transition_0 _artificialIntelligenceTransitionInterface))))))

    
(unless (fboundp 'jm_getIndex_0) (defgeneric jm_getIndex_0 (this)))
(defmethod jm_getIndex_0 ((this SequenceAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_index)))))

    
(unless (fboundp 'jm_setIndex_1) (defgeneric jm_setIndex_1 (this p1)))
(defmethod jm_setIndex_1 ((this SequenceAI) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_index) _index))))

    
(unless (fboundp 'jm_getSelectedArtificialIntelligenceInterface_0) (defgeneric jm_getSelectedArtificialIntelligenceInterface_0 (this)))
(defmethod jm_getSelectedArtificialIntelligenceInterface_0 ((this SequenceAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (jm_getArtificialIntelligenceInterface_0 this) (slot-value this 'f_index))))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this SequenceAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (SequenceAI.jstatic_SEQUENCE_AI)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this SequenceAI))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (jm_append_1 _stringBuffer " Selected AI: ")
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getSelectedArtificialIntelligenceInterface_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



