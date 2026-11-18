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

(defclass HighScoresBase (JObject)
  ((f_commonStrings :initform nil)))

    
(defun HighScoresBase.jnew_0 ()
  (let ((this (make-instance 'HighScoresBase)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_fetchHighScores_2) (defgeneric jm_fetchHighScores_2 (this p1 p2)))
(defmethod jm_fetchHighScores_2 ((this HighScoresBase) _gameInfo _highScoresResultsListener)
  (declare (ignorable this _gameInfo _highScoresResultsListener))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_fetchHighScoresPreload_3) (defgeneric jm_fetchHighScoresPreload_3 (this p1 p2 p3)))
(defmethod jm_fetchHighScoresPreload_3 ((this HighScoresBase) _gameInfo _highScoresResultsListener _preload)
  (declare (ignorable this _gameInfo _highScoresResultsListener _preload))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_createHighScoresHelper_0) (defgeneric jm_createHighScoresHelper_0 (this)))
(defmethod jm_createHighScoresHelper_0 ((this HighScoresBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



