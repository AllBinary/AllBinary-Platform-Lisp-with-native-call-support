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
;;;; package org.allbinary.game.score.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoreRunnable (ARunnable)
  ((f_highScoresCanvas :initform nil)))

    
(defun HighScoreRunnable.jnew_1 (_highScoresCanvas)
  (declare (ignorable _highScoresCanvas))
  (let ((this (make-instance 'HighScoreRunnable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScoresCanvas) _highScoresCanvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this HighScoreRunnable))
  (declare (ignorable this))
  (let (_commonStrings _logUtil _highScoresCanvas _isHTML _stringMaker _systemWrapper _currentTimeMillis)
  (declare (ignorable _commonStrings _logUtil _highScoresCanvas _isHTML _stringMaker _systemWrapper _currentTimeMillis))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (setf _highScoresCanvas (slot-value this 'f_highScoresCanvas))
        (handler-case (progn
            (setf _isHTML (J2MEUtil.jm_isHTML_0))
            (if (not _isHTML)
                (progn
                (block jbreak (loop while (not (slot-value _highScoresCanvas 'f_hasPainted)) do
                        (block jcontinue
                    nil)))
                (setf (slot-value _highScoresCanvas 'f_hasPainted) nil)))
            (setf _stringMaker (StringMaker.jnew_0))
            (setf _systemWrapper (ABSystemWrapper.jm_getInstance_0))
            (setf _currentTimeMillis (jm_currentTimeMillis_0 _systemWrapper))
            (jm_putF_3 _logUtil (jm_toString_0 (jm_appendlong_1 (jm_append_1 _stringMaker "HighScoresCanvas - Request repaint to be sure: ") _currentTimeMillis)) this (slot-value _commonStrings 'f_RUN))
            (jm_onChangeRepaint_1 (slot-value _highScoresCanvas 'f_repaintBehavior) _highScoresCanvas)
            (if (not _isHTML)
                (progn
                (block jbreak (loop while (not (slot-value _highScoresCanvas 'f_hasPainted)) do
                        (block jcontinue
                    nil)))))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (jm_putF_3 _logUtil (jm_toString_0 (jm_appendlong_1 (jm_append_1 _stringMaker "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") _currentTimeMillis)) this (slot-value _commonStrings 'f_RUN))
            (jm_executeUpdate_0 _highScoresCanvas))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))



