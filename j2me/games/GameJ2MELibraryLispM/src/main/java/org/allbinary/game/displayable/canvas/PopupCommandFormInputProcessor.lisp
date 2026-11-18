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

(defclass PopupCommandFormInputProcessor (CommandFormInputProcessor)
  ())

    
(defun PopupCommandFormInputProcessor.jnew_5 (_gameKeyEventList _playerInputId _gameCanvas _form _popupMenuInputProcessor)
  (declare (ignorable _gameKeyEventList _playerInputId _gameCanvas _form _popupMenuInputProcessor))
  (let ((this (make-instance 'PopupCommandFormInputProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this PopupCommandFormInputProcessor) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this _key)))))

    
(unless (fboundp 'jm_processMotionInput_1) (defgeneric jm_processMotionInput_1 (this p1)))
(defmethod jm_processMotionInput_1 ((this PopupCommandFormInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn
        (call-next-method this _motionGestureEvent))))



