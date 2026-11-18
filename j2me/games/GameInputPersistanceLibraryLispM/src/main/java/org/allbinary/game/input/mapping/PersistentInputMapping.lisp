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
;;;; package org.allbinary.game.input.mapping

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;GameInputPersistanceLibrary
(defclass PersistentInputMapping (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_enumerationUtil :initform nil)
   (f_inputMapping :initform nil)
   (f_inputMappingEventListenerInterface :initform nil)
   (f_inputPersistance :initform nil)
   (f_inputMappingEvent :initform nil)))

(defvar PersistentInputMapping.jcell_instance :jnone)
(defun PersistentInputMapping.jstatic_instance ()
  (when (eq PersistentInputMapping.jcell_instance :jnone) (setf PersistentInputMapping.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  PersistentInputMapping.jcell_instance)
(defun (setf PersistentInputMapping.jstatic_instance) (value) (setf PersistentInputMapping.jcell_instance value))

    
(defun PersistentInputMapping.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (PersistentInputMapping.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (PersistentInputMapping.jstatic_instance) (PersistentInputMapping.jnew_1 (slot-value (GamePersistanceStrings.jm_getInstance_0) 'f_SAVED_INPUT_CONFIGURATION_RECORD_ID)))))
        (return-from jreturn (PersistentInputMapping.jstatic_instance)))))

    
(defun PersistentInputMapping.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'PersistentInputMapping)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_inputMapping) (InputToGameKeyMapping.jnew_0))
    (setf (slot-value this 'f_inputMappingEventListenerInterface) (NullInputMappingEventListener.jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER))
    
    (setf (slot-value this 'f_inputMappingEvent) (InputMappingEvent.jnew_1 this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputPersistance) (InputPersistance.jnew_1 _name))))
    this))

    
(unless (fboundp 'jm_getTotalMapped_0) (defgeneric jm_getTotalMapped_0 (this)))
(defmethod jm_getTotalMapped_0 ((this PersistentInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (jm_getHashtable_0 (jm_getInputMapping_0 this)))))))

    
(unless (fboundp 'jm_isDefaultNew_0) (defgeneric jm_isDefaultNew_0 (this)))
(defmethod jm_isDefaultNew_0 ((this PersistentInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getDefault_0) (defgeneric jm_getDefault_0 (this)))
(defmethod jm_getDefault_0 ((this PersistentInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (InputToGameKeyMapping.jm_getNullInstance_0)))))

    
(unless (fboundp 'jm_setDefault_1) (defgeneric jm_setDefault_1 (this p1)))
(defmethod jm_setDefault_1 ((this PersistentInputMapping) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_removeAll_0 (jm_getInputMapping_0 this))
        (jm_addMapping_1 (jm_getInputMapping_0 this) (jm_getDefault_0 this))
        (jm_save_1 this _abeClientInformation))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this PersistentInputMapping) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_deleteAll_1 (slot-value this 'f_inputPersistance) _abeClientInformation)
        (jm_save_1 this _abeClientInformation))))

    
(unless (fboundp 'jm_save_1) (defgeneric jm_save_1 (this p1)))
(defmethod jm_save_1 ((this PersistentInputMapping) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_save_2 (slot-value this 'f_inputPersistance) _abeClientInformation (jm_getHashtable_0 (jm_getInputMapping_0 this)))
        (jm_setInputToGameKeyMapping_1 (slot-value this 'f_inputMappingEvent) (jm_getInputMapping_0 this))
        (if (not (null (jm_getInputMappingEventListenerInterface_0 this)))
            (progn
            (jm_onInputMappingEvent_1 (jm_getInputMappingEventListenerInterface_0 this) (slot-value this 'f_inputMappingEvent)))))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this PersistentInputMapping) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_list _totalMappedTo _size _hashtable _enumeration _mappedToInput _gameActionInput _index _stringBuffer)
  (declare (ignorable _list _totalMappedTo _size _hashtable _enumeration _mappedToInput _gameActionInput _index _stringBuffer))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
        (handler-case (progn
            (jm_loadAll_1 (slot-value this 'f_inputPersistance) _abeClientInformation))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) _e)
            (jm_deleteRecoreStore_1 (slot-value this 'f_inputPersistance) _abeClientInformation)
            (jm_setDefault_1 this _abeClientInformation)
            (jm_loadAll_1 (slot-value this 'f_inputPersistance) _abeClientInformation)))
        (setf _list (jm_getList_0 (slot-value this 'f_inputPersistance)))
        (setf _totalMappedTo 0)
        (setf _size (jm_size_0 _list))
        (setf _hashtable nil)
        (setf _enumeration nil)
        (setf _mappedToInput nil)
        (setf _gameActionInput nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _hashtable (aref (slot-value _list 'f_objectArray) _index))
            (setf _enumeration (jm_keys_0 _hashtable))
            (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                    (block jcontinue
                (setf _mappedToInput (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration))
                (setf _gameActionInput (jm_get_1 _hashtable _mappedToInput))
                (setf _totalMappedTo (JR.i32 (+ _totalMappedTo 1)))
                (jm_add_2 (jm_getInputMapping_0 this) _gameActionInput _mappedToInput)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "End - Total Loaded Keys Mapped: ")
        (jm_appendint_1 _stringBuffer (jm_getTotalMapped_0 this))
        (jm_append_1 _stringBuffer " to: ")
        (jm_appendint_1 _stringBuffer _totalMappedTo)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))))

    
(unless (fboundp 'jm_setInputMappingEventListenerInterface_1) (defgeneric jm_setInputMappingEventListenerInterface_1 (this p1)))
(defmethod jm_setInputMappingEventListenerInterface_1 ((this PersistentInputMapping) _inputMappingEventListenerInterface)
  (declare (ignorable this _inputMappingEventListenerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_inputMappingEventListenerInterface) _inputMappingEventListenerInterface))))

    
(unless (fboundp 'jm_getInputMappingEventListenerInterface_0) (defgeneric jm_getInputMappingEventListenerInterface_0 (this)))
(defmethod jm_getInputMappingEventListenerInterface_0 ((this PersistentInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputMappingEventListenerInterface)))))

    
(unless (fboundp 'jm_getInputMapping_0) (defgeneric jm_getInputMapping_0 (this)))
(defmethod jm_getInputMapping_0 ((this PersistentInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_inputMapping)))))

    
(unless (fboundp 'jm_isDelete_1) (defgeneric jm_isDelete_1 (this p1)))
(defmethod jm_isDelete_1 ((this PersistentInputMapping) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_isSystemInput_1) (defgeneric jm_isSystemInput_1 (this p1)))
(defmethod jm_isSystemInput_1 ((this PersistentInputMapping) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))



