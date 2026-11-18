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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SaveHighScoreRunnable (JObject)
  ((f_progressCanvas :initform nil)
   (f_isLast :initform nil)
   (f_textBox :initform nil)))

    
(defun SaveHighScoreRunnable.jnew_2 (_isLast _textBox)
  (declare (ignorable _isLast _textBox))
  (let ((this (make-instance 'SaveHighScoreRunnable)))
    (setf (slot-value this 'f_progressCanvas) (ProgressCanvasFactory.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_isLast) _isLast)
        (setf (slot-value this 'f_textBox) _textBox)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this SaveHighScoreRunnable))
  (declare (ignorable this))
  (let (_logUtil _commonStrings)
  (declare (ignorable _logUtil _commonStrings))
    (block jreturn
        (setf _logUtil (LogUtil.jm_getInstance_0))
        (handler-case (progn
            (if (slot-value this 'f_isLast)
                (progn
                (jm_submit_0 (slot-value this 'f_textBox)))
                (progn
                (jm_saveHighScore_0 (slot-value this 'f_textBox)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this "run" _e)
            (jm_end_0 (slot-value this 'f_progressCanvas)))))))



