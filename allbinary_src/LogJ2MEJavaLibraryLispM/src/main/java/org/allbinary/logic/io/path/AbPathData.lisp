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
;;;; package org.allbinary.logic.io.path

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbPathData (JObject)
  ((f_EXTENSION_SEP :initform nil)
   (f_SEPARATORCHAR :initform 0)
   (f_SEPARATOR :initform nil)))

(defvar AbPathData.jcell_instance :jnone)
(defun AbPathData.jstatic_instance ()
  (when (eq AbPathData.jcell_instance :jnone) (setf AbPathData.jcell_instance (AbPathData.jnew_0)))
  AbPathData.jcell_instance)
(defun (setf AbPathData.jstatic_instance) (value) (setf AbPathData.jcell_instance value))

    
(defun AbPathData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbPathData.jstatic_instance)))))

    
(defun AbPathData.jnew_0 ()
  (let ((this (make-instance 'AbPathData)))
    (setf (slot-value this 'f_EXTENSION_SEP) (slot-value (CommonSeps.jm_getInstance_0) 'f_PERIOD))
    (setf (slot-value this 'f_SEPARATORCHAR) (char-code #\/))
    (setf (slot-value this 'f_SEPARATOR) (slot-value (CommonSeps.jm_getInstance_0) 'f_FORWARD_SLASH))
  (let ()
    (block jreturn nil))
    this))



