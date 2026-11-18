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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbeClientInformationData (JObject)
  ((f_KEY :initform nil)
   (f_NAME :initform nil)
   (f_VERSION :initform nil)
   (f_SPECIALNAME :initform nil)
   (f_LICENSEID :initform nil)
   (f_LICENSE_TYPE :initform nil)
   (f_PREVIOUSLICENSEID :initform nil)
   (f_OSNAME :initform nil)
   (f_OSARCH :initform nil)
   (f_OSVERSION :initform nil)
   (f_OS :initform nil)
   (f_HARDWARE :initform nil)
   (f_LICENSESERVERS :initform nil)
   (f_NEWLICENSE :initform nil)
   (f_ISNEW :initform nil)
   (f_SPECIAL :initform nil)))

(defvar AbeClientInformationData.jcell_instance :jnone)
(defun AbeClientInformationData.jstatic_instance ()
  (when (eq AbeClientInformationData.jcell_instance :jnone) (setf AbeClientInformationData.jcell_instance (AbeClientInformationData.jnew_0)))
  AbeClientInformationData.jcell_instance)
(defun (setf AbeClientInformationData.jstatic_instance) (value) (setf AbeClientInformationData.jcell_instance value))

    
(defun AbeClientInformationData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AbeClientInformationData.jstatic_instance)))))

    
(defun AbeClientInformationData.jnew_0 ()
  (let ((this (make-instance 'AbeClientInformationData)))
    (setf (slot-value this 'f_KEY) "KEY")
    (setf (slot-value this 'f_NAME) "NAME")
    (setf (slot-value this 'f_VERSION) "VERSION")
    (setf (slot-value this 'f_SPECIALNAME) "SPECIALNAME")
    (setf (slot-value this 'f_LICENSEID) "LICENSEID")
    (setf (slot-value this 'f_LICENSE_TYPE) "LICENSETYPE")
    (setf (slot-value this 'f_PREVIOUSLICENSEID) "PREVIOUSLICENSEID")
    (setf (slot-value this 'f_OSNAME) "OSNAME")
    (setf (slot-value this 'f_OSARCH) "OSARCH")
    (setf (slot-value this 'f_OSVERSION) "OSVERSION")
    (setf (slot-value this 'f_OS) "OS")
    (setf (slot-value this 'f_HARDWARE) "HARDWARE")
    (setf (slot-value this 'f_LICENSESERVERS) "LICENSESERVERS")
    (setf (slot-value this 'f_NEWLICENSE) "NEWLICENSE")
    (setf (slot-value this 'f_ISNEW) "ISNEW")
    (setf (slot-value this 'f_SPECIAL) "SPECIAL")
  (let ()
    (block jreturn nil))
    this))



