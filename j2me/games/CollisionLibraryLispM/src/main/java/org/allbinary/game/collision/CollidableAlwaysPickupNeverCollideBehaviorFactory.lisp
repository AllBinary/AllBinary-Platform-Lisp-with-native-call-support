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
;;;; package org.allbinary.game.collision

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableAlwaysPickupNeverCollideBehaviorFactory (CollidableBaseBehaviorFactory)
  ((f_instance :initform nil)))

(defvar CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC :jnone)
(defun CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC ()
  (when (eq CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC :jnone) (setf CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC (CollidableAlwaysPickupNeverCollideBehaviorFactory.jnew_0)))
  CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC)
(defun (setf CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC) (value) (setf CollidableAlwaysPickupNeverCollideBehaviorFactory.jcell_instanceC value))

(defun CollidableAlwaysPickupNeverCollideBehaviorFactory.jnew_0 ()
  (let ((this (make-instance 'CollidableAlwaysPickupNeverCollideBehaviorFactory)))
    (setf (slot-value this 'f_instance) (CollidableAlwaysPickupNeverCollideBehavior.jnew_0))
    this))

    
(defun CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CollidableAlwaysPickupNeverCollideBehaviorFactory.jstatic_instanceC)))))

    
(unless (fboundp 'jm_createBehavior_0) (defgeneric jm_createBehavior_0 (this)))
(defmethod jm_createBehavior_0 ((this CollidableAlwaysPickupNeverCollideBehaviorFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_instance)))))



