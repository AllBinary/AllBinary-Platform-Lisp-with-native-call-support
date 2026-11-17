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
;;;; package org.allbinary.logic.system.os

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OperatingSystems (JObject)
  ((f_LINUX :initform nil)
   (f_WINDOWS :initform nil)
   (f_SOLARIS :initform nil)
   (f_WINDOWS2000 :initform nil)
   (f_WINDOWS_NT :initform nil)
   (f_WINDOWS_10 :initform nil)
   (f_WINDOWS_11 :initform nil)
   (f_WINDOWS_VISTA :initform nil)
   (f_WINDOWS_XP :initform nil)
   (f_ANDROID :initform nil)
   (f_HARMONY :initform nil)
   (f_unknownSpecificOSAllowed :initform nil)))

(defvar OperatingSystems.jcell_instance :jnone)
(defun OperatingSystems.jstatic_instance ()
  (when (eq OperatingSystems.jcell_instance :jnone) (setf OperatingSystems.jcell_instance (OperatingSystems.jnew_0)))
  OperatingSystems.jcell_instance)

    
(defun OperatingSystems.jnew_0 ()
  (let ((this (make-instance 'OperatingSystems)))
    (setf (slot-value this 'f_LINUX) "Linux")
    (setf (slot-value this 'f_WINDOWS) "Windows")
    (setf (slot-value this 'f_SOLARIS) "Solaris")
    (setf (slot-value this 'f_WINDOWS2000) "Windows 2000")
    (setf (slot-value this 'f_WINDOWS_NT) "Windows NT")
    (setf (slot-value this 'f_WINDOWS_10) "Windows 10")
    (setf (slot-value this 'f_WINDOWS_11) "Windows 11")
    (setf (slot-value this 'f_WINDOWS_VISTA) "Windows Vista")
    (setf (slot-value this 'f_WINDOWS_XP) "Windows XP")
    (setf (slot-value this 'f_ANDROID) (slot-value this 'f_LINUX))
    (setf (slot-value this 'f_HARMONY) "HarmonyOS")
    (setf (slot-value this 'f_unknownSpecificOSAllowed) t)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_isUnknownSpecificOSAllowed_0) (defgeneric jm_isUnknownSpecificOSAllowed_0 (this)))
(defmethod jm_isUnknownSpecificOSAllowed_0 ((this OperatingSystems))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_unknownSpecificOSAllowed)))))

    
(unless (fboundp 'jm_setUnknownSpecificOSAllowed_1) (defgeneric jm_setUnknownSpecificOSAllowed_1 (this p1)))
(defmethod jm_setUnknownSpecificOSAllowed_1 ((this OperatingSystems) _aUnknownSpecificOSAllowed)
  (declare (ignorable this _aUnknownSpecificOSAllowed))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_unknownSpecificOSAllowed) _aUnknownSpecificOSAllowed))))

    
(defun OperatingSystems.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (OperatingSystems.jstatic_instance)))))



