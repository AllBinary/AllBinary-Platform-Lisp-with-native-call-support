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

(defclass DestroyEventFactory (JObject)
  ((f_combatGameCanvas :initform nil)))

    
(defun DestroyEventFactory.jnew_1 (_combatGameCanvas)
  (declare (ignorable _combatGameCanvas))
  (let ((this (make-instance 'DestroyEventFactory)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_combatGameCanvas) _combatGameCanvas)))
    this))

    
(unless (fboundp 'jm_getInstance_0) (defgeneric jm_getInstance_0 (this)))
(defmethod jm_getInstance_0 ((this DestroyEventFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (DestroyedEvent.jnew_1 (slot-value this 'f_combatGameCanvas))))))



