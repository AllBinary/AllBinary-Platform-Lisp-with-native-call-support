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

(defclass GameFeatureFormUtil (JObject)
  ((f_logUtil :initform nil)
   (f_meUtil :initform nil)))

(defvar GameFeatureFormUtil.jcell_instance :jnone)
(defun GameFeatureFormUtil.jstatic_instance ()
  (when (eq GameFeatureFormUtil.jcell_instance :jnone) (setf GameFeatureFormUtil.jcell_instance (GameFeatureFormUtil.jnew_0)))
  GameFeatureFormUtil.jcell_instance)
(defun (setf GameFeatureFormUtil.jstatic_instance) (value) (setf GameFeatureFormUtil.jcell_instance value))

(defun GameFeatureFormUtil.jnew_0 ()
  (let ((this (make-instance 'GameFeatureFormUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_meUtil) (MIDPUtil.jm_getInstance_0))
    this))

    
(defun GameFeatureFormUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureFormUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getChoiceGroup_3) (defgeneric jm_getChoiceGroup_3 (this p1 p2 p3)))
(defmethod jm_getChoiceGroup_3 ((this GameFeatureFormUtil) _hashtable _name _option)
  (declare (ignorable this _hashtable _name _option))
  (let (_stringMaker _choiceGroup _list _features _ADD_CHOICE _GET_CHOICE_GROUP _size _gameFeature _index)
  (declare (ignorable _stringMaker _choiceGroup _list _features _ADD_CHOICE _GET_CHOICE_GROUP _size _gameFeature _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _choiceGroup (ChoiceGroup.jnew_4 _name _option (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)) (NullImage.jstatic_NULL_IMAGE_ARRAY)))
        (setf _list (jm_get_1 _hashtable _name))
        (setf _features (Features.jm_getInstance_0))
        (setf _ADD_CHOICE ": Adding Choice: ")
        (setf _GET_CHOICE_GROUP "getChoiceGroup")
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameFeature (aref (slot-value _list 'f_objectArray) _index))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker _name) _ADD_CHOICE) (jm_toString_0 _gameFeature))) this _GET_CHOICE_GROUP)
            (jm_append_2 _choiceGroup (jm_toString_0 _gameFeature) (NullImage.jstatic_NULL_IMAGE))
            (if (jm_isFeature_1 _features _gameFeature)
                (progn
                (jm_setSelectedIndex_2 _choiceGroup _index t))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _choiceGroup))))

    
(unless (fboundp 'jm_addChoiceGroup_3) (defgeneric jm_addChoiceGroup_3 (this p1 p2 p3)))
(defmethod jm_addChoiceGroup_3 ((this GameFeatureFormUtil) _form _hashtable _option)
  (declare (ignorable this _form _hashtable _option))
  (let (_stringMaker _ADDING_CHOICE_GROUP _ADD_CHOICE_GROUP _size _objectArray _name _index)
  (declare (ignorable _stringMaker _ADDING_CHOICE_GROUP _ADD_CHOICE_GROUP _size _objectArray _name _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _ADDING_CHOICE_GROUP "Adding Choice Group: ")
        (setf _ADD_CHOICE_GROUP "addChoiceGroup")
        (setf _size (jm_size_0 _hashtable))
        (setf _objectArray (jm_getKeysAsArray_1 (HashtableUtil.jm_getInstance_0) _hashtable))
        (setf _name nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _name (aref _objectArray _index))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker _ADDING_CHOICE_GROUP) _name)) this _ADD_CHOICE_GROUP)
            (jm_appendItem_2 (slot-value this 'f_meUtil) _form (jm_getChoiceGroup_3 this _hashtable _name _option)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_setDefault_1) (defgeneric jm_setDefault_1 (this p1)))
(defmethod jm_setDefault_1 ((this GameFeatureFormUtil) _form)
  (declare (ignorable this _form))
  (let (_size _item _index)
  (declare (ignorable _size _item _index))
    (block jreturn
        (setf _size (jm_size_0 _form))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _item (jm_get_1 _form _index))
            (if (typep _item 'GameConfigurationGauge)
                (progn
                (jm_setDefault_1 (GameConfigurationUtil.jm_getInstance_0) _item))
                (if (typep _item 'ChoiceGroup)
                (progn
                (jm_setDefault_1 (GameFeatureUtil.jm_getInstance_0) _item)))))
                (setf _index (JR.i32 (+ _index 1)))))))))



