;;;; Generated Code Do Not Modify
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass KotlinUtil (JObject)
  ())

(defun KotlinUtil.jnew_0 ()
  (let ((this (make-instance 'KotlinUtil)))
    this))

    
(defun KotlinUtil.jm_isKotlin_0 ()
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(defun KotlinUtil.jm_getShortName_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))



