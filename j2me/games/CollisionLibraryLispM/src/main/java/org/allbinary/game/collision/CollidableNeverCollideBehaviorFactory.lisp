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

(defclass CollidableNeverCollideBehaviorFactory (CollidableBaseBehaviorFactory)
  ((f_instance :initform nil)))

(defvar CollidableNeverCollideBehaviorFactory.jcell_instanceC :jnone)
(defun CollidableNeverCollideBehaviorFactory.jstatic_instanceC ()
  (when (eq CollidableNeverCollideBehaviorFactory.jcell_instanceC :jnone) (setf CollidableNeverCollideBehaviorFactory.jcell_instanceC (CollidableNeverCollideBehaviorFactory.jnew_0)))
  CollidableNeverCollideBehaviorFactory.jcell_instanceC)
(defun (setf CollidableNeverCollideBehaviorFactory.jstatic_instanceC) (value) (setf CollidableNeverCollideBehaviorFactory.jcell_instanceC value))

(defun CollidableNeverCollideBehaviorFactory.jnew_0 ()
  (let ((this (make-instance 'CollidableNeverCollideBehaviorFactory)))
    (setf (slot-value this 'f_instance) (CollidableNeverCollideBehavior.jnew_1 nil))
    this))

    
(defun CollidableNeverCollideBehaviorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CollidableNeverCollideBehaviorFactory.jstatic_instanceC)))))

    
(unless (fboundp 'jm_createBehavior_0) (defgeneric jm_createBehavior_0 (this)))
(defmethod jm_createBehavior_0 ((this CollidableNeverCollideBehaviorFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_instance)))))



