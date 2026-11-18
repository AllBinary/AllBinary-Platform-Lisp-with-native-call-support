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

;implements
(defclass AppUrlGlobals (UrlGlobalsInterface)
  ((f_path :initform nil)))

(defvar AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS :jnone)
(defun AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS ()
  (when (eq AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS :jnone) (setf AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS (AppUrlGlobals.jnew_0)))
  AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS)
(defun (setf AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS) (value) (setf AppUrlGlobals.jcell_NULL_APP_URL_GLOBALS value))

(defun AppUrlGlobals.jnew_0 ()
  (let ((this (make-instance 'AppUrlGlobals)))
    (setf (slot-value this 'f_path) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    this))

    
(unless (fboundp 'jm_isTestingMode_0) (defgeneric jm_isTestingMode_0 (this)))
(defmethod jm_isTestingMode_0 ((this AppUrlGlobals))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getWebappPath_0) (defgeneric jm_getWebappPath_0 (this)))
(defmethod jm_getWebappPath_0 ((this AppUrlGlobals))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_path)))))

    
(unless (fboundp 'jm_setWebappPath_1) (defgeneric jm_setWebappPath_1 (this p1)))
(defmethod jm_setWebappPath_1 ((this AppUrlGlobals) _path)
  (declare (ignorable this _path))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_path) _path)
        (if (not (or (JR.endsWith (slot-value this 'f_path) (JR.unescape "\\\\")) (JR.endsWith (slot-value this 'f_path) "/")))
            (progn
            (setf (slot-value this 'f_path) (JR.concat (slot-value this 'f_path) (JR.unescape "\\\\"))))))))

    
(unless (fboundp 'jm_getTestHtmlPath_0) (defgeneric jm_getTestHtmlPath_0 (this)))
(defmethod jm_getTestHtmlPath_0 ((this AppUrlGlobals))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_getMainPath_0) (defgeneric jm_getMainPath_0 (this)))
(defmethod jm_getMainPath_0 ((this AppUrlGlobals))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_path)))))



