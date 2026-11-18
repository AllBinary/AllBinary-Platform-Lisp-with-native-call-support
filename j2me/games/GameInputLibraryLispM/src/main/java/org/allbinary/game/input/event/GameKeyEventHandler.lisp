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

(defclass GameKeyEventHandler (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_pressGameKeyEventHandler :initform nil)
   (f_upGameKeyEventHandler :initform nil)
   (f_downGameKeyEventHandler :initform nil)))

(defvar GameKeyEventHandler.jcell_instance :jnone)
(defun GameKeyEventHandler.jstatic_instance ()
  (when (eq GameKeyEventHandler.jcell_instance :jnone) (setf GameKeyEventHandler.jcell_instance (GameKeyEventHandler.jnew_0)))
  GameKeyEventHandler.jcell_instance)
(defun (setf GameKeyEventHandler.jstatic_instance) (value) (setf GameKeyEventHandler.jcell_instance value))

(defun GameKeyEventHandler.jnew_0 ()
  (let ((this (make-instance 'GameKeyEventHandler)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_pressGameKeyEventHandler) (PressGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_upGameKeyEventHandler) (UpGameKeyEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_downGameKeyEventHandler) (DownGameKeyEventHandler.jm_getInstance_0))
    this))

    
(defun GameKeyEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameKeyEventHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this GameKeyEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_removeAllListeners_0 (slot-value this 'f_pressGameKeyEventHandler))
        (jm_removeAllListeners_0 (slot-value this 'f_upGameKeyEventHandler))
        (jm_removeAllListeners_0 (slot-value this 'f_downGameKeyEventHandler)))))

    
(unless (fboundp 'jm_addListenerForPlayer_2) (defgeneric jm_addListenerForPlayer_2 (this p1 p2)))
(defmethod jm_addListenerForPlayer_2 ((this GameKeyEventHandler) _eventListenerInterface _playerInputId)
  (declare (ignorable this _eventListenerInterface _playerInputId))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _eventListenerInterface) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD_LISTENER))
        (jm_addListenerSingleThreaded_1 (slot-value this 'f_pressGameKeyEventHandler) _eventListenerInterface)
        (jm_addListenerSingleThreaded_1 (jm_getInstanceForPlayer_1 (slot-value this 'f_upGameKeyEventHandler) _playerInputId) _eventListenerInterface)
        (jm_addListenerSingleThreaded_1 (jm_getInstanceForPlayer_1 (slot-value this 'f_downGameKeyEventHandler) _playerInputId) _eventListenerInterface))))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this GameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _eventListenerInterface) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD_LISTENER))
        (jm_addListenerSingleThreaded_1 (slot-value this 'f_pressGameKeyEventHandler) _eventListenerInterface)
        (jm_addListenerSingleThreaded_1 (slot-value this 'f_upGameKeyEventHandler) _eventListenerInterface)
        (jm_addListenerSingleThreaded_1 (slot-value this 'f_downGameKeyEventHandler) _eventListenerInterface))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this GameKeyEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _eventListenerInterface) this (slot-value (slot-value this 'f_commonStrings) 'f_REMOVE_LISTENER))
        (jm_removeListenerSingleThreaded_1 (slot-value this 'f_pressGameKeyEventHandler) _eventListenerInterface)
        (jm_removeListenerSingleThreaded_1 (slot-value this 'f_upGameKeyEventHandler) _eventListenerInterface)
        (jm_removeListenerSingleThreaded_1 (slot-value this 'f_downGameKeyEventHandler) _eventListenerInterface))))



