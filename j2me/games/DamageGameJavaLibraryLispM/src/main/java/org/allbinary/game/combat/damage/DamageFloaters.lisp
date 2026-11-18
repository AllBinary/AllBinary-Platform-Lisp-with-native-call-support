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
;;;; package org.allbinary.game.combat.damage

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DamageFloaters (Paintable)
  ())

(defvar DamageFloaters.jcell_SINGLETON :jnone)
(defun DamageFloaters.jstatic_SINGLETON ()
  (when (eq DamageFloaters.jcell_SINGLETON :jnone) (setf DamageFloaters.jcell_SINGLETON (DamageFloaters.jnew_0)))
  DamageFloaters.jcell_SINGLETON)
(defun (setf DamageFloaters.jstatic_SINGLETON) (value) (setf DamageFloaters.jcell_SINGLETON value))

(defun DamageFloaters.jnew_0 ()
  (let ((this (make-instance 'DamageFloaters)))
    this))

    
(defun DamageFloaters.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DamageFloaters.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this DamageFloaters) _damage)
  (declare (ignorable this _damage))
  (let ()
    (block jreturn nil)))



