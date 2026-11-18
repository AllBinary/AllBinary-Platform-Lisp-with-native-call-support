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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RelativeRelationship (JObject)
  ((f_typesAllowedList :initform nil)
   (f_x :initform 0)
   (f_y :initform 0)
   (f_z :initform 0)))

(defvar RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP :jnone)
(defun RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP ()
  (when (eq RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP :jnone) (setf RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP (RelativeRelationship.jnew_2 (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))))
  RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP)
(defun (setf RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP) (value) (setf RelativeRelationship.jcell_NULL_RELATIVE_RELATIONSHIP value))

    
(defun RelativeRelationship.jnew_2 (_point _typesAllowedList)
  (declare (ignorable _point _typesAllowedList))
  (let ((this (make-instance 'RelativeRelationship)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_x) (jm_getX_0 _point))
        (setf (slot-value this 'f_y) (jm_getY_0 _point))
        (setf (slot-value this 'f_z) (jm_getZ_0 _point))
        (setf (slot-value this 'f_typesAllowedList) _typesAllowedList)))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this RelativeRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this RelativeRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_getZ_0) (defgeneric jm_getZ_0 (this)))
(defmethod jm_getZ_0 ((this RelativeRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_getTypesAllowedList_0) (defgeneric jm_getTypesAllowedList_0 (this)))
(defmethod jm_getTypesAllowedList_0 ((this RelativeRelationship))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_typesAllowedList)))))

    
(unless (fboundp 'jm_setTypesAllowedList_1) (defgeneric jm_setTypesAllowedList_1 (this p1)))
(defmethod jm_setTypesAllowedList_1 ((this RelativeRelationship) _typesAllowedList)
  (declare (ignorable this _typesAllowedList))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_typesAllowedList) _typesAllowedList))))



