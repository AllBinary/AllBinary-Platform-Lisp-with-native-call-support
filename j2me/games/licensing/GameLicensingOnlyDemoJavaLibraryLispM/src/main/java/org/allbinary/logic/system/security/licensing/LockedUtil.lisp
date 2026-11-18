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

(defclass LockedUtil (JObject)
  ())

(defvar LockedUtil.jcell_instance :jnone)
(defun LockedUtil.jstatic_instance ()
  (when (eq LockedUtil.jcell_instance :jnone) (setf LockedUtil.jcell_instance (LockedUtil.jnew_0)))
  LockedUtil.jcell_instance)
(defun (setf LockedUtil.jstatic_instance) (value) (setf LockedUtil.jcell_instance value))

(defun LockedUtil.jnew_0 ()
  (let ((this (make-instance 'LockedUtil)))
    this))

    
(defun LockedUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LockedUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_isLocked_0) (defgeneric jm_isLocked_0 (this)))
(defmethod jm_isLocked_0 ((this LockedUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isLockedFeature_1) (defgeneric jm_isLockedFeature_1 (this p1)))
(defmethod jm_isLockedFeature_1 ((this LockedUtil) _lockableFeatrue)
  (declare (ignorable this _lockableFeatrue))
  (let ()
    (block jreturn
        (return-from jreturn t))))



