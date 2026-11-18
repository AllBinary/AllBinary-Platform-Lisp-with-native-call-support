;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass HighScoresHelperBase (JObject)
  ((f_logUtil :initform nil)
   (f_highScoresArrayP :initform nil)))

(defun HighScoresHelperBase.jnew_0 ()
  (let ((this (make-instance 'HighScoresHelperBase)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_highScoresArrayP) (slot-value (LastFetchHighScoresFactory.jm_getInstance_0) 'f_highScoresArray))
    this))

    
(unless (fboundp 'jm_setHighScoresArray_1) (defgeneric jm_setHighScoresArray_1 (this p1)))
(defmethod jm_setHighScoresArray_1 ((this HighScoresHelperBase) _highScoresArrayP)
  (declare (ignorable this _highScoresArrayP))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (if (not (null _highScoresArrayP))
            (progn
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value _commonStrings 'f_START)) (length _highScoresArrayP))) this "setHighScoresArray"))
            (progn
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_START) this "setHighScoresArray")))
        (setf (slot-value this 'f_highScoresArrayP) _highScoresArrayP))))

    
(unless (fboundp 'jm_getNextHighScores_0) (defgeneric jm_getNextHighScores_0 (this)))
(defmethod jm_getNextHighScores_0 ((this HighScoresHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullHighScoresSingletonFactory.jm_getInstance_0)))))

    
(unless (fboundp 'jm_isAnyHighScores_0) (defgeneric jm_isAnyHighScores_0 (this)))
(defmethod jm_isAnyHighScores_0 ((this HighScoresHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_setSelectedHighScores_1) (defgeneric jm_setSelectedHighScores_1 (this p1)))
(defmethod jm_setSelectedHighScores_1 ((this HighScoresHelperBase) _selectedHighScores)
  (declare (ignorable this _selectedHighScores))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSelectedHighScores_0) (defgeneric jm_getSelectedHighScores_0 (this)))
(defmethod jm_getSelectedHighScores_0 ((this HighScoresHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (NullHighScoresSingletonFactory.jm_getInstance_0)))))

    
(unless (fboundp 'jm_getHighScoresArray_0) (defgeneric jm_getHighScoresArray_0 (this)))
(defmethod jm_getHighScoresArray_0 ((this HighScoresHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_highScoresArrayP)))))

    
(unless (fboundp 'jm_selectHighScores_0) (defgeneric jm_selectHighScores_0 (this)))
(defmethod jm_selectHighScores_0 ((this HighScoresHelperBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



