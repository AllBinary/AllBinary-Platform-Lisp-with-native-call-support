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
;;;; package org.allbinary.game.combat.destroy.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DestroyedEventHandler (BasicEventHandler)
  ((f_list :initform nil)))

(defvar DestroyedEventHandler.jcell_instance :jnone)
(defun DestroyedEventHandler.jstatic_instance ()
  (when (eq DestroyedEventHandler.jcell_instance :jnone) (setf DestroyedEventHandler.jcell_instance (DestroyedEventHandler.jnew_0)))
  DestroyedEventHandler.jcell_instance)
(defun (setf DestroyedEventHandler.jstatic_instance) (value) (setf DestroyedEventHandler.jcell_instance value))

    
(defun DestroyedEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DestroyedEventHandler.jstatic_instance)))))

    
(defun DestroyedEventHandler.jnew_0 ()
  (let ((this (make-instance 'DestroyedEventHandler)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this DestroyedEventHandler) _collidableDestroyableDamageableLayer)
  (declare (ignorable this _collidableDestroyableDamageableLayer))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_list) _collidableDestroyableDamageableLayer))
            (progn
            (jm_add_1 (slot-value this 'f_list) _collidableDestroyableDamageableLayer))))))

    
(unless (fboundp 'jm_removeAllListeners_0) (defgeneric jm_removeAllListeners_0 (this)))
(defmethod jm_removeAllListeners_0 ((this DestroyedEventHandler))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list))
        (call-next-method this))))

    
(unless (fboundp 'jm_removeListener_1) (defgeneric jm_removeListener_1 (this p1)))
(defmethod jm_removeListener_1 ((this DestroyedEventHandler) _eventListenerInterface)
  (declare (ignorable this _eventListenerInterface))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_list) _eventListenerInterface)
        (call-next-method this _eventListenerInterface))))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this DestroyedEventHandler) _eventObject)
  (declare (ignorable this _eventObject))
  (let (_collidableDestroyableDamageableLayer _index)
  (declare (ignorable _collidableDestroyableDamageableLayer _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (handler-case (progn
                (setf _collidableDestroyableDamageableLayer (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (jm_onDestroyed_1 _collidableDestroyableDamageableLayer _eventObject))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (EventStrings.jm_getInstance_0) 'f_FIRE_EVENT) _e)))))))
        (call-next-method this _eventObject))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this DestroyedEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_destroyedEventListenerInterface)
  (declare (ignorable _destroyedEventListenerInterface))
    (block jreturn
        (setf _destroyedEventListenerInterface _eventListenerInterface)
        (jm_onDestroyed_1 _destroyedEventListenerInterface _eventObject))))



