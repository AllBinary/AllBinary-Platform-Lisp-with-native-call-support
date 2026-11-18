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

(defclass NumberOnOwnGroupSequenceAIFactory (JObject)
  ((f_logUtil :initform nil)))

(defun NumberOnOwnGroupSequenceAIFactory.jnew_0 ()
  (let ((this (make-instance 'NumberOnOwnGroupSequenceAIFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_getInstance_4) (defgeneric jm_getInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstance_4 ((this NumberOnOwnGroupSequenceAIFactory) _hashtable _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
  (declare (ignorable this _hashtable _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
  (let (_integerArray _list _integerCanBeNull _index _stringBuffer _commonStrings _numberOnSameTeam)
  (declare (ignorable _integerArray _list _integerCanBeNull _index _stringBuffer _commonStrings _numberOnSameTeam))
    (block jreturn
        (setf _integerArray (slot-value (NumberInSameGroupSequence.jm_getInstance_0) 'f_NUMBER_ON_SAME_TEAM_SEQUENCE))
        (setf _list (BasicArrayListD.jnew_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _integerArray)) do
                (block jcontinue
            (setf _integerCanBeNull (jm_get_1 _hashtable (aref _integerArray _index)))
            (if (null _integerCanBeNull)
                (progn
                (return-from jbreak)))
            (jm_add_1 _list _integerCanBeNull))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Total AI Properties: ")
        (jm_appendint_1 _stringBuffer (jm_size_0 _list))
        (jm_append_1 _stringBuffer " == Total AI: ")
        (jm_appendint_1 _stringBuffer (length _artificialIntelligenceInterface))
        (jm_append_1 _stringBuffer " + 1")
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_GET_INSTANCE))
        (if (> (JR.i32 (- (length _artificialIntelligenceInterface) 1)) (jm_size_0 _list))
            (progn
            (error (JR.newException "Exception" "Not enough AI properties."))))
        (if (< (JR.i32 (- (length _artificialIntelligenceInterface) 1)) (jm_size_0 _list))
            (progn
            (error (JR.newException "Exception" "Too Many AI properties."))))
        (setf _numberOnSameTeam (JR.newArray nil (jm_size_0 _list)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _numberOnSameTeam)) do
                (block jcontinue
            (setf (aref _numberOnSameTeam _index) (aref (slot-value _list 'f_objectArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (NumberOnOwnGroupSequenceAI.jnew_4 _numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))



