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
;;;; package org.allbinary.data.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2SE - J2ME
(defclass ResourceUtil (JObject)
  ((f_logUtil :initform nil)))

(defvar ResourceUtil.jcell_classLoader :jnone)
(defun ResourceUtil.jstatic_classLoader ()
  (when (eq ResourceUtil.jcell_classLoader :jnone) (setf ResourceUtil.jcell_classLoader (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ResourceUtil.jcell_classLoader)
(defun (setf ResourceUtil.jstatic_classLoader) (value) (setf ResourceUtil.jcell_classLoader value))

(defvar ResourceUtil.jcell_instance :jnone)
(defun ResourceUtil.jstatic_instance ()
  (when (eq ResourceUtil.jcell_instance :jnone) (setf ResourceUtil.jcell_instance (ResourceUtil.jnew_0)))
  ResourceUtil.jcell_instance)
(defun (setf ResourceUtil.jstatic_instance) (value) (setf ResourceUtil.jcell_instance value))

    
(defun ResourceUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ResourceUtil.jstatic_instance)))))

    
(defun ResourceUtil.jnew_0 ()
  (let ((this (make-instance 'ResourceUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setLoadingPaths_2) (defgeneric jm_setLoadingPaths_2 (this p1 p2)))
(defmethod jm_setLoadingPaths_2 ((this ResourceUtil) _path _ext)
  (declare (ignorable this _path _ext))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (CommonStrings.jm_getInstance_0) 'f_NOT_IMPLEMENTED) this "setLoadingPaths"))))

    
(unless (fboundp 'jm_setClassLoader_1) (defgeneric jm_setClassLoader_1 (this p1)))
(defmethod jm_setClassLoader_1 ((this ResourceUtil) _classLoader)
  (declare (ignorable this _classLoader))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Resource Loader: ") (JR.className _classLoader))) this "setClassLoader")
        (setf (ResourceUtil.jstatic_classLoader) _classLoader))))

    
(unless (fboundp 'jm_getResourceAsStream_1) (defgeneric jm_getResourceAsStream_1 (this p1)))
(defmethod jm_getResourceAsStream_1 ((this ResourceUtil) _resource)
  (declare (ignorable this _resource))
  (let (_inputStream)
  (declare (ignorable _inputStream))
    (block jreturn
        (setf _inputStream (jm_getResourceAsStreamAtStart_2 this _resource 2))
        (if (null _inputStream)
            (progn
            (setf _inputStream (jm_getResourceAsStreamAtStart_2 this _resource 1))
            (if (null _inputStream)
                (progn
                (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Unable to obtain: ") _resource))))))))
        (return-from jreturn _inputStream))))

    
(unless (fboundp 'jm_getResourceAsStreamAtStart_2) (defgeneric jm_getResourceAsStreamAtStart_2 (this p1 p2)))
(defmethod jm_getResourceAsStreamAtStart_2 ((this ResourceUtil) _resource _startIndex)
  (declare (ignorable this _resource _startIndex))
  (let (_commonSeps _index _resourcePath _inputStream _classLoader)
  (declare (ignorable _commonSeps _index _resourcePath _inputStream _classLoader))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _index (JR.indexOf _resource (slot-value _commonSeps 'f_COLON)))
        (setf _resourcePath (JR.substring _resource (JR.i32 (+ _index _startIndex))))
        (setf _inputStream (jm_getResourceAsStream_1 (JR.className _resource) _resourcePath))
        (if (not (null _inputStream))
            (progn
            (return-from jreturn _inputStream)))
        (setf _classLoader (ResourceUtil.jstatic_classLoader))
        (setf _inputStream (jm_getResourceAsStream_1 _classLoader _resourcePath))
        (if (not (null _inputStream))
            (progn
            (return-from jreturn _inputStream)))
        (setf _inputStream (jm_getResourceAsStream_1 (jm_getContextClassLoader_0 (Thread.jm_currentThread_0)) _resourcePath))
        (if (not (null _inputStream))
            (progn
            (return-from jreturn _inputStream)))
        (return-from jreturn _inputStream))))

    
(unless (fboundp 'jm_addResource_2) (defgeneric jm_addResource_2 (this p1 p2)))
(defmethod jm_addResource_2 ((this ResourceUtil) _resource _value)
  (declare (ignorable this _resource _value))
  (let ()
    (block jreturn nil)))



