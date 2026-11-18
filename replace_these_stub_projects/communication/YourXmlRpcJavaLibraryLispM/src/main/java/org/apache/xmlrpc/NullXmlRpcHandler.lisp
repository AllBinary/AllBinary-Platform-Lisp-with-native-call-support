;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.apache.xmlrpc

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullXmlRpcHandler (JObject)
  ())

(defvar NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER :jnone)
(defun NullXmlRpcHandler.jstatic_NULL_XML_RPC_HANDLER ()
  (when (eq NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER :jnone) (setf NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER (NullXmlRpcHandler.jnew_0)))
  NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER)
(defun (setf NullXmlRpcHandler.jstatic_NULL_XML_RPC_HANDLER) (value) (setf NullXmlRpcHandler.jcell_NULL_XML_RPC_HANDLER value))

(defun NullXmlRpcHandler.jnew_0 ()
  (let ((this (make-instance 'NullXmlRpcHandler)))
    this))

    
(unless (fboundp 'jm_execute_2) (defgeneric jm_execute_2 (this p1 p2)))
(defmethod jm_execute_2 ((this NullXmlRpcHandler) _method _params)
  (declare (ignorable this _method _params))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))



