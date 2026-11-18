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
;;;; package org.allbinary.globals

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Globals (JObject)
  ((f_logUtil :initform nil)))

(defvar Globals.jcell_instance :jnone)
(defun Globals.jstatic_instance ()
  (when (eq Globals.jcell_instance :jnone) (setf Globals.jcell_instance (Globals.jnew_0)))
  Globals.jcell_instance)
(defun (setf Globals.jstatic_instance) (value) (setf Globals.jcell_instance value))

    
(defun Globals.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (Globals.jstatic_instance)))))

    
(defun Globals.jnew_0 ()
  (let ((this (make-instance 'Globals)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this Globals) _classLoader _pathString)
  (declare (ignorable this _classLoader _pathString))
  (let (_commonStrings _appUrlGlobals _stringBuffer _stringValidationUtil)
  (declare (ignorable _commonStrings _appUrlGlobals _stringBuffer _stringValidationUtil))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _appUrlGlobals (AppUrlGlobals.jnew_0))
        (jm_setWebappPath_1 _appUrlGlobals _pathString)
        (URLGLOBALS.jm_init_1 _appUrlGlobals)
        (WebappClassLoaderInfo.jm_setLoader_1 _classLoader)
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Setting Up AllBinary System Configuration Args: ")
        (jm_append_1 _stringBuffer _pathString)
        (jm_append_1 _stringBuffer " ClassLoader: ")
        (jm_append_1 _stringBuffer (JR.className _classLoader))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_INIT))
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (if (jm_isEmpty_1 _stringValidationUtil _pathString)
            (progn
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer "No Path Provided. Using Process Path: ")
            (jm_append_1 _stringBuffer _pathString)
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_EQUALS))
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
            (jm_append_1 _stringBuffer (URLGLOBALS.jm_getWebappPath_0))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_INIT))))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (jm_append_1 _stringBuffer "Webapp Path Set To: ")
        (jm_append_1 _stringBuffer (URLGLOBALS.jm_getWebappPath_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_INIT)))))



