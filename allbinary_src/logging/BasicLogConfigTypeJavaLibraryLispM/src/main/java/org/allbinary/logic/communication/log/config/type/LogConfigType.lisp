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
;;;; package org.allbinary.logic.communication.log.config.type

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LogConfigType (JObject)
  ((f_name :initform nil)
   (f_description :initform nil)))

    
(defun LogConfigType.jnew_2 (_name _description)
  (declare (ignorable _name _description))
  (let ((this (make-instance 'LogConfigType)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_description) _description)))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this LogConfigType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_getDescription_0) (defgeneric jm_getDescription_0 (this)))
(defmethod jm_getDescription_0 ((this LogConfigType))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_description)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this LogConfigType) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _value))))

    
(unless (fboundp 'jm_setDescription_1) (defgeneric jm_setDescription_1 (this p1)))
(defmethod jm_setDescription_1 ((this LogConfigType) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_description) _value))))



