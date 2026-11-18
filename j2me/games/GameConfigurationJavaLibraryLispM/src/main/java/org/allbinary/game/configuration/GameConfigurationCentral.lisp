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

(defclass GameConfigurationCentral (JObject)
  ((f_logUtil :initform nil)
   (f_SCALE :initform nil)
   (f_ORIENTATION :initform nil)
   (f_SENSOR_UPDATE_RATE :initform nil)
   (f_VIBRATION :initform nil)
   (f_CHALLENGE_LEVEL :initform nil)
   (f_COLLIDE_DAMAGE :initform nil)
   (f_DURABILITY_CHALLENGE_LEVEL :initform nil)
   (f_SPEED_CHALLENGE_LEVEL :initform nil)
   (f_ATTACK_CHALLENGE_LEVEL :initform nil)
   (f_CONTROL_LEVEL :initform nil)
   (f_PLAYER_INPUT_WAIT :initform nil)
   (f_SPEED :initform nil)
   (f_SOUND_VOLUME :initform nil)
   (f_MAX_GAME_OBJECTS :initform nil)
   (f_MAX_LAYERS :initform nil)
   (f_gameControlFidelity :initform 0)))

(defvar GameConfigurationCentral.jcell_SINGLETON :jnone)
(defun GameConfigurationCentral.jstatic_SINGLETON ()
  (when (eq GameConfigurationCentral.jcell_SINGLETON :jnone) (setf GameConfigurationCentral.jcell_SINGLETON (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  GameConfigurationCentral.jcell_SINGLETON)
(defun (setf GameConfigurationCentral.jstatic_SINGLETON) (value) (setf GameConfigurationCentral.jcell_SINGLETON value))

    
(defun GameConfigurationCentral.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (GameConfigurationCentral.jstatic_SINGLETON) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (GameConfigurationCentral.jstatic_SINGLETON) (GameConfigurationCentral.jnew_0))))
        (return-from jreturn (GameConfigurationCentral.jstatic_SINGLETON)))))

    
