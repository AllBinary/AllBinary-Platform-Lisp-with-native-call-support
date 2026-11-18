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

;J2SE - PC
(defclass ResourceUtil (JObject)
  ((f_logUtil :initform nil)
   (f_path :initform nil)
   (f_ext :initform nil)))

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
    (setf (slot-value this 'f_path) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_ext) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setLoadingPaths_2) (defgeneric jm_setLoadingPaths_2 (this p1 p2)))
(defmethod jm_setLoadingPaths_2 ((this ResourceUtil) _path _ext)
  (declare (ignorable this _path _ext))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_path) _path)
        (setf (slot-value this 'f_ext) _ext))))

    
(unless (fboundp 'jm_setClassLoader_1) (defgeneric jm_setClassLoader_1 (this p1)))
(defmethod jm_setClassLoader_1 ((this ResourceUtil) _classLoader)
  (declare (ignorable this _classLoader))
  (let ()
    (block jreturn nil)))

    
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
  (let (_inputStream _byteArray)
  (declare (ignorable _inputStream _byteArray))
    (block jreturn
        (setf _inputStream (FileInputStream.jnew_1 (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_path)) _resource) (slot-value this 'f_ext)))))
        (if (not (null _inputStream))
            (progn
            (setf _byteArray (JR.newArray 0 (jm_available_0 _inputStream)))
            (jm_getByteArray_3 (StreamUtil.jm_getInstance_0) _inputStream (ByteArrayOutputStream.jnew_0) _byteArray)
            (return-from jreturn (ByteArrayInputStream.jnew_1 _byteArray))))
        (return-from jreturn _inputStream))))

    
(unless (fboundp 'jm_addResource_2) (defgeneric jm_addResource_2 (this p1 p2)))
(defmethod jm_addResource_2 ((this ResourceUtil) _resource _value)
  (declare (ignorable this _resource _value))
  (let ()
    (block jreturn nil)))



