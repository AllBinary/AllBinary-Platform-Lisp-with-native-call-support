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

(defclass CollisionTypeFactory (JObject)
  ((f_NONE :initform nil)
   (f_DAMAGE :initform nil)
   (f_PICKUP :initform nil)
   (f_COLLISION :initform nil)))

(defvar CollisionTypeFactory.jcell_SINGLETON :jnone)
(defun CollisionTypeFactory.jstatic_SINGLETON ()
  (when (eq CollisionTypeFactory.jcell_SINGLETON :jnone) (setf CollisionTypeFactory.jcell_SINGLETON (CollisionTypeFactory.jnew_0)))
  CollisionTypeFactory.jcell_SINGLETON)
(defun (setf CollisionTypeFactory.jstatic_SINGLETON) (value) (setf CollisionTypeFactory.jcell_SINGLETON value))

(defun CollisionTypeFactory.jnew_0 ()
  (let ((this (make-instance 'CollisionTypeFactory)))
    (setf (slot-value this 'f_NONE) (CollisionType.jnew_1 "None"))
    (setf (slot-value this 'f_DAMAGE) (CollisionType.jnew_1 "Damage"))
    (setf (slot-value this 'f_PICKUP) (CollisionType.jnew_1 "Pickup"))
    (setf (slot-value this 'f_COLLISION) (CollisionType.jnew_1 "Collision"))
    this))

    
(defun CollisionTypeFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CollisionTypeFactory.jstatic_SINGLETON)))))



