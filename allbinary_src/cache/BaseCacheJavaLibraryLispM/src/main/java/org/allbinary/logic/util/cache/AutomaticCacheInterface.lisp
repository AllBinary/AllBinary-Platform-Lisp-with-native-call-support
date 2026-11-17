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

(defclass AutomaticCacheInterface (JObject)
  ())

(defun AutomaticCacheInterface.jnew_0 ()
  (let ((this (make-instance 'AutomaticCacheInterface)))
    this))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this AutomaticCacheInterface) _key)
  (declare (ignorable this _key))
  (error (JR.newException "AbstractMethodError" "get")))



