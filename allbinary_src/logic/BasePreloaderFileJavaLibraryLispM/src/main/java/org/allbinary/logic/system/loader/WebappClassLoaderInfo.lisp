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
;;;; package org.allbinary.logic.system.loader

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WebappClassLoaderInfo (JObject)
  ())

(defvar WebappClassLoaderInfo.jcell_classLoader :jnone)
(defun WebappClassLoaderInfo.jstatic_classLoader ()
  (when (eq WebappClassLoaderInfo.jcell_classLoader :jnone) (setf WebappClassLoaderInfo.jcell_classLoader (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  WebappClassLoaderInfo.jcell_classLoader)
(defun (setf WebappClassLoaderInfo.jstatic_classLoader) (value) (setf WebappClassLoaderInfo.jcell_classLoader value))

    
(defun WebappClassLoaderInfo.jnew_0 ()
  (let ((this (make-instance 'WebappClassLoaderInfo)))
  (let ()
    (block jreturn nil))
    this))

    
(defun WebappClassLoaderInfo.jm_setLoader_1 (_classLoader)
  (declare (ignorable _classLoader))
  (let ()
    (block jreturn
        (setf (WebappClassLoaderInfo.jstatic_classLoader) _classLoader))))

    
(defun WebappClassLoaderInfo.jm_getLoader_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (WebappClassLoaderInfo.jstatic_classLoader)))))



