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

(defclass URLGLOBALS (JObject)
  ())

(defvar URLGLOBALS.jcell_urlGlobalsInterface :jnone)
(defun URLGLOBALS.jstatic_urlGlobalsInterface ()
  (when (eq URLGLOBALS.jcell_urlGlobalsInterface :jnone) (setf URLGLOBALS.jcell_urlGlobalsInterface (AppUrlGlobals.jstatic_NULL_APP_URL_GLOBALS)))
  URLGLOBALS.jcell_urlGlobalsInterface)
(defun (setf URLGLOBALS.jstatic_urlGlobalsInterface) (value) (setf URLGLOBALS.jcell_urlGlobalsInterface value))

(defun URLGLOBALS.jnew_0 ()
  (let ((this (make-instance 'URLGLOBALS)))
    this))

    
(defun URLGLOBALS.jm_init_1 (_urlGlobalsInterface)
  (declare (ignorable _urlGlobalsInterface))
  (let ()
    (block jreturn
        (setf (URLGLOBALS.jstatic_urlGlobalsInterface) _urlGlobalsInterface))))

    
(defun URLGLOBALS.jm_isTestingMode_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (jm_isTestingMode_0 (URLGLOBALS.jstatic_urlGlobalsInterface))))))

    
(defun URLGLOBALS.jm_getWebappPath_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (jm_getWebappPath_0 (URLGLOBALS.jstatic_urlGlobalsInterface))))))

    
(defun URLGLOBALS.jm_getTestHtmlPath_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (jm_getTestHtmlPath_0 (URLGLOBALS.jstatic_urlGlobalsInterface))))))

    
(defun URLGLOBALS.jm_getMainPath_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (jm_getMainPath_0 (URLGLOBALS.jstatic_urlGlobalsInterface))))))



