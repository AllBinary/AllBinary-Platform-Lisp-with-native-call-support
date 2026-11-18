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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LocalPlayerInputIdFactory (JObject)
  ((f_logUtil :initform nil)
   (f_MAX_NUMBER_OF_PLAYERS :initform 0)
   (f_MAX_FAST_DEVICEID :initform 0)
   (f_deviceIdToplayerId :initform nil)
   (f_playerIdToDeviceId :initform nil)
   (f_playersInPlay :initform nil)
   (f_totalDevicesMapped :initform 0)))

(defvar LocalPlayerInputIdFactory.jcell_instance :jnone)
(defun LocalPlayerInputIdFactory.jstatic_instance ()
  (when (eq LocalPlayerInputIdFactory.jcell_instance :jnone) (setf LocalPlayerInputIdFactory.jcell_instance (LocalPlayerInputIdFactory.jnew_0)))
  LocalPlayerInputIdFactory.jcell_instance)
(defun (setf LocalPlayerInputIdFactory.jstatic_instance) (value) (setf LocalPlayerInputIdFactory.jcell_instance value))

    
(defun LocalPlayerInputIdFactory.jnew_0 ()
  (let ((this (make-instance 'LocalPlayerInputIdFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_MAX_NUMBER_OF_PLAYERS) 6)
    (setf (slot-value this 'f_MAX_FAST_DEVICEID) 65)
    (setf (slot-value this 'f_deviceIdToplayerId) (JR.newArray 0 (slot-value this 'f_MAX_FAST_DEVICEID)))
    (setf (slot-value this 'f_playerIdToDeviceId) (JR.newArray 0 (slot-value this 'f_MAX_NUMBER_OF_PLAYERS)))
    (setf (slot-value this 'f_playersInPlay) (JR.newArray nil (slot-value this 'f_MAX_NUMBER_OF_PLAYERS)))
    (setf (slot-value this 'f_totalDevicesMapped) 0)
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_deviceIdToplayerId)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_deviceIdToplayerId) _index) (JR.i32 (- 1))))
                (setf _index (JR.i32 (- _index 1))))))))
    this))

    
(defun LocalPlayerInputIdFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LocalPlayerInputIdFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getDeviceId_1) (defgeneric jm_getDeviceId_1 (this p1)))
(defmethod jm_getDeviceId_1 ((this LocalPlayerInputIdFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_playerIdToDeviceId) _playerInputId)))))

    
(unless (fboundp 'jm_getPlayerForDevice_1) (defgeneric jm_getPlayerForDevice_1 (this p1)))
(defmethod jm_getPlayerForDevice_1 ((this LocalPlayerInputIdFactory) _deviceId)
  (declare (ignorable this _deviceId))
  (let (_index _playerInputId)
  (declare (ignorable _index _playerInputId))
    (block jreturn
        (setf _index 0)
        (if (< _deviceId (slot-value this 'f_MAX_FAST_DEVICEID))
            (progn
            (setf _playerInputId (aref (slot-value this 'f_deviceIdToplayerId) _deviceId))
            (if (/= _playerInputId (JR.i32 (- 1)))
                (progn
                (return-from jreturn _playerInputId))))
            (progn
            (progn
                (setf _index (JR.i32 (- (slot-value this 'f_totalDevicesMapped) 1)))
                (block jbreak (loop while (>= _index 0) do
                    (block jcontinue
                (if (= (aref (slot-value this 'f_playerIdToDeviceId) _index) _deviceId)
                    (progn
                    (return-from jreturn _index))))
                    (setf _index (JR.i32 (- _index 1))))))))
        (setf _index (slot-value this 'f_totalDevicesMapped))
        (if (< _deviceId (slot-value this 'f_MAX_FAST_DEVICEID))
            (progn
            (setf (aref (slot-value this 'f_deviceIdToplayerId) _deviceId) _index))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Added DeviceId: ") _deviceId) " beyond fast Id list")) this "getPlayerForDevice")))
        (setf (aref (slot-value this 'f_playerIdToDeviceId) _index) _deviceId)
        (jm_addPlayer_1 (AnalogLocationInputFactory.jm_getInstance_0) (slot-value this 'f_totalDevicesMapped))
        (setf (slot-value this 'f_totalDevicesMapped) (JR.i32 (+ (slot-value this 'f_totalDevicesMapped) 1)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Added DeviceId: ") _deviceId) " at: ") _index) " Total: ") (slot-value this 'f_totalDevicesMapped))) this "getPlayerForDevice")
        (return-from jreturn _index))))

    
(unless (fboundp 'jm_getTotalDevicesInPlay_0) (defgeneric jm_getTotalDevicesInPlay_0 (this)))
(defmethod jm_getTotalDevicesInPlay_0 ((this LocalPlayerInputIdFactory))
  (declare (ignorable this))
  (let (_total _index)
  (declare (ignorable _total _index))
    (block jreturn
        (setf _total 0)
        (progn
            (setf _index (JR.i32 (- (slot-value this 'f_totalDevicesMapped) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (eq (aref (slot-value this 'f_playersInPlay) _index) t)
                (progn
                (setf _total (JR.i32 (+ _total 1))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn _total))))

    
(unless (fboundp 'jm_isPlayerInPlay_1) (defgeneric jm_isPlayerInPlay_1 (this p1)))
(defmethod jm_isPlayerInPlay_1 ((this LocalPlayerInputIdFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_playersInPlay) _playerInputId)))))

    
(unless (fboundp 'jm_setPlayerInPlay_1) (defgeneric jm_setPlayerInPlay_1 (this p1)))
(defmethod jm_setPlayerInPlay_1 ((this LocalPlayerInputIdFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Setting PlayerInPlay with playerInputId: ") _playerInputId)) this "setPlayerInPlay")
        (setf (aref (slot-value this 'f_playersInPlay) _playerInputId) t))))

    
(unless (fboundp 'jm_setPlayerOutOfPlay_1) (defgeneric jm_setPlayerOutOfPlay_1 (this p1)))
(defmethod jm_setPlayerOutOfPlay_1 ((this LocalPlayerInputIdFactory) _playerInputId)
  (declare (ignorable this _playerInputId))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Setting PlayerOutOfPlay with playerInputId: ") _playerInputId)) this "setPlayerOutOfPlay")
        (setf (aref (slot-value this 'f_playersInPlay) _playerInputId) nil))))

    
(unless (fboundp 'jm_getPlayersInPlay_0) (defgeneric jm_getPlayersInPlay_0 (this)))
(defmethod jm_getPlayersInPlay_0 ((this LocalPlayerInputIdFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_playersInPlay)))))



