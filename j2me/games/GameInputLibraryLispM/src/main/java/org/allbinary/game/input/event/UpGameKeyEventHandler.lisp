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
;;;; package org.allbinary.game.input.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass UpGameKeyEventHandler (UpGameKeyEventHandlerBase)
  ((f_playerInputIdFactory :initform nil)))

(defvar UpGameKeyEventHandler.jcell_instance :jnone)
(defun UpGameKeyEventHandler.jstatic_instance ()
  (when (eq UpGameKeyEventHandler.jcell_instance :jnone) (setf UpGameKeyEventHandler.jcell_instance (UpGameKeyEventHandler.jnew_0)))
  UpGameKeyEventHandler.jcell_instance)
(defun (setf UpGameKeyEventHandler.jstatic_instance) (value) (setf UpGameKeyEventHandler.jcell_instance value))

(defvar UpGameKeyEventHandler.jcell_instanceArray :jnone)
(defun UpGameKeyEventHandler.jstatic_instanceArray ()
  (when (eq UpGameKeyEventHandler.jcell_instanceArray :jnone) (setf UpGameKeyEventHandler.jcell_instanceArray (vector (UpGameKeyEventHandlerBase.jnew_0) (UpGameKeyEventHandlerBase.jnew_0) (UpGameKeyEventHandlerBase.jnew_0) (UpGameKeyEventHandlerBase.jnew_0) (UpGameKeyEventHandlerBase.jnew_0) (UpGameKeyEventHandlerBase.jnew_0))))
  UpGameKeyEventHandler.jcell_instanceArray)
(defun (setf UpGameKeyEventHandler.jstatic_instanceArray) (value) (setf UpGameKeyEventHandler.jcell_instanceArray value))

    
(defun UpGameKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (UpGameKeyEventHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceForDevice_1) (defgeneric jm_getInstanceForDevice_1 (this p1)))
(defmethod jm_getInstanceForDevice_1 ((this UpGameKeyEventHandler) _deviceId)
  (declare (ignorable this _deviceId))
  (let (_playerInputId)
  (declare (ignorable _playerInputId))
    (block jreturn
        (setf _playerInputId (jm_getPlayerForDevice_1 (slot-value this 'f_playerInputIdFactory) _deviceId))
        (return-from jreturn (aref (UpGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(unless (fboundp 'jm_getInstanceForPlayer_1) (defgeneric jm_getInstanceForPlayer_1 (this p1)))
(defmethod jm_getInstanceForPlayer_1 ((this UpGameKeyEventHandler) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (aref (UpGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(defun UpGameKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'UpGameKeyEventHandler)))
    (setf (slot-value this 'f_playerInputIdFactory) (LocalPlayerInputIdFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this UpGameKeyEventHandler))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (progn
            (setf _index (JR.i32 (- (length (UpGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeAllListeners_0 (aref (UpGameKeyEventHandler.jstatic_instanceArray) _index)))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this UpGameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (UpGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListenerSingleThreaded_1 (aref (UpGameKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this UpGameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (UpGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListener_1 (aref (UpGameKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))



