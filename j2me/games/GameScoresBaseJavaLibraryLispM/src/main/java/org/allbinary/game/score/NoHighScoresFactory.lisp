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

(defclass NoHighScoresFactory (HighScoresBase)
  ((f_logUtil :initform nil)
   (f_NO_HIGH_SCORES :initform nil)))

(defvar NoHighScoresFactory.jcell_instance :jnone)
(defun NoHighScoresFactory.jstatic_instance ()
  (when (eq NoHighScoresFactory.jcell_instance :jnone) (setf NoHighScoresFactory.jcell_instance (NoHighScoresFactory.jnew_0)))
  NoHighScoresFactory.jcell_instance)
(defun (setf NoHighScoresFactory.jstatic_instance) (value) (setf NoHighScoresFactory.jcell_instance value))

    
(defun NoHighScoresFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoHighScoresFactory.jstatic_instance)))))

    
(defun NoHighScoresFactory.jnew_0 ()
  (let ((this (make-instance 'NoHighScoresFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_NO_HIGH_SCORES) (JR.newArray nil 0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_fetchHighScores_2) (defgeneric jm_fetchHighScores_2 (this p1 p2)))
(defmethod jm_fetchHighScores_2 ((this NoHighScoresFactory) _gameInfo _highScoresResultsListener)
  (declare (ignorable this _gameInfo _highScoresResultsListener))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Getting No HighScores" this "fetchHighScores")
        (jm_setHighScoresArray_1 _highScoresResultsListener (slot-value this 'f_NO_HIGH_SCORES)))))

    
(unless (fboundp 'jm_createHighScoresHelper_0) (defgeneric jm_createHighScoresHelper_0 (this)))
(defmethod jm_createHighScoresHelper_0 ((this NoHighScoresFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (HighScoresHelperBase.jnew_0)))))



