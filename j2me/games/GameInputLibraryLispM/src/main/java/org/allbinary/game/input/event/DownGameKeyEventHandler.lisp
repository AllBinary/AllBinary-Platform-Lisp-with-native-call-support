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

(defclass DownGameKeyEventHandler (DownGameKeyEventHandlerBase)
  ((f_playerInputIdFactory :initform nil)))

(defvar DownGameKeyEventHandler.jcell_instance :jnone)
(defun DownGameKeyEventHandler.jstatic_instance ()
  (when (eq DownGameKeyEventHandler.jcell_instance :jnone) (setf DownGameKeyEventHandler.jcell_instance (DownGameKeyEventHandler.jnew_0)))
  DownGameKeyEventHandler.jcell_instance)
(defun (setf DownGameKeyEventHandler.jstatic_instance) (value) (setf DownGameKeyEventHandler.jcell_instance value))

(defvar DownGameKeyEventHandler.jcell_instanceArray :jnone)
(defun DownGameKeyEventHandler.jstatic_instanceArray ()
  (when (eq DownGameKeyEventHandler.jcell_instanceArray :jnone) (setf DownGameKeyEventHandler.jcell_instanceArray (vector (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0) (DownGameKeyEventHandlerBase.jnew_0))))
  DownGameKeyEventHandler.jcell_instanceArray)
(defun (setf DownGameKeyEventHandler.jstatic_instanceArray) (value) (setf DownGameKeyEventHandler.jcell_instanceArray value))

    
(defun DownGameKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DownGameKeyEventHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceForDevice_1) (defgeneric jm_getInstanceForDevice_1 (this p1)))
(defmethod jm_getInstanceForDevice_1 ((this DownGameKeyEventHandler) _deviceId)
  (declare (ignorable this _deviceId))
  (let (_playerInputId)
  (declare (ignorable _playerInputId))
    (block jreturn
        (setf _playerInputId (jm_getPlayerForDevice_1 (slot-value this 'f_playerInputIdFactory) _deviceId))
        (return-from jreturn (aref (DownGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(unless (fboundp 'jm_getInstanceForPlayer_1) (defgeneric jm_getInstanceForPlayer_1 (this p1)))
(defmethod jm_getInstanceForPlayer_1 ((this DownGameKeyEventHandler) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (aref (DownGameKeyEventHandler.jstatic_instanceArray) _playerInputId)))))

    
(defun DownGameKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'DownGameKeyEventHandler)))
    (setf (slot-value this 'f_playerInputIdFactory) (LocalPlayerInputIdFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this DownGameKeyEventHandler))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this)
        (progn
            (setf _index (JR.i32 (- (length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeAllListeners_0 (aref (DownGameKeyEventHandler.jstatic_instanceArray) _index)))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListenerSingleThreaded_1) (defgeneric jm_removeListenerSingleThreaded_1 (this p1)))
(defmethod jm_removeListenerSingleThreaded_1 ((this DownGameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListenerSingleThreaded_1 (aref (DownGameKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this DownGameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (call-next-method this _eventListenerInterface)
        (progn
            (setf _index (JR.i32 (- (length (DownGameKeyEventHandler.jstatic_instanceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_removeListener_1 (aref (DownGameKeyEventHandler.jstatic_instanceArray) _index) _eventListenerInterface))
                (setf _index (JR.i32 (- _index 1)))))))))



