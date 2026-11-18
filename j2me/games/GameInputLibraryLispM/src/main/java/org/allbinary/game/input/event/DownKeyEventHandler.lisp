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

(defclass DownKeyEventHandler (DownKeyEventHandlerBase)
  ((f_playerInputIdFactory :initform nil)))

(defvar DownKeyEventHandler.jcell_instance :jnone)
(defun DownKeyEventHandler.jstatic_instance ()
  (when (eq DownKeyEventHandler.jcell_instance :jnone) (setf DownKeyEventHandler.jcell_instance (DownKeyEventHandler.jnew_0)))
  DownKeyEventHandler.jcell_instance)
(defun (setf DownKeyEventHandler.jstatic_instance) (value) (setf DownKeyEventHandler.jcell_instance value))

(defvar DownKeyEventHandler.jcell_instanceArray :jnone)
(defun DownKeyEventHandler.jstatic_instanceArray ()
  (when (eq DownKeyEventHandler.jcell_instanceArray :jnone) (setf DownKeyEventHandler.jcell_instanceArray (vector (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0) (DownKeyEventHandlerBase.jnew_0))))
  DownKeyEventHandler.jcell_instanceArray)
(defun (setf DownKeyEventHandler.jstatic_instanceArray) (value) (setf DownKeyEventHandler.jcell_instanceArray value))

    
(defun DownKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DownKeyEventHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceForDevice_1) (defgeneric jm_getInstanceForDevice_1 (this p1)))
(defmethod jm_getInstanceForDevice_1 ((this DownKeyEventHandler) _deviceId)
  (declare (ignorable this _deviceId))
  (let (_playerInputId)
  (declare (ignorable _playerInputId))
    (block jreturn
        (setf _playerInputId (jm_getPlayerForDevice_1 (slot-value this 'f_playerInputIdFactory) _deviceId))
        (return-from jreturn (aref (DownKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(unless (fboundp 'jm_getInstanceForPlayer_1) (defgeneric jm_getInstanceForPlayer_1 (this p1)))
(defmethod jm_getInstanceForPlayer_1 ((this DownKeyEventHandler) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (aref (DownKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(defun DownKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'DownKeyEventHandler)))
    (setf (slot-value this 'f_playerInputIdFactory) (LocalPlayerInputIdFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this DownKeyEventHandler))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (progn
            (setf _index (JR.i32 (- (length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeAllListeners_0 (aref (DownKeyEventHandler.jstatic_instanceArray) _index)))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this DownKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListenerSingleThreaded_1 (aref (DownKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this DownKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (DownKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListener_1 (aref (DownKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))



