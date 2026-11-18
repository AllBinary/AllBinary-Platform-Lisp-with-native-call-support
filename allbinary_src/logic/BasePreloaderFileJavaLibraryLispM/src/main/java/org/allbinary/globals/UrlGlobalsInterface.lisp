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

(defclass UrlGlobalsInterface (JObject)
  ())

(defun UrlGlobalsInterface.jnew_0 ()
  (let ((this (make-instance 'UrlGlobalsInterface)))
    this))

    
(unless (fboundp 'jm_getMainPath_0) (defgeneric jm_getMainPath_0 (this)))
(defmethod jm_getMainPath_0 ((this UrlGlobalsInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_getTestHtmlPath_0) (defgeneric jm_getTestHtmlPath_0 (this)))
(defmethod jm_getTestHtmlPath_0 ((this UrlGlobalsInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_getWebappPath_0) (defgeneric jm_getWebappPath_0 (this)))
(defmethod jm_getWebappPath_0 ((this UrlGlobalsInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_isTestingMode_0) (defgeneric jm_isTestingMode_0 (this)))
(defmethod jm_isTestingMode_0 ((this UrlGlobalsInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



