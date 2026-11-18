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
;;;; package org.allbinary.game.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicAI (ArtificialIntelligence)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_gameKeyEventFactory :initform nil)
   (f_ownerLayerInterface :initform nil)
   (f_gameInput :initform nil)
   (f_lastKey :initform 0)))

(defvar BasicAI.jcell_AI_VISITOR :jnone)
(defun BasicAI.jstatic_AI_VISITOR ()
  (when (eq BasicAI.jcell_AI_VISITOR :jnone) (setf BasicAI.jcell_AI_VISITOR (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 2)))
  BasicAI.jcell_AI_VISITOR)
(defun (setf BasicAI.jstatic_AI_VISITOR) (value) (setf BasicAI.jcell_AI_VISITOR value))

(defvar BasicAI.jcell_ID :jnone)
(defun BasicAI.jstatic_ID ()
  (when (eq BasicAI.jcell_ID :jnone) (setf BasicAI.jcell_ID (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 1)))
  BasicAI.jcell_ID)
(defun (setf BasicAI.jstatic_ID) (value) (setf BasicAI.jcell_ID value))

    
(defun BasicAI.jnew_2 (_ownerLayerInterface _gameInput)
  (declare (ignorable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'BasicAI)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_lastKey) (JR.i32 (- 1)))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_ownerLayerInterface) _ownerLayerInterface)
        (setf (slot-value this 'f_gameInput) _gameInput)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this BasicAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_processKeyAI_1) (defgeneric jm_processKeyAI_1 (this p1)))
(defmethod jm_processKeyAI_1 ((this BasicAI) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (if (/= _key (JR.i32 (- 1)))
            (progn
            (jm_add_1 (slot-value this 'f_gameInput) (jm_getInstanceForKey_2 (slot-value this 'f_gameKeyEventFactory) this _key)))))))

    
(unless (fboundp 'jm_setLastKey_1) (defgeneric jm_setLastKey_1 (this p1)))
(defmethod jm_setLastKey_1 ((this BasicAI) _lastKey)
  (declare (ignorable this _lastKey))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lastKey) _lastKey))))

    
(unless (fboundp 'jm_getLastKey_0) (defgeneric jm_getLastKey_0 (this)))
(defmethod jm_getLastKey_0 ((this BasicAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastKey)))))

    
(unless (fboundp 'jm_getOwnerLayerInterface_0) (defgeneric jm_getOwnerLayerInterface_0 (this)))
(defmethod jm_getOwnerLayerInterface_0 ((this BasicAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_ownerLayerInterface)))))

    
(unless (fboundp 'jm_getGameInput_0) (defgeneric jm_getGameInput_0 (this)))
(defmethod jm_getGameInput_0 ((this BasicAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameInput)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this BasicAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className this)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BasicAI))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))
        (jm_append_1 _stringBuffer (jm_getName_0 this))
        (jm_append_1 _stringBuffer " LastKey: ")
        (jm_append_1 _stringBuffer (CanvasUtil.jm_getKeyName_1 (jm_getLastKey_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this BasicAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))



