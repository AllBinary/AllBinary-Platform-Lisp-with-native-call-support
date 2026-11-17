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
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseBasicArrayListCache (JObject)
  ((f_list :initform nil)))

(defun BaseBasicArrayListCache.jnew_0 ()
  (let ((this (make-instance 'BaseBasicArrayListCache)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(unless (fboundp 'jm_log_0) (defgeneric jm_log_0 (this)))
(defmethod jm_log_0 ((this BaseBasicArrayListCache))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "S: ")
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_list)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



