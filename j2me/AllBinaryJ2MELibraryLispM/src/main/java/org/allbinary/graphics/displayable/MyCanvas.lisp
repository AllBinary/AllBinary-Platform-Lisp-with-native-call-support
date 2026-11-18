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
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MyCanvas (Canvas)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_canvasStrings :initform nil)
   (f_stringUtil :initform nil)
   (f_displayInfo :initform nil)
   (f_name :initform nil)
   (f_childNameList :initform nil)
   (f_commandStack :initform nil)
   (f_commandListener :initform nil)
   (f_paused :initform nil)
   (f_touchME :initform nil)))

    
(defun MyCanvas.jnew_2 (_name _childNameList)
  (declare (ignorable _name _childNameList))
  (let ((this (make-instance 'MyCanvas)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_canvasStrings) (CanvasStrings.jm_getInstance_0))
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    
    
    
    (setf (slot-value this 'f_commandListener) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
    
    (setf (slot-value this 'f_touchME) (TouchJ2ME.jnew_0))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (jm_update_2 (slot-value this 'f_displayInfo) this (slot-value (slot-value this 'f_canvasStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_childNameList) _childNameList)
        (setf (slot-value this 'f_commandStack) (jm_createStack_0 (StdUtil.jm_getInstance_0)))))
    this))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setFullScreenMode_1) (defgeneric jm_setFullScreenMode_1 (this p1)))
(defmethod jm_setFullScreenMode_1 ((this MyCanvas) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn
        (call-next-method this _mode)
        (jm_update_2 (slot-value this 'f_displayInfo) this (slot-value (slot-value this 'f_canvasStrings) 'f_SET_FULL_SCREEN_MODE)))))

    
(unless (fboundp 'jm_sizeChanged_2) (defgeneric jm_sizeChanged_2 (this p1 p2)))
(defmethod jm_sizeChanged_2 ((this MyCanvas) _w _h)
  (declare (ignorable this _w _h))
  (let ()
    (block jreturn
        (jm_update_2 (slot-value this 'f_displayInfo) this (slot-value (slot-value this 'f_canvasStrings) 'f_SIZE_CHANGED)))))

    
(unless (fboundp 'jm_getCommandStack_0) (defgeneric jm_getCommandStack_0 (this)))
(defmethod jm_getCommandStack_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_commandStack)))))

    
(unless (fboundp 'jm_isCommand_1) (defgeneric jm_isCommand_1 (this p1)))
(defmethod jm_isCommand_1 ((this MyCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_commandStack) _command)))))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this MyCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_commandStack) _command))
            (progn
            (jm_push_1 (slot-value this 'f_commandStack) _command)
            (call-next-method this _command))))))

    
(unless (fboundp 'jm_removeCommand_1) (defgeneric jm_removeCommand_1 (this p1)))
(defmethod jm_removeCommand_1 ((this MyCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn
        (jm_removeElement_1 (slot-value this 'f_commandStack) _command)
        (call-next-method this _command))))

    
(unless (fboundp 'jm_removeAllCommands_0) (defgeneric jm_removeAllCommands_0 (this)))
(defmethod jm_removeAllCommands_0 ((this MyCanvas))
  (declare (ignorable this))
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_commandStack)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_removeCommand_1 this (jm_pop_0 (slot-value this 'f_commandStack))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_setCommandListener_1) (defgeneric jm_setCommandListener_1 (this p1)))
(defmethod jm_setCommandListener_1 ((this MyCanvas) _l)
  (declare (ignorable this _l))
  (let ()
    (block jreturn
        (call-next-method this _l)
        (setf (slot-value this 'f_commandListener) _l))))

    
(unless (fboundp 'jm_getCustomCommandListener_0) (defgeneric jm_getCustomCommandListener_0 (this)))
(defmethod jm_getCustomCommandListener_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_commandListener)))))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_paused)))))

    
(unless (fboundp 'jm_removePauseCommand_0) (defgeneric jm_removePauseCommand_0 (this)))
(defmethod jm_removePauseCommand_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeCommand_1 this (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_PAUSE_COMMAND)))))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_canvasStrings) 'f_PAUSE))
        (jm_removePauseCommand_0 this)
        (jm_addCommand_1 this (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_RESUME_COMMAND))
        (jm_setPaused_1 this t))))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_canvasStrings) 'f_UN_PAUSE))
        (jm_removeCommand_1 this (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_RESUME_COMMAND))
        (jm_addCommand_1 this (slot-value (MyCommandsFactory.jm_getInstance_0) 'f_PAUSE_COMMAND))
        (jm_setPaused_1 this nil))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_process_0 (slot-value this 'f_displayInfo)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this MyCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_draw_1) (defgeneric jm_draw_1 (this p1)))
(defmethod jm_draw_1 ((this MyCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_hasChild_1) (defgeneric jm_hasChild_1 (this p1)))
(defmethod jm_hasChild_1 ((this MyCanvas) _displayable)
  (declare (ignorable this _displayable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_childNameList) (slot-value _displayable 'f_name))))))

    
(unless (fboundp 'jm_destroy_0) (defgeneric jm_destroy_0 (this)))
(defmethod jm_destroy_0 ((this MyCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) "Destroyed MyCanvas" this "destroy"))))

    
(unless (fboundp 'jm_setPaused_1) (defgeneric jm_setPaused_1 (this p1)))
(defmethod jm_setPaused_1 ((this MyCanvas) _isPaused)
  (declare (ignorable this _isPaused))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_paused) _isPaused))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this MyCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_keyRepeatedByDevice_2) (defgeneric jm_keyRepeatedByDevice_2 (this p1 p2)))
(defmethod jm_keyRepeatedByDevice_2 ((this MyCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this MyCanvas) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pointerDragged_2) (defgeneric jm_pointerDragged_2 (this p1 p2)))
(defmethod jm_pointerDragged_2 ((this MyCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (jm_pointerDragged_2 (slot-value this 'f_touchME) _x _y))))

    
(unless (fboundp 'jm_pointerPressed_2) (defgeneric jm_pointerPressed_2 (this p1 p2)))
(defmethod jm_pointerPressed_2 ((this MyCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (jm_pointerPressed_2 (slot-value this 'f_touchME) _x _y))))

    
(unless (fboundp 'jm_pointerReleased_2) (defgeneric jm_pointerReleased_2 (this p1 p2)))
(defmethod jm_pointerReleased_2 ((this MyCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (jm_pointerReleased_2 (slot-value this 'f_touchME) _x _y))))

    
(unless (fboundp 'jm_nextSong_3) (defgeneric jm_nextSong_3 (this p1 p2 p3)))
(defmethod jm_nextSong_3 ((this MyCanvas) _nextSongSound _leftVolume _rightVolume)
  (declare (ignorable this _nextSongSound _leftVolume _rightVolume))
  (let ()
    (block jreturn nil)))



