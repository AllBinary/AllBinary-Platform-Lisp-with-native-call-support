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

(defclass HighScore (JObject)
  ((f_id :initform 0)
   (f_name :initform nil)
   (f_gameInfo :initform nil)
   (f_score :initform 0)
   (f_scoreString :initform nil)))

    
(defun HighScore.jnew_4 (_id _name _gameInfo _score)
  (declare (ignorable _id _name _gameInfo _score))
  (let ((this (make-instance 'HighScore)))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) _id)
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_gameInfo) _gameInfo)
        (setf (slot-value this 'f_score) _score)
        (setf (slot-value this 'f_scoreString) (JR.str (slot-value this 'f_score)))))
    this))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this HighScore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this HighScore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getScore_0) (defgeneric jm_getScore_0 (this)))
(defmethod jm_getScore_0 ((this HighScore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_score)))))

    
(unless (fboundp 'jm_getAsBytes_0) (defgeneric jm_getAsBytes_0 (this)))
(defmethod jm_getAsBytes_0 ((this HighScore))
  (declare (ignorable this))
  (let (_byteArrayOutputStream _outputStream)
  (declare (ignorable _byteArrayOutputStream _outputStream))
    (block jreturn
        (setf _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
        (setf _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
        (jm_writeUTF_1 _outputStream (jm_getName_0 this))
        (jm_writeLong_1 _outputStream (jm_getScore_0 this))
        (return-from jreturn (jm_toByteArray_0 _byteArrayOutputStream)))))

    
(unless (fboundp 'jm_getGameInfo_0) (defgeneric jm_getGameInfo_0 (this)))
(defmethod jm_getGameInfo_0 ((this HighScore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInfo)))))

    
(unless (fboundp 'jm_getScoreString_0) (defgeneric jm_getScoreString_0 (this)))
(defmethod jm_getScoreString_0 ((this HighScore))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scoreString)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this HighScore) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this HighScore))
  (declare (ignorable this))
  (let (_commonSeps)
  (declare (ignorable _commonSeps))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_name)) (slot-value _commonSeps 'f_COLON)) (slot-value this 'f_score)) (slot-value _commonSeps 'f_FORWARD_SLASH)) (slot-value this 'f_scoreString)))))))



