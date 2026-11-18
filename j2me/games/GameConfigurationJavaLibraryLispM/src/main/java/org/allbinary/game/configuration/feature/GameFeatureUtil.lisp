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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameFeatureUtil (JObject)
  ((f_logUtil :initform nil)
   (f_tsUtil :initform nil)
   (f_enumerationUtil :initform nil)
   (f_ON_GAME_FEATURE_CHANGE :initform nil)
   (f_GAME_FEATURE_CHANGED :initform nil)))

(defvar GameFeatureUtil.jcell_instance :jnone)
(defun GameFeatureUtil.jstatic_instance ()
  (when (eq GameFeatureUtil.jcell_instance :jnone) (setf GameFeatureUtil.jcell_instance (GameFeatureUtil.jnew_0)))
  GameFeatureUtil.jcell_instance)
(defun (setf GameFeatureUtil.jstatic_instance) (value) (setf GameFeatureUtil.jcell_instance value))

(defun GameFeatureUtil.jnew_0 ()
  (let ((this (make-instance 'GameFeatureUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_ON_GAME_FEATURE_CHANGE) "onGameFeatureChange")
    (setf (slot-value this 'f_GAME_FEATURE_CHANGED) "Game Feature Changed: ")
    this))

    
(defun GameFeatureUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_setDefault_1) (defgeneric jm_setDefault_1 (this p1)))
(defmethod jm_setDefault_1 ((this GameFeatureUtil) _choiceGroup)
  (declare (ignorable this _choiceGroup))
  (let (_stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _features _isSelected _selectedChoiceLabel _gameFeature _index)
  (declare (ignorable _stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _features _isSelected _selectedChoiceLabel _gameFeature _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _METHOD_NAME "setDefault")
        (setf _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (setf _SELECTED_SEP "] = ")
        (setf _selectedArray_return (JR.newArray nil (jm_size_0 _choiceGroup)))
        (setf _total (jm_getSelectedFlags_1 _choiceGroup _selectedArray_return))
        (jm_append_1 _stringBuffer "Multiple Total Choices: ")
        (jm_appendint_1 _stringBuffer _total)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
        (setf _features (Features.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _selectedArray_return)) do
                (block jcontinue
            (setf _isSelected (aref _selectedArray_return _index))
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer _SELECTED_ARRAY_RETURN)
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer _SELECTED_SEP)
            (jm_appendboolean_1 _stringBuffer _isSelected)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
            (setf _selectedChoiceLabel (jm_getString_1 _choiceGroup _index))
            (setf _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
            (if (jm_isDefault_1 _features _gameFeature)
                (progn
                (jm_add_1 _features _gameFeature)
                (jm_setSelectedIndex_2 _choiceGroup _index t))
                (progn
                (jm_remove_1 _features _gameFeature)
                (jm_setSelectedIndex_2 _choiceGroup _index nil))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_updateMultiple_1) (defgeneric jm_updateMultiple_1 (this p1)))
(defmethod jm_updateMultiple_1 ((this GameFeatureUtil) _choiceGroup)
  (declare (ignorable this _choiceGroup))
  (let (_stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _features _isSelected _selectedChoiceLabel _gameFeature _index)
  (declare (ignorable _stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _features _isSelected _selectedChoiceLabel _gameFeature _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _METHOD_NAME "updateMultiple")
        (setf _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (setf _SELECTED_SEP "] = ")
        (setf _selectedArray_return (JR.newArray nil (jm_size_0 _choiceGroup)))
        (setf _total (jm_getSelectedFlags_1 _choiceGroup _selectedArray_return))
        (jm_append_1 _stringBuffer "Multiple Total Choices: ")
        (jm_appendint_1 _stringBuffer _total)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
        (setf _features (Features.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _selectedArray_return)) do
                (block jcontinue
            (setf _isSelected (aref _selectedArray_return _index))
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer _SELECTED_ARRAY_RETURN)
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer _SELECTED_SEP)
            (jm_appendboolean_1 _stringBuffer _isSelected)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
            (setf _selectedChoiceLabel (jm_getString_1 _choiceGroup _index))
            (setf _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
            (if (and (not _isSelected) (jm_isFeature_1 _features _gameFeature))
                (progn
                (jm_remove_1 _features _gameFeature))
                (if (and _isSelected (not (jm_isFeature_1 _features _gameFeature)))
                (progn
                (jm_add_1 _features _gameFeature)))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_updateExclusiveForChoiceGroup_1) (defgeneric jm_updateExclusiveForChoiceGroup_1 (this p1)))
(defmethod jm_updateExclusiveForChoiceGroup_1 ((this GameFeatureUtil) _choiceGroup)
  (declare (ignorable this _choiceGroup))
  (let (_stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _isSelected _selectedChoiceLabel _index)
  (declare (ignorable _stringBuffer _METHOD_NAME _SELECTED_ARRAY_RETURN _SELECTED_SEP _selectedArray_return _total _isSelected _selectedChoiceLabel _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _METHOD_NAME "updateExclusive")
        (setf _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (setf _SELECTED_SEP "] = ")
        (setf _selectedArray_return (JR.newArray nil (jm_size_0 _choiceGroup)))
        (setf _total (jm_getSelectedFlags_1 _choiceGroup _selectedArray_return))
        (jm_append_1 _stringBuffer "Exclusive Total Choices: 1==")
        (jm_appendint_1 _stringBuffer _total)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _selectedArray_return)) do
                (block jcontinue
            (setf _isSelected (aref _selectedArray_return _index))
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer _SELECTED_ARRAY_RETURN)
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer _SELECTED_SEP)
            (jm_appendboolean_1 _stringBuffer _isSelected)
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this _METHOD_NAME)
            (if _isSelected
                (progn
                (setf _selectedChoiceLabel (jm_getString_1 _choiceGroup _index))
                (jm_updateExclusive_1 this _selectedChoiceLabel))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_isExclusive_1) (defgeneric jm_isExclusive_1 (this p1)))
(defmethod jm_isExclusive_1 ((this GameFeatureUtil) _itemLabel)
  (declare (ignorable this _itemLabel))
  (let (_enumeration _name)
  (declare (ignorable _enumeration _name))
    (block jreturn
        (setf _enumeration (jm_keys_0 (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0))))
        (setf _name nil)
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (setf _name (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration))
            (if (eq (jm_compareTo_2 (slot-value this 'f_tsUtil) _itemLabel _name) 0)
                (progn
                (return-from jreturn t))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_updateExclusive_1) (defgeneric jm_updateExclusive_1 (this p1)))
(defmethod jm_updateExclusive_1 ((this GameFeatureUtil) _selectedChoiceLabel)
  (declare (ignorable this _selectedChoiceLabel))
  (let (_gameFeature _hashtable _objectArray _basicArrayList _anyType _size _index)
  (declare (ignorable _gameFeature _hashtable _objectArray _basicArrayList _anyType _size _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_ITEM_LABEL)) _selectedChoiceLabel)) this "updateExclusive")
        (setf _gameFeature (Feature.jm_getInstance_1 _selectedChoiceLabel))
        (setf _hashtable (jm_get_0 (GameFeatureChoiceGroups.jm_getExclusiveInstance_0)))
        (setf _objectArray (jm_getKeysAsArray_1 (HashtableUtil.jm_getInstance_0) _hashtable))
        (setf _basicArrayList nil)
        (setf _anyType nil)
        (setf _size (length _objectArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _anyType (aref _objectArray _index))
            (setf _basicArrayList (jm_get_1 _hashtable _anyType))
            (jm_updateExclusiveList_2 this _gameFeature _basicArrayList))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_updateExclusiveList_2) (defgeneric jm_updateExclusiveList_2 (this p1 p2)))
(defmethod jm_updateExclusiveList_2 ((this GameFeatureUtil) _gameFeature _list)
  (declare (ignorable this _gameFeature _list))
  (let (_features _addIndex _size _index)
  (declare (ignorable _features _addIndex _size _index))
    (block jreturn
        (if (jm_contains_1 _list _gameFeature)
            (progn
            (setf _features (Features.jm_getInstance_0))
            (setf _addIndex (jm_indexOf_1 _list _gameFeature))
            (setf _size (jm_size_0 _list))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (if (/= _addIndex _index)
                    (progn
                    (jm_remove_1 _features (aref (slot-value _list 'f_objectArray) _index)))
                    (progn
                    (jm_add_1 _features (aref (slot-value _list 'f_objectArray) _index)))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))



