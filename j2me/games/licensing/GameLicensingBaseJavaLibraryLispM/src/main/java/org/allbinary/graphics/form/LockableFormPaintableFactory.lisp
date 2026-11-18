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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LockableFormPaintableFactory (ItemPaintableFactory)
  ((f_lockedIndex :initform 0)))

    
(defun LockableFormPaintableFactory.jnew_1 (_lockedIndex)
  (declare (ignorable _lockedIndex))
  (let ((this (make-instance 'LockableFormPaintableFactory)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lockedIndex) _lockedIndex)))
    this))

    
(unless (fboundp 'jm_getInstanceItemPaintable_1) (defgeneric jm_getInstanceItemPaintable_1 (this p1)))
(defmethod jm_getInstanceItemPaintable_1 ((this LockableFormPaintableFactory) _paintableForm)
  (declare (ignorable this _paintableForm))
  (let ()
    (block jreturn
        (return-from jreturn (LockablePaintable.jnew_1 (slot-value this 'f_lockedIndex))))))



