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

(defclass HighScoreCommandsBaseFactory (JObject)
  ((f_logUtil :initform nil)
   (f_HIGH_SCORE_COMMANDS :initform nil)))

    
(defun HighScoreCommandsBaseFactory.jnew_1 (_HIGH_SCORE_COMMANDS)
  (declare (ignorable _HIGH_SCORE_COMMANDS))
  (let ((this (make-instance 'HighScoreCommandsBaseFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_HIGH_SCORE_COMMANDS) _HIGH_SCORE_COMMANDS)))
    this))

    
(unless (fboundp 'jm_isHighScoreCommand_1) (defgeneric jm_isHighScoreCommand_1 (this p1)))
(defmethod jm_isHighScoreCommand_1 ((this HighScoreCommandsBaseFactory) _command)
  (declare (ignorable this _command))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_HIGH_SCORE_COMMANDS)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (eq _command (aref (slot-value this 'f_HIGH_SCORE_COMMANDS) _index))
                (progn
                (return-from jreturn t))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getIndex_1) (defgeneric jm_getIndex_1 (this p1)))
(defmethod jm_getIndex_1 ((this HighScoreCommandsBaseFactory) _command)
  (declare (ignorable this _command))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_HIGH_SCORE_COMMANDS)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (eq _command (aref (slot-value this 'f_HIGH_SCORE_COMMANDS) _index))
                (progn
                (return-from jreturn _index))))
                (setf _index (JR.i32 (- _index 1))))))
        (error (JR.newException "Exception" "No Such Command")))))



