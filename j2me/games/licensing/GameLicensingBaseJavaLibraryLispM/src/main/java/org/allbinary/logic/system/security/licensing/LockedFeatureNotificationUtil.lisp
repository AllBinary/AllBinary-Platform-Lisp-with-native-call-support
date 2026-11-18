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

(defclass LockedFeatureNotificationUtil (JObject)
  ((f_gameNotificationEvent :initform nil)))

(defvar LockedFeatureNotificationUtil.jcell_instance :jnone)
(defun LockedFeatureNotificationUtil.jstatic_instance ()
  (when (eq LockedFeatureNotificationUtil.jcell_instance :jnone) (setf LockedFeatureNotificationUtil.jcell_instance (LockedFeatureNotificationUtil.jnew_0)))
  LockedFeatureNotificationUtil.jcell_instance)
(defun (setf LockedFeatureNotificationUtil.jstatic_instance) (value) (setf LockedFeatureNotificationUtil.jcell_instance value))

(defun LockedFeatureNotificationUtil.jnew_0 ()
  (let ((this (make-instance 'LockedFeatureNotificationUtil)))
    (setf (slot-value this 'f_gameNotificationEvent) (GameNotificationEvent.jnew_5 this (slot-value (LicenseStrings.jm_getInstance_0) 'f_LOCKED) (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 3) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED) (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))
    this))

    
(defun LockedFeatureNotificationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LockedFeatureNotificationUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_fire_0) (defgeneric jm_fire_0 (this)))
(defmethod jm_fire_0 ((this LockedFeatureNotificationUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (ErrorSound.jm_getInstance_0))
        (jm_fireEvent_1 (GameNotificationEventHandler.jm_getInstance_0) (slot-value this 'f_gameNotificationEvent)))))

    
(unless (fboundp 'jm_fireWithColor_1) (defgeneric jm_fireWithColor_1 (this p1)))
(defmethod jm_fireWithColor_1 ((this LockedFeatureNotificationUtil) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (jm_add_1 (PrimaryPlayerQueueFactory.jm_getInstance_0) (ErrorSound.jm_getInstance_0))
        (jm_setBasicColorP_1 (slot-value this 'f_gameNotificationEvent) _basicColor)
        (jm_fireEvent_1 (GameNotificationEventHandler.jm_getInstance_0) (slot-value this 'f_gameNotificationEvent)))))



