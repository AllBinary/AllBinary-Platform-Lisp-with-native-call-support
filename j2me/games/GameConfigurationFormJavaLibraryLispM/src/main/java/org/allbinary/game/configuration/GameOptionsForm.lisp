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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameOptionsForm (CommandForm)
  ((f_meUtil :initform nil)))

    
(defun GameOptionsForm.jnew_4 (_commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _title _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'GameOptionsForm)))
    (setf (slot-value this 'f_meUtil) (MIDPUtil.jm_getInstance_0))
  (let (_gameFeatureFormUtil)
  (declare (ignorable _gameFeatureFormUtil))
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (jm_addConfiguration_0 this)
        (setf _gameFeatureFormUtil (GameFeatureFormUtil.jm_getInstance_0))
        (jm_addChoiceGroup_3 _gameFeatureFormUtil this (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (Choice.jstatic_EXCLUSIVE))
        (jm_addChoiceGroup_3 _gameFeatureFormUtil this (jm_get_0 (GameFeatureChoiceGroups.jm_getMultipleInstance_0)) (Choice.jstatic_MULTIPLE))
        (jm_initCommands_1 this _commandListener)
        (jm_setItemStateListener_1 this (GameFeatureItemStateListener.jnew_1 this))
        (jm_addTextFieldsIfSimulated_0 this)))
    this))

    
(unless (fboundp 'jm_closeClientInformation_1) (defgeneric jm_closeClientInformation_1 (this p1)))
(defmethod jm_closeClientInformation_1 ((this GameOptionsForm) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_close_0 this)
        (jm_save_1 this _abeClientInformation))))

    
(unless (fboundp 'jm_addTextFieldsIfSimulated_0) (defgeneric jm_addTextFieldsIfSimulated_0 (this)))
(defmethod jm_addTextFieldsIfSimulated_0 ((this GameOptionsForm))
  (declare (ignorable this))
  (let (_key _hashtable _listCanBeNull _list)
  (declare (ignorable _key _hashtable _listCanBeNull _list))
    (block jreturn
        (setf _key (slot-value (OrientationData.jm_getInstance_0) 'f_ORIENTATION_SENSOR_INPUT))
        (setf _hashtable (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)))
        (if (not (null _hashtable))
            (progn
            (setf _listCanBeNull (jm_get_1 _hashtable _key))
            (if (not (null _listCanBeNull))
                (progn
                (setf _list _listCanBeNull)
                (if (jm_contains_1 _list (slot-value (SensorFeatureFactory.jm_getInstance_0) 'f_SIMULATED_ORIENTATION_SENSORS))
                    (progn
                    (jm_addTextFields_0 this))))))))))

    
(unless (fboundp 'jm_addTextFields_0) (defgeneric jm_addTextFields_0 (this)))
(defmethod jm_addTextFields_0 ((this GameOptionsForm))
  (declare (ignorable this))
  (let (_hashtable _size _objectArray _gameConfigurationTextInput _textField _index)
  (declare (ignorable _hashtable _size _objectArray _gameConfigurationTextInput _textField _index))
    (block jreturn
        (setf _hashtable (GameConfigurationTextInput.jm_getHashtable_0))
        (setf _size (jm_size_0 _hashtable))
        (setf _objectArray (jm_getKeysAsArray_1 (HashtableUtil.jm_getInstance_0) _hashtable))
        (setf _gameConfigurationTextInput nil)
        (setf _textField nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameConfigurationTextInput (jm_get_1 _hashtable (aref _objectArray _index)))
            (setf _textField (TextField.jnew_4 (jm_getLabel_0 _gameConfigurationTextInput) (jm_getText_0 _gameConfigurationTextInput) 30 (TextField.jstatic_ANY)))
            (jm_appendItem_2 (slot-value this 'f_meUtil) this _textField))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_addConfiguration_0) (defgeneric jm_addConfiguration_0 (this)))
(defmethod jm_addConfiguration_0 ((this GameOptionsForm))
  (declare (ignorable this))
  (let (_METHOD_NAME _NAME _list _GAUGE_CHANGE _stringMaker _size _gameConfiguration _gauge _index)
  (declare (ignorable _METHOD_NAME _NAME _list _GAUGE_CHANGE _stringMaker _size _gameConfiguration _gauge _index))
    (block jreturn
        (setf _METHOD_NAME "addConfiguration")
        (setf _NAME "Name: ")
        (setf _list (jm_getOptionsBasicArrayList_0 (GameConfigurationSingleton.jm_getInstance_0)))
        (setf _GAUGE_CHANGE (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_GAUGE_CHANGE))
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _size (jm_size_0 _list))
        (setf _gameConfiguration nil)
        (setf _gauge nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameConfiguration (aref (slot-value _list 'f_objectArray) _index))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _NAME) (jm_toString_0 _gameConfiguration))) this _METHOD_NAME)
            (setf _gauge (GameConfigurationGauge.jnew_1 _gameConfiguration))
            (jm_setDefaultCommand_1 _gauge _GAUGE_CHANGE)
            (jm_setItemCommandListener_1 _gauge (GameFeatureItemCommandListener.jnew_1 this))
            (jm_appendItem_2 (slot-value this 'f_meUtil) this _gauge))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameOptionsForm) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let (_gameCommandsFactory)
  (declare (ignorable _gameCommandsFactory))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_CLOSE_OPTIONS))
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_DEFAULT_OPTIONS))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_save_1) (defgeneric jm_save_1 (this p1)))
(defmethod jm_save_1 ((this GameOptionsForm) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_size _item _index _hashtable _SCALE _keyValuePersistance _list _size2 _integer)
  (declare (ignorable _size _item _index _hashtable _SCALE _keyValuePersistance _list _size2 _integer))
    (block jreturn
        (setf _size (jm_size_0 this))
        (setf _item nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _item (jm_get_1 this _index))
            (if (typep _item 'GameConfigurationGauge)
                (progn
                (jm_update_1 (GameConfigurationUtil.jm_getInstance_0) _item))
                (if (typep _item 'TextField)
                (progn
                (GameConfigurationTextInput.jm_update_1 _item)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_updateCompetitionValue_0 (GameConfigurationUtil.jm_getInstance_0))
        (setf _hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (setf _SCALE (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_SCALE))
        (jm_put_2 _hashtable (jm_getName_0 _SCALE) (JR.str (jm_intValue_0 (jm_getValue_0 _SCALE))))
        (setf _keyValuePersistance (GameConfigurationPersistanceSingleton.jm_getInstance_0))
        (jm_clear_0 _keyValuePersistance)
        (jm_loadAll_1 _keyValuePersistance _abeClientInformation)
        (setf _list (jm_getIds_0 _keyValuePersistance))
        (jm_save_2 _keyValuePersistance _abeClientInformation _hashtable)
        (setf _size2 (jm_size_0 _list))
        (setf _integer nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size2) do
                (block jcontinue
            (setf _integer (aref (slot-value _list 'f_objectArray) _index))
            (jm_delete_2 _keyValuePersistance _abeClientInformation (jm_intValue_0 _integer)))
                (setf _index (JR.i32 (+ _index 1)))))))))



