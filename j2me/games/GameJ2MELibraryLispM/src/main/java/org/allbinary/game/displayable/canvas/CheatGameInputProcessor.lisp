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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CheatGameInputProcessor (PlayerGameInput)
  ((f_PROCESS_GAME :initform nil)
   (f_gameCanvas :initform nil)
   (f_gameKeyFactory :initform nil)))

(defvar CheatGameInputProcessor.jcell_inputProcessor :jnone)
(defun CheatGameInputProcessor.jstatic_inputProcessor ()
  (when (eq CheatGameInputProcessor.jcell_inputProcessor :jnone) (setf CheatGameInputProcessor.jcell_inputProcessor (SpecialGameInputFactory.jstatic_NO_SPECIAL_GAME_INPUT)))
  CheatGameInputProcessor.jcell_inputProcessor)
(defun (setf CheatGameInputProcessor.jstatic_inputProcessor) (value) (setf CheatGameInputProcessor.jcell_inputProcessor value))

    
(defun CheatGameInputProcessor.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'CheatGameInputProcessor)))
    (setf (slot-value this 'f_PROCESS_GAME) "processGame")
    
    (setf (slot-value this 'f_gameKeyFactory) (GameKeyFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this CheatGameInputProcessor))
  (declare (ignorable this))
  (let (_gameLayerManager _list _size _anyType _key _index)
  (declare (ignorable _gameLayerManager _list _size _anyType _key _index))
    (block jreturn
        (handler-case (progn
            (setf _gameLayerManager (jm_getLayerManager_0 (slot-value this 'f_gameCanvas)))
            (setf _list (jm_getGameKeyEventList_0 this))
            (setf _size (jm_size_0 _list))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _anyType (aref (slot-value _list 'f_objectArray) _index))
                (setf _key (GameKeyEventUtil.jm_getKey_1 _anyType))
                (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEVEL_DOWN)))
                    (progn
                    (jm_strafeLeft_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEVEL_UP)))
                    (progn
                    (jm_strafeRight_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))))
                (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEFT)))
                    (progn
                    (jm_left_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_RIGHT)))
                    (progn
                    (jm_right_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_UP)))
                    (progn
                    (jm_up_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_DOWN)))
                    (progn
                    (jm_down_0 (CheatGameInputProcessor.jstatic_inputProcessor))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM1)))
                    (progn
                    (jm_special1_2 (CheatGameInputProcessor.jstatic_inputProcessor) _gameLayerManager (GameKeyEvent.jstatic_NONE))
                    (return-from jbreak))
                    (if (= _key (jm_getId_0 (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM3)))
                    (progn
                    (jm_special2_2 (CheatGameInputProcessor.jstatic_inputProcessor) _gameLayerManager (GameKeyEvent.jstatic_NONE))
                    (return-from jbreak)))))))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (jm_clear_0 _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE) _e))))))



