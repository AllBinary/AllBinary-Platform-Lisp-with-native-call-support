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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScoreComparator (JObject)
  ((f_logUtil :initform nil)
   (f_isHighestBest :initform nil)))

    
(defun ScoreComparator.jnew_1 (_isHighestBest)
  (declare (ignorable _isHighestBest))
  (let ((this (make-instance 'ScoreComparator)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_isHighestBest) _isHighestBest)))
    this))

    
(unless (fboundp 'jm_getBestScore_0) (defgeneric jm_getBestScore_0 (this)))
(defmethod jm_getBestScore_0 ((this ScoreComparator))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (if (slot-value this 'f_isHighestBest) (Long.jstatic_MAX_VALUE) 0)))))

    
(unless (fboundp 'jm_compare_2) (defgeneric jm_compare_2 (this p1 p2)))
(defmethod jm_compare_2 ((this ScoreComparator) _recordOne _recordTwo)
  (declare (ignorable this _recordOne _recordTwo))
  (let (_byteArrayInputStreamOne _inputStreamOne _byteArrayInputStreamTwo _inputStreamTwo _scoreOne _scoreTwo _commonStrings)
  (declare (ignorable _byteArrayInputStreamOne _inputStreamOne _byteArrayInputStreamTwo _inputStreamTwo _scoreOne _scoreTwo _commonStrings))
    (block jreturn
        (setf _byteArrayInputStreamOne (ByteArrayInputStream.jnew_1 _recordOne))
        (setf _inputStreamOne (DataInputStream.jnew_1 _byteArrayInputStreamOne))
        (setf _byteArrayInputStreamTwo (ByteArrayInputStream.jnew_1 _recordTwo))
        (setf _inputStreamTwo (DataInputStream.jnew_1 _byteArrayInputStreamTwo))
        (setf _scoreOne 0)
        (setf _scoreTwo 0)
        (handler-case (progn
            (jm_readUTF_0 _inputStreamOne)
            (jm_readUTF_0 _inputStreamTwo)
            (setf _scoreOne (jm_readLong_0 _inputStreamOne))
            (setf _scoreTwo (jm_readLong_0 _inputStreamTwo)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "compare" _e)))
        (if (slot-value this 'f_isHighestBest)
            (progn
            (return-from jreturn (jm_getHighTooLow_2 this _scoreOne _scoreTwo)))
            (progn
            (return-from jreturn (jm_getLowTooHigh_2 this _scoreOne _scoreTwo)))))))

    
(unless (fboundp 'jm_getHighTooLow_2) (defgeneric jm_getHighTooLow_2 (this p1 p2)))
(defmethod jm_getHighTooLow_2 ((this ScoreComparator) _scoreOne _scoreTwo)
  (declare (ignorable this _scoreOne _scoreTwo))
  (let ()
    (block jreturn
        (if (> _scoreOne _scoreTwo)
            (progn
            (return-from jreturn (RecordComparator.jstatic_PRECEDES)))
            (if (< _scoreOne _scoreTwo)
            (progn
            (return-from jreturn (RecordComparator.jstatic_FOLLOWS)))
            (progn
            (return-from jreturn (RecordComparator.jstatic_EQUIVALENT))))))))

    
(unless (fboundp 'jm_getLowTooHigh_2) (defgeneric jm_getLowTooHigh_2 (this p1 p2)))
(defmethod jm_getLowTooHigh_2 ((this ScoreComparator) _scoreOne _scoreTwo)
  (declare (ignorable this _scoreOne _scoreTwo))
  (let ()
    (block jreturn
        (if (< _scoreOne _scoreTwo)
            (progn
            (return-from jreturn (RecordComparator.jstatic_PRECEDES)))
            (if (> _scoreOne _scoreTwo)
            (progn
            (return-from jreturn (RecordComparator.jstatic_FOLLOWS)))
            (progn
            (return-from jreturn (RecordComparator.jstatic_EQUIVALENT))))))))



