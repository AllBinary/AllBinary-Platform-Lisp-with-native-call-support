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
;;;; package org.allbinary.game.combat.destroy

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DestroyableBaseBehavior (JObject)
  ())

(defvar DestroyableBaseBehavior.jcell_instance :jnone)
(defun DestroyableBaseBehavior.jstatic_instance ()
  (when (eq DestroyableBaseBehavior.jcell_instance :jnone) (setf DestroyableBaseBehavior.jcell_instance (DestroyableBaseBehavior.jnew_0)))
  DestroyableBaseBehavior.jcell_instance)
(defun (setf DestroyableBaseBehavior.jstatic_instance) (value) (setf DestroyableBaseBehavior.jcell_instance value))

(defun DestroyableBaseBehavior.jnew_0 ()
  (let ((this (make-instance 'DestroyableBaseBehavior)))
    this))

    
(defun DestroyableBaseBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DestroyableBaseBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this DestroyableBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className this)))))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this DestroyableBaseBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this DestroyableBaseBehavior) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn nil)))



