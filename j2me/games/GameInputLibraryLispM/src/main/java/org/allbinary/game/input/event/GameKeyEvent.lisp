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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameKeyEvent (AllBinaryEventObject)
  ((f_sourceId :initform 0)
   (f_repeated :initform nil)
   (f_key :initform 0)
   (f_gameActionKey :initform 0)
   (f_originalKey :initform 0)))

(defvar GameKeyEvent.jcell_NONE :jnone)
(defun GameKeyEvent.jstatic_NONE ()
  (when (eq GameKeyEvent.jcell_NONE :jnone) (setf GameKeyEvent.jcell_NONE (GameKeyEvent.jnew_6 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) nil)))
  GameKeyEvent.jcell_NONE)
(defun (setf GameKeyEvent.jstatic_NONE) (value) (setf GameKeyEvent.jcell_NONE value))

    
(defun GameKeyEvent.jm_createEvent_3 (_anyType _sourceId _key)
  (declare (ignorable _anyType _sourceId _key))
  (let ()
    (block jreturn
        (return-from jreturn (GameKeyEvent.jnew_6 _anyType _sourceId 0 0 _key nil)))))

    
(defun GameKeyEvent.jnew_6 (_anyType _sourceId _originalKey _gameActionKey _key _repeated)
  (declare (ignorable _anyType _sourceId _originalKey _gameActionKey _key _repeated))
  (let ((this (make-instance 'GameKeyEvent)))
    
    
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_sourceId) _sourceId)
        (jm_setOriginalKey_1 this _originalKey)
        (setf (slot-value this 'f_key) _key)
        (jm_setGameActionKey_1 this _gameActionKey)
        (jm_setRepeatEvents_1 this _repeated)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this GameKeyEvent) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_setSource_1 this _anyType))))

    
(unless (fboundp 'jm_setRepeatEvents_1) (defgeneric jm_setRepeatEvents_1 (this p1)))
(defmethod jm_setRepeatEvents_1 ((this GameKeyEvent) _repeated)
  (declare (ignorable this _repeated))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_repeated) _repeated))))

    
(unless (fboundp 'jm_hasRepeatEvents_0) (defgeneric jm_hasRepeatEvents_0 (this)))
(defmethod jm_hasRepeatEvents_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_repeated)))))

    
(unless (fboundp 'jm_getKey_0) (defgeneric jm_getKey_0 (this)))
(defmethod jm_getKey_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_key)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (JR.unescape "\\nKey: "))
        (jm_appendint_1 _stringBuffer (jm_getKey_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getOriginalKey_0) (defgeneric jm_getOriginalKey_0 (this)))
(defmethod jm_getOriginalKey_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_originalKey)))))

    
(unless (fboundp 'jm_setOriginalKey_1) (defgeneric jm_setOriginalKey_1 (this p1)))
(defmethod jm_setOriginalKey_1 ((this GameKeyEvent) _originalKey)
  (declare (ignorable this _originalKey))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_originalKey) _originalKey))))

    
(unless (fboundp 'jm_getGameActionKey_0) (defgeneric jm_getGameActionKey_0 (this)))
(defmethod jm_getGameActionKey_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameActionKey)))))

    
(unless (fboundp 'jm_setGameActionKey_1) (defgeneric jm_setGameActionKey_1 (this p1)))
(defmethod jm_setGameActionKey_1 ((this GameKeyEvent) _gameActionKey)
  (declare (ignorable this _gameActionKey))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameActionKey) _gameActionKey))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this GameKeyEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sourceId)))))



