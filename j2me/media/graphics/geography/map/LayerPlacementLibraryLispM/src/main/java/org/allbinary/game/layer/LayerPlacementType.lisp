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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerPlacementType (JObject)
  ((f_type :initform 0)))

    
(defun LayerPlacementType.jnew_1 (_type)
  (declare (ignorable _type))
  (let ((this (make-instance 'LayerPlacementType)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_type) _type)))
    this))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this LayerPlacementType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_type)))))

    
(unless (fboundp 'jm_setType_1) (defgeneric jm_setType_1 (this p1)))
(defmethod jm_setType_1 ((this LayerPlacementType) _type)
  (declare (ignorable this _type))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_type) _type))))



