;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graph

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass E (JObject)
  ())

(defvar E.jcell_e :jnone)
(defun E.jstatic_e ()
  (when (eq E.jcell_e :jnone) (setf E.jcell_e (E.jnew_0)))
  E.jcell_e)
(defun (setf E.jstatic_e) (value) (setf E.jcell_e value))

(defun E.jnew_0 ()
  (let ((this (make-instance 'E)))
    this))

    
(unless (fboundp 'jm_newInstance_0) (defgeneric jm_newInstance_0 (this)))
(defmethod jm_newInstance_0 ((this E))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (E.jstatic_e)))))



