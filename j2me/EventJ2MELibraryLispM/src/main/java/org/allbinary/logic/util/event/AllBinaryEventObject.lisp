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
;;;; package org.allbinary.logic.util.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryEventObject (JObject)
  ((f_source :initform nil)))

(defvar AllBinaryEventObject.jcell_NULL_EVENT :jnone)
(defun AllBinaryEventObject.jstatic_NULL_EVENT ()
  (when (eq AllBinaryEventObject.jcell_NULL_EVENT :jnone) (setf AllBinaryEventObject.jcell_NULL_EVENT (AllBinaryEventObject.jnew_1 (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))))
  AllBinaryEventObject.jcell_NULL_EVENT)

    
(defun AllBinaryEventObject.jnew_1 (_anyType)
  (declare (ignorable _anyType))
  (let ((this (make-instance 'AllBinaryEventObject)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_source) _anyType)))
    this))

    
(unless (fboundp 'jm_getSource_0) (defgeneric jm_getSource_0 (this)))
(defmethod jm_getSource_0 ((this AllBinaryEventObject))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_source)))))

    
(unless (fboundp 'jm_setSource_1) (defgeneric jm_setSource_1 (this p1)))
(defmethod jm_setSource_1 ((this AllBinaryEventObject) _source)
  (declare (ignorable this _source))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_source) _source))))



