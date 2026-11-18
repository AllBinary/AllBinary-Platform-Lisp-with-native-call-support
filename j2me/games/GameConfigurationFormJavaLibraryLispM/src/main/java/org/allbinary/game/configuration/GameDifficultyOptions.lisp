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

(defclass GameDifficultyOptions (CommandForm)
  ((f_meUtil :initform nil)
   (f_list :initform nil)))

    
(defun GameDifficultyOptions.jnew_5 (_commandListener _title _list _backgrounBasicColor _foregroundBasicColor)
  (declare (ignorable _commandListener _title _list _backgrounBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'GameDifficultyOptions)))
    (setf (slot-value this 'f_meUtil) (MIDPUtil.jm_getInstance_0))
    
  (let (_gameDifficultyFactory)
  (declare (ignorable _gameDifficultyFactory))
    (block jreturn
        nil
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_list) _list)
        (jm_update_0 this)
        (jm_initCommands_1 this _commandListener)
        (setf _gameDifficultyFactory (GameDifficultyFactory.jm_getInstance_0))
        (jm_setSelectedId_1 this (jm_getLevel_0 _gameDifficultyFactory))))
    this))

    
(unless (fboundp 'jm_open_0) (defgeneric jm_open_0 (this)))
(defmethod jm_open_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_save_0 this))))

    
(unless (fboundp 'jm_save_0) (defgeneric jm_save_0 (this)))
(defmethod jm_save_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let (_gameDifficultyFactory)
  (declare (ignorable _gameDifficultyFactory))
    (block jreturn
        (setf _gameDifficultyFactory (GameDifficultyFactory.jm_getInstance_0))
        (jm_setLevel_1 _gameDifficultyFactory (jm_getSelectedId_0 this)))))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this GameDifficultyOptions) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let (_gameCommandsFactory)
  (declare (ignorable _gameCommandsFactory))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (jm_removeAllCommands_0 this)
        (jm_addCommand_1 this (slot-value _gameCommandsFactory 'f_CLOSE_AND_SHOW_GAME_CANVAS))
        (jm_setCommandListener_1 this _cmdListener))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_deleteAll_0 this)
        (jm_add_3 this (slot-value this 'f_list) "Difficulty" (Choice.jstatic_EXCLUSIVE))
        (call-next-method this))))

    
(unless (fboundp 'jm_add_3) (defgeneric jm_add_3 (this p1 p2 p3)))
(defmethod jm_add_3 ((this GameDifficultyOptions) _list _name _option)
  (declare (ignorable this _list _name _option))
  (let (_choiceGroup)
  (declare (ignorable _choiceGroup))
    (block jreturn
        (setf _choiceGroup (jm_getChoiceGroup_3 this _list _name _option))
        (if (> (jm_size_0 _list) 0)
            (progn
            (jm_setSelectedIndex_2 _choiceGroup 0 t)))
        (jm_appendItem_2 (slot-value this 'f_meUtil) this _choiceGroup))))

    
(unless (fboundp 'jm_getChoiceGroup_3) (defgeneric jm_getChoiceGroup_3 (this p1 p2 p3)))
(defmethod jm_getChoiceGroup_3 ((this GameDifficultyOptions) _list _name _option)
  (declare (ignorable this _list _name _option))
  (let (_METHOD_NAME _NAME _choiceGroup _size _anyType _index)
  (declare (ignorable _METHOD_NAME _NAME _choiceGroup _size _anyType _index))
    (block jreturn
        (setf _METHOD_NAME "addChoiceGroup")
        (setf _NAME "Adding Choice: ")
        (setf _choiceGroup (ChoiceGroup.jnew_4 _name _option (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)) (NullImage.jstatic_NULL_IMAGE_ARRAY)))
        (setf _size (jm_size_0 _list))
        (setf _anyType nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _anyType (aref (slot-value _list 'f_objectArray) _index))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _NAME) (JR.toString _anyType))) this _METHOD_NAME)
            (jm_append_2 _choiceGroup (JR.toString _anyType) (NullImage.jstatic_NULL_IMAGE)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _choiceGroup))))

    
(unless (fboundp 'jm_setSelectedId_1) (defgeneric jm_setSelectedId_1 (this p1)))
(defmethod jm_setSelectedId_1 ((this GameDifficultyOptions) _id)
  (declare (ignorable this _id))
  (let (_choiceGroup)
  (declare (ignorable _choiceGroup))
    (block jreturn
        (setf _choiceGroup (jm_get_1 this 0))
        (jm_setSelectedIndex_2 _choiceGroup _id t))))

    
(unless (fboundp 'jm_getSelectedId_0) (defgeneric jm_getSelectedId_0 (this)))
(defmethod jm_getSelectedId_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let (_choiceGroup)
  (declare (ignorable _choiceGroup))
    (block jreturn
        (setf _choiceGroup (jm_get_1 this 0))
        (return-from jreturn (jm_getSelectedIndex_0 _choiceGroup)))))

    
(unless (fboundp 'jm_getSelectedText_0) (defgeneric jm_getSelectedText_0 (this)))
(defmethod jm_getSelectedText_0 ((this GameDifficultyOptions))
  (declare (ignorable this))
  (let (_choiceGroup _value)
  (declare (ignorable _choiceGroup _value))
    (block jreturn
        (setf _choiceGroup (jm_get_1 this 0))
        (setf _value (jm_intValue_0 (JR.str (jm_getString_1 _choiceGroup (jm_getSelectedIndex_0 _choiceGroup)))))
        (return-from jreturn _value))))