(defun GameConfigurationCentral.jnew_0 ()
  (let ((this (make-instance 'GameConfigurationCentral)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (setf (slot-value this 'f_gameControlFidelity) 36)
  (let (_smallIntegerSingletonFactory)
  (declare (ignorable _smallIntegerSingletonFactory))
    (block jreturn
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf (slot-value this 'f_SCALE) (GameConfiguration.jnew_4 "Scale" (jm_getAt_1 _smallIntegerSingletonFactory 2) (jm_getAt_1 _smallIntegerSingletonFactory 2) (jm_getAt_1 _smallIntegerSingletonFactory 3)))
        (setf (slot-value this 'f_ORIENTATION) (GameConfiguration.jnew_4 "Orientation" (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 8)))
        (setf (slot-value this 'f_SENSOR_UPDATE_RATE) (GameConfiguration.jnew_4 "Sensor Update Rate" (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 3)))
        (setf (slot-value this 'f_VIBRATION) (GameConfiguration.jnew_4 "Vibration" (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 3)))
        (setf (slot-value this 'f_CHALLENGE_LEVEL) (GameConfiguration.jnew_4 "Global Challenge Level" (jm_getAt_1 _smallIntegerSingletonFactory 3) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_COLLIDE_DAMAGE) (GameConfiguration.jnew_4 "Collide Damage Challenge Level" (jm_getAt_1 _smallIntegerSingletonFactory 3) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_DURABILITY_CHALLENGE_LEVEL) (GameConfiguration.jnew_4 "Enemy Durability Challenge Level" (jm_getAt_1 _smallIntegerSingletonFactory 3) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_SPEED_CHALLENGE_LEVEL) (GameConfiguration.jnew_4 "Enemy Speed Challenge Level" (jm_getAt_1 _smallIntegerSingletonFactory 3) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_ATTACK_CHALLENGE_LEVEL) (GameConfiguration.jnew_4 "Enemy Attack Challenge Level" (jm_getAt_1 _smallIntegerSingletonFactory 3) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_CONTROL_LEVEL) (GameConfiguration.jnew_4 "Control Fidelity" (jm_getAt_1 _smallIntegerSingletonFactory 5) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_PLAYER_INPUT_WAIT) (GameConfiguration.jnew_4 "Input Wait" (jm_getAt_1 _smallIntegerSingletonFactory 5) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_SPEED) (GameConfiguration.jnew_4 "Game Speed (Device Specific)" (jm_getAt_1 _smallIntegerSingletonFactory 5) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_SOUND_VOLUME) (GameConfiguration.jnew_4 "Sound Volume" (jm_getAt_1 _smallIntegerSingletonFactory 6) (jm_getAt_1 _smallIntegerSingletonFactory 0) (jm_getAt_1 _smallIntegerSingletonFactory 10)))
        (setf (slot-value this 'f_MAX_GAME_OBJECTS) (GameConfiguration.jnew_4 "Max Game Objects" (jm_getAt_1 _smallIntegerSingletonFactory 20) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 50)))
        (setf (slot-value this 'f_MAX_LAYERS) (GameConfiguration.jnew_4 "Max Layers" (jm_getAt_1 _smallIntegerSingletonFactory 20) (jm_getAt_1 _smallIntegerSingletonFactory 1) (jm_getAt_1 _smallIntegerSingletonFactory 50)))))
    this))

    
(unless (fboundp 'jm_load_1) (defgeneric jm_load_1 (this p1)))
(defmethod jm_load_1 ((this GameConfigurationCentral) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_commonStrings _smallIntegerSingletonFactory _keyValuePersistance _list _hashtable _anyType _value)
  (declare (ignorable _commonStrings _smallIntegerSingletonFactory _keyValuePersistance _list _hashtable _anyType _value))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (handler-case (progn
            (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (setf _keyValuePersistance (GameConfigurationPersistanceSingleton.jm_getInstance_0))
            (jm_clear_0 _keyValuePersistance)
            (jm_loadAll_1 _keyValuePersistance _abeClientInformation)
            (setf _list (jm_getIds_0 _keyValuePersistance))
            (if (> (jm_size_0 _list) 0)
                (progn
                (setf _hashtable (jm_get_1 _keyValuePersistance 0))
                (setf _anyType (jm_getName_0 (slot-value this 'f_SCALE)))
                (setf _value (jm_get_1 _hashtable _anyType))
                (jm_setValue_1 (slot-value this 'f_SCALE) (jm_getAt_1 _smallIntegerSingletonFactory (jm_intValue_0 _value))))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "No Game Configuration To Load" this (slot-value _commonStrings 'f_LOAD)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_LOAD) _e))))))

    
(unless (fboundp 'jm_setGameControlFidelity_1) (defgeneric jm_setGameControlFidelity_1 (this p1)))
(defmethod jm_setGameControlFidelity_1 ((this GameConfigurationCentral) _gameControlFidelity)
  (declare (ignorable this _gameControlFidelity))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameControlFidelity) _gameControlFidelity))))

    
(unless (fboundp 'jm_getGameControlFidelity_0) (defgeneric jm_getGameControlFidelity_0 (this)))
(defmethod jm_getGameControlFidelity_0 ((this GameConfigurationCentral))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameControlFidelity)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameConfigurationCentral))
  (declare (ignorable this))
  (let (_stringBuffer _commonStrings)
  (declare (ignorable _stringBuffer _commonStrings))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonStrings (CommonSeps.jm_getInstance_0))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_SCALE)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_SCALE))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_ORIENTATION)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_ORIENTATION))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_SENSOR_UPDATE_RATE)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_SENSOR_UPDATE_RATE))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_VIBRATION)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_VIBRATION))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_CHALLENGE_LEVEL)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_CHALLENGE_LEVEL))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_COLLIDE_DAMAGE)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_COLLIDE_DAMAGE))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_DURABILITY_CHALLENGE_LEVEL)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_DURABILITY_CHALLENGE_LEVEL))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_SPEED_CHALLENGE_LEVEL)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_SPEED_CHALLENGE_LEVEL))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_ATTACK_CHALLENGE_LEVEL)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_ATTACK_CHALLENGE_LEVEL))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_CONTROL_LEVEL)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_CONTROL_LEVEL))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_SPEED)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_SPEED))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_MAX_GAME_OBJECTS)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_MAX_GAME_OBJECTS))))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_COMMA_SEP))
        (jm_append_1 _stringBuffer (jm_getName_0 (slot-value this 'f_MAX_LAYERS)))
        (jm_append_1 _stringBuffer (slot-value _commonStrings 'f_EQUALS))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 (slot-value this 'f_MAX_LAYERS))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



