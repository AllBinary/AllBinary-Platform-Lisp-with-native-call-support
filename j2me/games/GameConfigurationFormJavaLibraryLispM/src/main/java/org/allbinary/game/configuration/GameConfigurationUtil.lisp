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

(defclass GameConfigurationUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_GAUGE_UPDATE :initform nil)
   (f_FROM :initform nil)
   (f_TO :initform nil)
   (f_COMPETITION_VALUE :initform 0)))

(defvar GameConfigurationUtil.jcell_instance :jnone)
(defun GameConfigurationUtil.jstatic_instance ()
  (when (eq GameConfigurationUtil.jcell_instance :jnone) (setf GameConfigurationUtil.jcell_instance (GameConfigurationUtil.jnew_0)))
  GameConfigurationUtil.jcell_instance)
(defun (setf GameConfigurationUtil.jstatic_instance) (value) (setf GameConfigurationUtil.jcell_instance value))

(defun GameConfigurationUtil.jnew_0 ()
  (let ((this (make-instance 'GameConfigurationUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_GAUGE_UPDATE) "Gauge Update: ")
    (setf (slot-value this 'f_FROM) " from: ")
    (setf (slot-value this 'f_TO) " to: ")
    (setf (slot-value this 'f_COMPETITION_VALUE) 1)
    this))

    
(defun GameConfigurationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameConfigurationUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_change_2) (defgeneric jm_change_2 (this p1 p2)))
(defmethod jm_change_2 ((this GameConfigurationUtil) _gameOptionsForm _gauge)
  (declare (ignorable this _gameOptionsForm _gauge))
  (let (_gameConfigurationSingleton _gameConfiguration)
  (declare (ignorable _gameConfigurationSingleton _gameConfiguration))
    (block jreturn
        (jm_update_1 this _gauge)
        (setf _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (setf _gameConfiguration (jm_getInstanceByName_1 _gameConfigurationSingleton (jm_getLabel_0 _gauge)))
        (jm_updateChallange_2 this _gameOptionsForm _gameConfiguration))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this GameConfigurationUtil) _gauge)
  (declare (ignorable this _gauge))
  (let (_gameConfigurationSingleton _gameConfiguration _smallIntegerSingletonFactory _value _stringBuffer)
  (declare (ignorable _gameConfigurationSingleton _gameConfiguration _smallIntegerSingletonFactory _value _stringBuffer))
    (block jreturn
        (setf _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (setf _gameConfiguration (jm_getInstanceByName_1 _gameConfigurationSingleton (jm_getLabel_0 _gauge)))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf _value (jm_getAt_1 _smallIntegerSingletonFactory (JR.i32 (+ (jm_getValue_0 _gauge) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration))))))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value this 'f_GAUGE_UPDATE))
        (jm_append_1 _stringBuffer (jm_getName_0 _gameConfiguration))
        (jm_append_1 _stringBuffer (slot-value this 'f_FROM))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getValue_0 _gameConfiguration)))
        (jm_append_1 _stringBuffer (slot-value this 'f_TO))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 _value))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
        (jm_setValue_1 _gameConfiguration _value))))

    
(unless (fboundp 'jm_setDefault_1) (defgeneric jm_setDefault_1 (this p1)))
(defmethod jm_setDefault_1 ((this GameConfigurationUtil) _gauge)
  (declare (ignorable this _gauge))
  (let (_gameConfigurationSingleton _gameConfiguration _stringBuffer)
  (declare (ignorable _gameConfigurationSingleton _gameConfiguration _stringBuffer))
    (block jreturn
        (setf _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (setf _gameConfiguration (jm_getInstanceByName_1 _gameConfigurationSingleton (jm_getLabel_0 _gauge)))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Gauge Default: ")
        (jm_append_1 _stringBuffer (jm_getName_0 _gameConfiguration))
        (jm_append_1 _stringBuffer (slot-value this 'f_TO))
        (jm_appendint_1 _stringBuffer (jm_intValue_0 (jm_getDefaultValue_0 _gameConfiguration)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "setDefault")
        (jm_setValue_1 _gauge (JR.i32 (- (jm_intValue_0 (jm_getDefaultValue_0 _gameConfiguration)) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration)))))
        (jm_setValue_1 _gameConfiguration (jm_getDefaultValue_0 _gameConfiguration)))))

    
(unless (fboundp 'jm_updateChallange_2) (defgeneric jm_updateChallange_2 (this p1 p2)))
(defmethod jm_updateChallange_2 ((this GameConfigurationUtil) _gameOptionsForm _gameConfiguration)
  (declare (ignorable this _gameOptionsForm _gameConfiguration))
  (let (_gameConfigurationSingleton _gameConfigurationCentral _size _item _gauge _name _nextGameConfiguration _index)
  (declare (ignorable _gameConfigurationSingleton _gameConfigurationCentral _size _item _gauge _name _nextGameConfiguration _index))
    (block jreturn
        (setf _gameConfigurationSingleton (GameConfigurationSingleton.jm_getInstance_0))
        (setf _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (if (eq _gameConfiguration (slot-value _gameConfigurationCentral 'f_CHALLENGE_LEVEL))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "updateChallange")
            (jm_setValue_1 (slot-value _gameConfigurationCentral 'f_COLLIDE_DAMAGE) (jm_getValue_0 _gameConfiguration))
            (jm_setValue_1 (slot-value _gameConfigurationCentral 'f_ATTACK_CHALLENGE_LEVEL) (jm_getValue_0 _gameConfiguration))
            (jm_setValue_1 (slot-value _gameConfigurationCentral 'f_DURABILITY_CHALLENGE_LEVEL) (jm_getValue_0 _gameConfiguration))
            (jm_setValue_1 (slot-value _gameConfigurationCentral 'f_SPEED_CHALLENGE_LEVEL) (jm_getValue_0 _gameConfiguration))
            (setf _size (jm_size_0 _gameOptionsForm))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _item (jm_get_1 _gameOptionsForm _index))
                (if (typep _item 'GameConfigurationGauge)
                    (progn
                    (setf _gauge _item)
                    (setf _name (jm_getLabel_0 _item))
                    (setf _nextGameConfiguration (jm_getInstanceByName_1 _gameConfigurationSingleton _name))
                    (if (eq _nextGameConfiguration (slot-value _gameConfigurationCentral 'f_COLLIDE_DAMAGE))
                        (progn
                        (jm_setValue_1 _gauge (JR.i32 (- (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_COLLIDE_DAMAGE))) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration))))))
                        (if (eq _nextGameConfiguration (slot-value _gameConfigurationCentral 'f_DURABILITY_CHALLENGE_LEVEL))
                        (progn
                        (jm_setValue_1 _gauge (JR.i32 (- (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_DURABILITY_CHALLENGE_LEVEL))) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration))))))
                        (if (eq _nextGameConfiguration (slot-value _gameConfigurationCentral 'f_ATTACK_CHALLENGE_LEVEL))
                        (progn
                        (jm_setValue_1 _gauge (JR.i32 (- (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_ATTACK_CHALLENGE_LEVEL))) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration))))))
                        (if (eq _nextGameConfiguration (slot-value _gameConfigurationCentral 'f_SPEED_CHALLENGE_LEVEL))
                        (progn
                        (jm_setValue_1 _gauge (JR.i32 (- (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_SPEED_CHALLENGE_LEVEL))) (jm_intValue_0 (jm_getMinValue_0 _gameConfiguration)))))))))))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))

    
(unless (fboundp 'jm_updateCompetitionValue_0) (defgeneric jm_updateCompetitionValue_0 (this)))
(defmethod jm_updateCompetitionValue_0 ((this GameConfigurationUtil))
  (declare (ignorable this))
  (let (_gameConfigurationCentral)
  (declare (ignorable _gameConfigurationCentral))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this "updateCompetitionValue")
        (setf _gameConfigurationCentral (GameConfigurationCentral.jm_getInstance_0))
        (setf (slot-value this 'f_COMPETITION_VALUE) (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_COLLIDE_DAMAGE))) (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_ATTACK_CHALLENGE_LEVEL))))) (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_DURABILITY_CHALLENGE_LEVEL))))) (jm_intValue_0 (jm_getValue_0 (slot-value _gameConfigurationCentral 'f_SPEED_CHALLENGE_LEVEL))))))
        (setf (slot-value this 'f_COMPETITION_VALUE) (ash (slot-value this 'f_COMPETITION_VALUE) (- (logand 2 31)))))))

    
(unless (fboundp 'jm_getCompetitionValue_0) (defgeneric jm_getCompetitionValue_0 (this)))
(defmethod jm_getCompetitionValue_0 ((this GameConfigurationUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_COMPETITION_VALUE)))))



