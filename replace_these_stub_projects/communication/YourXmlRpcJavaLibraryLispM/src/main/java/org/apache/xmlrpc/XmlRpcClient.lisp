;;;; Generated Code Do Not Modify
;;;; package org.apache.xmlrpc

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass XmlRpcClient (JObject)
  ((f_url :initform nil)))

    
(defun XmlRpcClient.jnew_1 (_url)
  (declare (ignorable _url))
  (let ((this (make-instance 'XmlRpcClient)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_url) (URL.jnew_1 _url))))
    this))

    
(unless (fboundp 'jm_getURL_0) (defgeneric jm_getURL_0 (this)))
(defmethod jm_getURL_0 ((this XmlRpcClient))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_url)))))

    
(unless (fboundp 'jm_setBasicAuthentication_2) (defgeneric jm_setBasicAuthentication_2 (this p1 p2)))
(defmethod jm_setBasicAuthentication_2 ((this XmlRpcClient) _user _password)
  (declare (ignorable this _user _password))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_execute_2) (defgeneric jm_execute_2 (this p1 p2)))
(defmethod jm_execute_2 ((this XmlRpcClient) _method _params)
  (declare (ignorable this _method _params))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))

    
(unless (fboundp 'jm_executeWithCrypt_3) (defgeneric jm_executeWithCrypt_3 (this p1 p2 p3)))
(defmethod jm_executeWithCrypt_3 ((this XmlRpcClient) _method _params _cryptInterface)
  (declare (ignorable this _method _params _cryptInterface))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))))



