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
;;;; package org.allbinary.game.ag.ai.tactical

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicRandomAI (BasicAI)
  ((f_i_random :initform 0)
   (f_inputProbability :initform nil)
   (f_visitor :initform nil)
   (f_keyArray :initform nil)
   (f_myRandomFactory :initform nil)))

    
(defun BasicRandomAI.jnew_4 (_ownerLayerInterface _gameInput _inputProbability _visitor)
  (declare (ignorable _ownerLayerInterface _gameInput _inputProbability _visitor))
  (let ((this (make-instance 'BasicRandomAI)))
    (setf (slot-value this 'f_i_random) 0)
    
    
    (setf (slot-value this 'f_keyArray) (vector (Canvas.jstatic_UP) (Canvas.jstatic_DOWN) (Canvas.jstatic_LEFT) (Canvas.jstatic_RIGHT) (Canvas.jstatic_KEY_NUM1) (Canvas.jstatic_KEY_NUM7) (Canvas.jstatic_KEY_NUM9)))
    (setf (slot-value this 'f_myRandomFactory) (MyRandomFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_inputProbability) _inputProbability)
        (setf (slot-value this 'f_visitor) _visitor)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this BasicRandomAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_repeat _repeatLikelyhoodIntegerArray _likelyhoodIntegerArray _size _likelyhoodIntegerKeyArray _key _index)
  (declare (ignorable _repeat _repeatLikelyhoodIntegerArray _likelyhoodIntegerArray _size _likelyhoodIntegerKeyArray _key _index))
    (block jreturn
        (if (jm_isTime_1 (jm_getTimeDelayHelper_0 (slot-value this 'f_inputProbability)) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime))
            (progn
            (setf (slot-value this 'f_i_random) (jm_getAbsoluteNextInt_1 (slot-value this 'f_myRandomFactory) (jm_getMax_0 (slot-value this 'f_inputProbability))))
            (setf _repeat nil)
            (setf _repeatLikelyhoodIntegerArray (jm_getRepeatLikelyhoodIntegerArray_0 (slot-value this 'f_inputProbability)))
            (if (and (not (eq (jm_getLastKey_0 this) (JR.i32 (- 1)))) (>= (jm_intValue_0 (aref _repeatLikelyhoodIntegerArray (jm_getLastKey_0 this))) (slot-value this 'f_i_random)))
                (progn
                (setf _repeat t)))
            (if (not _repeat)
                (progn
                (setf _likelyhoodIntegerArray (jm_getLikelyhoodIntegerArray_0 (slot-value this 'f_inputProbability)))
                (setf (slot-value this 'f_i_random) (jm_getAbsoluteNextInt_1 (slot-value this 'f_myRandomFactory) (jm_getMax_0 (slot-value this 'f_inputProbability))))
                (setf _size (length (slot-value this 'f_keyArray)))
                (setf _likelyhoodIntegerKeyArray nil)
                (progn
                    (setf _index 0)
                    (block jbreak (loop while (< _index _size) do
                        (block jcontinue
                    (setf _key (aref (slot-value this 'f_keyArray) _index))
                    (setf _likelyhoodIntegerKeyArray (aref _likelyhoodIntegerArray _key))
                    (if (and (>= (length _likelyhoodIntegerArray) _key) (not (null (aref _likelyhoodIntegerKeyArray 0))))
                        (progn
                        (if (and (>= (slot-value this 'f_i_random) (jm_intValue_0 (aref _likelyhoodIntegerKeyArray 0))) (< (slot-value this 'f_i_random) (jm_intValue_0 (aref _likelyhoodIntegerKeyArray 1))))
                            (progn
                            (jm_setLastKey_1 this _key)
                            (return-from jbreak))))))
                        (setf _index (JR.i32 (+ _index 1))))))))
            (jm_visit_1 (slot-value this 'f_visitor) this))))))



