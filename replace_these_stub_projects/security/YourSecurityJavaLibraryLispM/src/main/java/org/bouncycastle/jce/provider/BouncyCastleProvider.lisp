;;;; Generated Code Do Not Modify
;;;; package org.bouncycastle.jce.provider

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BouncyCastleProvider (Provider)
  ())

(defvar BouncyCastleProvider.jcell_info :jnone)
(defun BouncyCastleProvider.jstatic_info ()
  (when (eq BouncyCastleProvider.jcell_info :jnone) (setf BouncyCastleProvider.jcell_info "BouncyCastle Security Provider v1.41"))
  BouncyCastleProvider.jcell_info)
(defun (setf BouncyCastleProvider.jstatic_info) (value) (setf BouncyCastleProvider.jcell_info value))

(defvar BouncyCastleProvider.jcell_PROVIDER_NAME :jnone)
(defun BouncyCastleProvider.jstatic_PROVIDER_NAME ()
  (when (eq BouncyCastleProvider.jcell_PROVIDER_NAME :jnone) (setf BouncyCastleProvider.jcell_PROVIDER_NAME "BC"))
  BouncyCastleProvider.jcell_PROVIDER_NAME)
(defun (setf BouncyCastleProvider.jstatic_PROVIDER_NAME) (value) (setf BouncyCastleProvider.jcell_PROVIDER_NAME value))

    
(defun BouncyCastleProvider.jnew_0 ()
  (let ((this (make-instance 'BouncyCastleProvider)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_setParameter_2) (defgeneric jm_setParameter_2 (this p1 p2)))
(defmethod jm_setParameter_2 ((this BouncyCastleProvider) _parameterName _parameter)
  (declare (ignorable this _parameterName _parameter))
  (let ()
    (block jreturn nil)))



