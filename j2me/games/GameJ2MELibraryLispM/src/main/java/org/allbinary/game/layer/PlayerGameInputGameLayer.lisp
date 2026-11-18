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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlayerGameInputGameLayer (AllBinaryGameLayer)
  ((f_playerGameInput :initform nil)))

    
(defun PlayerGameInputGameLayer.jnew_1 (_playerInputId)
  (declare (ignorable _playerInputId))
  (let ((this (make-instance 'PlayerGameInputGameLayer)))
    
  (let (_canvasStrings)
  (declare (ignorable _canvasStrings))
    (block jreturn
        nil
        (setf (slot-value this 'f_playerGameInput) (PlayerGameInput.jnew_3 (jm_getGameKeyEventList_0 this) (BasicArrayListD.jnew_0) _playerInputId))
        (setf _canvasStrings (CanvasStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) "Danger Danger Danger: Should Not Be Called Except For Testing Input" this (slot-value _canvasStrings 'f_PAINT))))
    this))

    
(unless (fboundp 'jm_getPlayerGameInput_0) (defgeneric jm_getPlayerGameInput_0 (this)))
(defmethod jm_getPlayerGameInput_0 ((this PlayerGameInputGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playerGameInput)))))

    
(unless (fboundp 'jm_initInputProcessors_0) (defgeneric jm_initInputProcessors_0 (this)))
(defmethod jm_initInputProcessors_0 ((this PlayerGameInputGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this PlayerGameInputGameLayer) _myManager)
  (declare (ignorable this _myManager))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PlayerGameInputGameLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



