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

(defclass DemoCanvasBasicStartInputProcessor (BasicMenuInputProcessor)
  ())

    
(defun DemoCanvasBasicStartInputProcessor.jnew_2 (_gameKeyEventList _gameCanvas)
  (declare (ignorable _gameKeyEventList _gameCanvas))
  (let ((this (make-instance 'DemoCanvasBasicStartInputProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processInputList_0) (defgeneric jm_processInputList_0 (this)))
(defmethod jm_processInputList_0 ((this DemoCanvasBasicStartInputProcessor))
  (declare (ignorable this))
  (let (_list _size _gameKeyEvent _index)
  (declare (ignorable _list _size _gameKeyEvent _index))
    (block jreturn
        (setf _list (jm_getGameKeyEventList_0 this))
        (setf _size (jm_size_0 _list))
        (setf _gameKeyEvent nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameKeyEvent (aref (slot-value _list 'f_objectArray) _index))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Start GameKey: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _gameKeyEvent))) this (slot-value (GameInputStrings.jm_getInstance_0) 'f_PROCESS_INPUT)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_commandAction_2 (jm_getCustomCommandListener_0 (jm_getCanvas_0 this)) (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_START_COMMAND) (NullCanvas.jstatic_NULL_CANVAS))
        (return-from jreturn _size))))



