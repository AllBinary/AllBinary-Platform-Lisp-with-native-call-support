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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Input (JObject)
  ((f_id :initform 0)
   (f_name :initform nil)))

    
(defun Input.jnew_2 (_id _name)
  (declare (ignorable _id _name))
  (let ((this (make-instance 'Input)))
    
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (jm_setId_1 this _id)
        (jm_setName_1 this _name)))
    this))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this Input))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))

    
(unless (fboundp 'jm_setId_1) (defgeneric jm_setId_1 (this p1)))
(defmethod jm_setId_1 ((this Input) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_id) _key))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this Input))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this Input) _keyName)
  (declare (ignorable this _keyName))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _keyName))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Input))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Name: ")
        (jm_append_1 _stringBuffer (jm_getName_0 this))
        (jm_append_1 _stringBuffer " Id: ")
        (jm_appendint_1 _stringBuffer (jm_getId_0 this))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



