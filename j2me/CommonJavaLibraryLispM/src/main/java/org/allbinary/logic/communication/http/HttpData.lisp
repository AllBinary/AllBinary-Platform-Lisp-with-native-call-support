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
;;;; package org.allbinary.logic.communication.http

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HttpData (JObject)
  ((f_EQUALS :initform nil)
   (f_PARAM_SEP :initform nil)
   (f_URL_PARAM_SEP :initform nil)
   (f_URL_LABEL :initform nil)))

(defvar HttpData.jcell_instance :jnone)
(defun HttpData.jstatic_instance ()
  (when (eq HttpData.jcell_instance :jnone) (setf HttpData.jcell_instance (HttpData.jnew_0)))
  HttpData.jcell_instance)
(defun (setf HttpData.jstatic_instance) (value) (setf HttpData.jcell_instance value))

    
(defun HttpData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HttpData.jstatic_instance)))))

    
(defun HttpData.jnew_0 ()
  (let ((this (make-instance 'HttpData)))
    
    
    
    (setf (slot-value this 'f_URL_LABEL) "Url: ")
  (let (_commonSeps)
  (declare (ignorable _commonSeps))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf (slot-value this 'f_EQUALS) (slot-value _commonSeps 'f_EQUALS))
        (setf (slot-value this 'f_PARAM_SEP) (slot-value _commonSeps 'f_AMPERSAND))
        (setf (slot-value this 'f_URL_PARAM_SEP) (slot-value _commonSeps 'f_QUESTION))))
    this))



