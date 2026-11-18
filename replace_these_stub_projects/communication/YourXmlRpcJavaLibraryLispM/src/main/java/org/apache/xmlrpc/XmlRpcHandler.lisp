;;;; Generated Code Do Not Modify
;;;; package org.apache.xmlrpc

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass XmlRpcHandler (JObject)
  ())

(defun XmlRpcHandler.jnew_0 ()
  (let ((this (make-instance 'XmlRpcHandler)))
    this))

    
(unless (fboundp 'jm_execute_2) (defgeneric jm_execute_2 (this p1 p2)))
(defmethod jm_execute_2 ((this XmlRpcHandler) _method _params)
  (declare (ignorable this _method _params))
  (error (JR.newException "AbstractMethodError" "execute")))



