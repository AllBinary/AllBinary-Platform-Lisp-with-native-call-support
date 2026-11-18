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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonInput (Input)
  ((f_logUtil :initform nil)
   (f_gameKeyEventFactory :initform nil)
   (f_TOUCH_BUTTON_SOURCE_ID :initform 0)
   (f_gameKeyEvent :initform nil)))

    
(defun TouchButtonInput.jnew_2 (_id _name)
  (declare (ignorable _id _name))
  (let ((this (make-instance 'TouchButtonInput)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameKeyEventFactory) (GameKeyEventFactory.jm_getInstance_0))
    (setf (slot-value this 'f_TOUCH_BUTTON_SOURCE_ID) (slot-value (slot-value this 'f_gameKeyEventFactory) 'f_TOUCH_BUTTON_SOURCE_ID))
    (setf (slot-value this 'f_gameKeyEvent) (GameKeyEvent.jstatic_NONE))
  (let (_inputFactory)
  (declare (ignorable _inputFactory))
    (block jreturn
        nil
        (setf _inputFactory (InputFactory.jm_getInstance_0))
        (jm_add_2 _inputFactory (jm_getId_0 this) this)))
    this))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this TouchButtonInput) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let (_gameKey _commonStrings)
  (declare (ignorable _gameKey _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _gameKey (jm_getInstance_1 _inputToGameKeyMapping (jm_getId_0 this)))
            (setf (slot-value this 'f_gameKeyEvent) (jm_getInstanceForInput_2 (slot-value this 'f_gameKeyEventFactory) this _gameKey)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this TouchButtonInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_TOUCH_BUTTON_SOURCE_ID)))))

    
(unless (fboundp 'jm_getGameKeyEvent_0) (defgeneric jm_getGameKeyEvent_0 (this)))
(defmethod jm_getGameKeyEvent_0 ((this TouchButtonInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKeyEvent)))))



