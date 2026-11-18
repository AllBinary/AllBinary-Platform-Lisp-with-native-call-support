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

(defclass HighScoresHelper (HighScoresHelperBase)
  ((f_circularIndexUtil :initform nil)
   (f_lastIndex :initform 0)))

(defun HighScoresHelper.jnew_0 ()
  (let ((this (make-instance 'HighScoresHelper)))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstanceAt_2 0 0))
    (setf (slot-value this 'f_lastIndex) (JR.i32 (- 1)))
    this))

    
(unless (fboundp 'jm_setHighScoresArray_1) (defgeneric jm_setHighScoresArray_1 (this p1)))
(defmethod jm_setHighScoresArray_1 ((this HighScoresHelper) _highScoresArrayP)
  (declare (ignorable this _highScoresArrayP))
  (let ()
    (block jreturn
        (call-next-method this _highScoresArrayP)
        (jm_setSize_1 (slot-value this 'f_circularIndexUtil) (length (slot-value this 'f_highScoresArrayP))))))

    
(unless (fboundp 'jm_getNextHighScores_0) (defgeneric jm_getNextHighScores_0 (this)))
(defmethod jm_getNextHighScores_0 ((this HighScoresHelper))
  (declare (ignorable this))
  (let (_highScores _index)
  (declare (ignorable _highScores _index))
    (block jreturn
        (setf _highScores (aref (slot-value this 'f_highScoresArrayP) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
        (setf _index 0)
        (block jbreak (loop while (and (or (< (jm_getTotal_0 _highScores) 1) (= (slot-value this 'f_lastIndex) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))) (< _index (length (slot-value this 'f_highScoresArrayP)))) do
                (block jcontinue
            (jm_next_0 (slot-value this 'f_circularIndexUtil))
            (setf _highScores (aref (slot-value this 'f_highScoresArrayP) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))
            (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_lastIndex) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (return-from jreturn _highScores))))

    
(unless (fboundp 'jm_isAnyHighScores_0) (defgeneric jm_isAnyHighScores_0 (this)))
(defmethod jm_isAnyHighScores_0 ((this HighScoresHelper))
  (declare (ignorable this))
  (let (_anyScores _highScores _index)
  (declare (ignorable _anyScores _highScores _index))
    (block jreturn
        (if (< (length (slot-value this 'f_highScoresArrayP)) 1)
            (progn
            (return-from jreturn nil)))
        (setf _anyScores nil)
        (setf _highScores nil)
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_highScoresArrayP)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _highScores (aref (slot-value this 'f_highScoresArrayP) _index))
            (if (> (jm_getTotal_0 _highScores) 0)
                (progn
                (setf _anyScores t))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn _anyScores))))



