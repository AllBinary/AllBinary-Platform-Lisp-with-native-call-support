;;;; Generated Code Do Not Modify
;;;; package org.apache.xmlrpc

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass XmlRpcException (Exception)
  ())

    
(defun XmlRpcException.jnew_2 (_code _message)
  (declare (ignorable _code _message))
  (let ((this (make-instance 'XmlRpcException)))
  (let ()
    (block jreturn
        nil))
    this))



