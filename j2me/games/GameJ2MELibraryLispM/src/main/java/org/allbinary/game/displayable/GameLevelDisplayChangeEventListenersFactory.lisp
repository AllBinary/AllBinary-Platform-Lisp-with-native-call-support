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
;;;; package org.allbinary.game.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameLevelDisplayChangeEventListenersFactory (JObject)
  ((f_list :initform nil)))

(defvar GameLevelDisplayChangeEventListenersFactory.jcell_instance :jnone)
(defun GameLevelDisplayChangeEventListenersFactory.jstatic_instance ()
  (when (eq GameLevelDisplayChangeEventListenersFactory.jcell_instance :jnone) (setf GameLevelDisplayChangeEventListenersFactory.jcell_instance (GameLevelDisplayChangeEventListenersFactory.jnew_0)))
  GameLevelDisplayChangeEventListenersFactory.jcell_instance)
(defun (setf GameLevelDisplayChangeEventListenersFactory.jstatic_instance) (value) (setf GameLevelDisplayChangeEventListenersFactory.jcell_instance value))

(defun GameLevelDisplayChangeEventListenersFactory.jnew_0 ()
  (let ((this (make-instance 'GameLevelDisplayChangeEventListenersFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(defun GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameLevelDisplayChangeEventListenersFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this GameLevelDisplayChangeEventListenersFactory) _displayChangeEventListener)
  (declare (ignorable this _displayChangeEventListener))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _displayChangeEventListener)
        (jm_addListenerInterface_1 (DisplayChangeEventHandler.jm_getInstance_0) _displayChangeEventListener))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this GameLevelDisplayChangeEventListenersFactory))
  (declare (ignorable this))
  (let (_displayChangeEventHandler _displayChangeEventListener _index)
  (declare (ignorable _displayChangeEventHandler _displayChangeEventListener _index))
    (block jreturn
        (setf _displayChangeEventHandler (DisplayChangeEventHandler.jm_getInstance_0))
        (setf _displayChangeEventListener nil)
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_list)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _displayChangeEventListener (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (jm_removeListener_1 _displayChangeEventHandler _displayChangeEventListener)))))
        (jm_clear_0 (slot-value this 'f_list)))))



