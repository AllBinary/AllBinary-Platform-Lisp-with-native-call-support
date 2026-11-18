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

(defclass DestroyableSimpleBehavior (DestroyableBaseBehavior)
  ((f_ownerLayer :initform nil)
   (f_destroyed :initform nil)))

    
(defun DestroyableSimpleBehavior.jnew_1 (_ownerLayer)
  (declare (ignorable _ownerLayer))
  (let ((this (make-instance 'DestroyableSimpleBehavior)))
    
    (setf (slot-value this 'f_destroyed) nil)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_ownerLayer) _ownerLayer)))
    this))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this DestroyableSimpleBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_destroyed)))))

    
(unless (fboundp 'jm_setDestroyed_1) (defgeneric jm_setDestroyed_1 (this p1)))
(defmethod jm_setDestroyed_1 ((this DestroyableSimpleBehavior) _destroyed)
  (declare (ignorable this _destroyed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_destroyed) _destroyed)
        (if (jm_isDestroyed_0 this)
            (progn
            (jm_add_1 (DestroyedLayerProcessor.jm_getInstance_0) (slot-value this 'f_ownerLayer)))))))



