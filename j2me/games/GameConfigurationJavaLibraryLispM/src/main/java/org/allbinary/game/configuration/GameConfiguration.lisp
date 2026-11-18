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

(defclass GameConfiguration (JObject)
  ((f_name :initform nil)
   (f_defaultValue :initform nil)
   (f_value :initform nil)
   (f_minValue :initform nil)
   (f_maxValue :initform nil)
   (f_modifiable :initform nil)))

(defvar GameConfiguration.jcell_MIN_VALUE :jnone)
(defun GameConfiguration.jstatic_MIN_VALUE ()
  (when (eq GameConfiguration.jcell_MIN_VALUE :jnone) (setf GameConfiguration.jcell_MIN_VALUE (Integer.jstatic_MIN_VALUE)))
  GameConfiguration.jcell_MIN_VALUE)
(defun (setf GameConfiguration.jstatic_MIN_VALUE) (value) (setf GameConfiguration.jcell_MIN_VALUE value))

    
(defun GameConfiguration.jnew_4 (_name _defaultValue _minValue _maxValue)
  (declare (ignorable _name _defaultValue _minValue _maxValue))
  (let ((this (make-instance 'GameConfiguration)))
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_defaultValue) (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 0))
    (setf (slot-value this 'f_value) (GameConfiguration.jstatic_MIN_VALUE))
    (setf (slot-value this 'f_minValue) (slot-value this 'f_defaultValue))
    (setf (slot-value this 'f_maxValue) (slot-value this 'f_defaultValue))
    (setf (slot-value this 'f_modifiable) (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE))
  (let ()
    (block jreturn
        (jm_setName_1 this _name)
        (jm_setDefaultValue_1 this _defaultValue)
        (setf (slot-value this 'f_value) (jm_getDefaultValue_0 this))
        (jm_setMinValue_1 this _minValue)
        (jm_setMaxValue_1 this _maxValue)
        (jm_put_2 (jm_getHashtable_0 (GameConfigurationSingleton.jm_getInstance_0)) (jm_getName_0 this) this)))
    this))

    
(unless (fboundp 'jm_setValue_1) (defgeneric jm_setValue_1 (this p1)))
(defmethod jm_setValue_1 ((this GameConfiguration) _value)
  (declare (ignorable this _value))
  (let (_oldValue)
  (declare (ignorable _oldValue))
    (block jreturn
        (if (not (eq (slot-value this 'f_value) _value))
            (progn
            (setf _oldValue (slot-value this 'f_value))
            (setf (slot-value this 'f_value) _value)
            (jm_fireEvent_1 (GameFeatureEventHandler.jm_getInstance_0) (GameFeatureEvent.jnew_2 this (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_name)) " value: from: ") (jm_intValue_0 _oldValue)) " to ") (jm_intValue_0 (slot-value this 'f_value)))))))))))

    
(unless (fboundp 'jm_getValue_0) (defgeneric jm_getValue_0 (this)))
(defmethod jm_getValue_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_setMaxValue_1) (defgeneric jm_setMaxValue_1 (this p1)))
(defmethod jm_setMaxValue_1 ((this GameConfiguration) _maxValue)
  (declare (ignorable this _maxValue))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxValue) _maxValue))))

    
(unless (fboundp 'jm_getMaxValue_0) (defgeneric jm_getMaxValue_0 (this)))
(defmethod jm_getMaxValue_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxValue)))))

    
(unless (fboundp 'jm_setMinValue_1) (defgeneric jm_setMinValue_1 (this p1)))
(defmethod jm_setMinValue_1 ((this GameConfiguration) _minValue)
  (declare (ignorable this _minValue))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_minValue) _minValue))))

    
(unless (fboundp 'jm_getMinValue_0) (defgeneric jm_getMinValue_0 (this)))
(defmethod jm_getMinValue_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_minValue)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this GameConfiguration) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_setDefaultValue_1) (defgeneric jm_setDefaultValue_1 (this p1)))
(defmethod jm_setDefaultValue_1 ((this GameConfiguration) _defaultValue)
  (declare (ignorable this _defaultValue))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_defaultValue) _defaultValue))))

    
(unless (fboundp 'jm_getDefaultValue_0) (defgeneric jm_getDefaultValue_0 (this)))
(defmethod jm_getDefaultValue_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_defaultValue)))))

    
(unless (fboundp 'jm_setDefault_0) (defgeneric jm_setDefault_0 (this)))
(defmethod jm_setDefault_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setValue_1 this (jm_getDefaultValue_0 this)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Name: ")
        (jm_append_1 _stringBuffer (slot-value this 'f_name))
        (jm_append_1 _stringBuffer " Min: ")
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getMinValue_0 this)))
        (jm_append_1 _stringBuffer " Max: ")
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getMaxValue_0 this)))
        (jm_append_1 _stringBuffer " Value: ")
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 this)))
        (jm_append_1 _stringBuffer " Default: ")
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getDefaultValue_0 this)))
        (jm_append_1 _stringBuffer " Modifiable: ")
        (jm_appendboolean_1 _stringBuffer (jm_booleanValue_0 (jm_isModifiable_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_setModifiable_1) (defgeneric jm_setModifiable_1 (this p1)))
(defmethod jm_setModifiable_1 ((this GameConfiguration) _modifiable)
  (declare (ignorable this _modifiable))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_modifiable) _modifiable))))

    
(unless (fboundp 'jm_isModifiable_0) (defgeneric jm_isModifiable_0 (this)))
(defmethod jm_isModifiable_0 ((this GameConfiguration))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_modifiable)))))



