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

(defclass HighScores (JObject)
  ((f_orderedHighScoresList :initform nil)
   (f_name :initform nil)
   (f_heading :initform nil)
   (f_columnOneHeading :initform nil)
   (f_columnTwoHeading :initform nil)))

    
(defun HighScores.jnew_3 (_name _heading _columnTwoHeading)
  (declare (ignorable _name _heading _columnTwoHeading))
  (let ((this (make-instance 'HighScores)))
    (setf (slot-value this 'f_orderedHighScoresList) (BasicArrayListD.jnew_0))
    
    
    (setf (slot-value this 'f_columnOneHeading) "Name")
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_heading) _heading)
        (setf (slot-value this 'f_columnTwoHeading) _columnTwoHeading)))
    this))

    
(unless (fboundp 'jm_setList_1) (defgeneric jm_setList_1 (this p1)))
(defmethod jm_setList_1 ((this HighScores) _orderedHighScoresList)
  (declare (ignorable this _orderedHighScoresList))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_orderedHighScoresList) _orderedHighScoresList))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_orderedHighScoresList)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (jm_getList_0 this))))))

    
(unless (fboundp 'jm_addHighScore_1) (defgeneric jm_addHighScore_1 (this p1)))
(defmethod jm_addHighScore_1 ((this HighScores) _newHighScore)
  (declare (ignorable this _newHighScore))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_orderedHighScoresList) _newHighScore))))

    
(unless (fboundp 'jm_getHeading_0) (defgeneric jm_getHeading_0 (this)))
(defmethod jm_getHeading_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_heading)))))

    
(unless (fboundp 'jm_getColumnOneHeading_0) (defgeneric jm_getColumnOneHeading_0 (this)))
(defmethod jm_getColumnOneHeading_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_columnOneHeading)))))

    
(unless (fboundp 'jm_getColumnTwoHeading_0) (defgeneric jm_getColumnTwoHeading_0 (this)))
(defmethod jm_getColumnTwoHeading_0 ((this HighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_columnTwoHeading)))))

    
(unless (fboundp 'jm_isBestScore_1) (defgeneric jm_isBestScore_1 (this p1)))
(defmethod jm_isBestScore_1 ((this HighScores) _newHighScore)
  (declare (ignorable this _newHighScore))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this HighScores))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "HighScores: ")
        (jm_append_1 _stringBuffer (slot-value this 'f_heading))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_TOTAL_LABEL))
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_orderedHighScoresList)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



