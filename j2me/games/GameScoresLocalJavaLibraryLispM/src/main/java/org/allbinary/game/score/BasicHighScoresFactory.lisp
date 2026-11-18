;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicHighScoresFactory (HighScoresBase)
  ((f_logUtil :initform nil)
   (f_abeClientInformation :initform nil)
   (f_highScoresArray :initform nil)
   (f_TOP :initform nil)
   (f_SCORES :initform nil)
   (f_PERSONAL_HIGH_SCORES :initform nil)
   (f_FETCH :initform nil)))

    
(defun BasicHighScoresFactory.jnew_2 (_abeClientInformation _softwareInformation)
  (declare (ignorable _abeClientInformation _softwareInformation))
  (let ((this (make-instance 'BasicHighScoresFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_highScoresArray) (JR.newArray nil 1))
    (setf (slot-value this 'f_TOP) "Top")
    (setf (slot-value this 'f_SCORES) "Scores")
    (setf (slot-value this 'f_PERSONAL_HIGH_SCORES) "Personal Top Scores")
    (setf (slot-value this 'f_FETCH) "fetchHighScores")
  (let ()
    (block jreturn
        (setf (slot-value this 'f_abeClientInformation) _abeClientInformation)))
    this))

    
(unless (fboundp 'jm_fetchHighScores_2) (defgeneric jm_fetchHighScores_2 (this p1 p2)))
(defmethod jm_fetchHighScores_2 ((this BasicHighScoresFactory) _gameInfo _highScoresResultsListener)
  (declare (ignorable this _gameInfo _highScoresResultsListener))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Getting Local HighScores" this (slot-value this 'f_FETCH))
        (jm_fetchHighScoresPreload_3 this _gameInfo _highScoresResultsListener t))))

    
(unless (fboundp 'jm_fetchHighScoresPreload_3) (defgeneric jm_fetchHighScoresPreload_3 (this p1 p2 p3)))
(defmethod jm_fetchHighScoresPreload_3 ((this BasicHighScoresFactory) _gameInfo _highScoresResultsListener _preload)
  (declare (ignorable this _gameInfo _highScoresResultsListener _preload))
  (let ()
    (block jreturn
        (handler-case (progn
            (setf (aref (slot-value this 'f_highScoresArray) 0) (RecordStoreHighScores.jm_getInstance_6 (slot-value this 'f_abeClientInformation) _gameInfo (slot-value this 'f_TOP) (slot-value this 'f_PERSONAL_HIGH_SCORES) (slot-value this 'f_SCORES) (ScoreComparator.jnew_1 t)))
            (jm_setHighScoresArray_1 _highScoresResultsListener (slot-value this 'f_highScoresArray)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_FETCH) _e))))))

    
(unless (fboundp 'jm_createHighScoresHelper_0) (defgeneric jm_createHighScoresHelper_0 (this)))
(defmethod jm_createHighScoresHelper_0 ((this BasicHighScoresFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (HighScoresHelper2.jnew_0)))))

    
(defun BasicHighScoresFactory.jm_loaded_1 (_index2)
  (declare (ignorable _index2))
  (let ()
    (block jreturn
        (if (>= _index2 0)
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))



