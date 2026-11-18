;;;; Generated Code Do Not Modify
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameAdStateFactory (JObject)
  ((f_gameAdStateArray :initform nil)
   (f_gameAdState :initform nil)))

(defvar GameAdStateFactory.jcell_instance :jnone)
(defun GameAdStateFactory.jstatic_instance ()
  (when (eq GameAdStateFactory.jcell_instance :jnone) (setf GameAdStateFactory.jcell_instance (GameAdStateFactory.jnew_0)))
  GameAdStateFactory.jcell_instance)
(defun (setf GameAdStateFactory.jstatic_instance) (value) (setf GameAdStateFactory.jcell_instance value))

(defun GameAdStateFactory.jnew_0 ()
  (let ((this (make-instance 'GameAdStateFactory)))
    (setf (slot-value this 'f_gameAdStateArray) (vector (GameAdState.jnew_1 (AppNameLicensingAdConfiguration.jnew_0))))
    (setf (slot-value this 'f_gameAdState) (aref (slot-value this 'f_gameAdStateArray) 0))
    this))

    
(defun GameAdStateFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameAdStateFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getCurrentInstance_0) (defgeneric jm_getCurrentInstance_0 (this)))
(defmethod jm_getCurrentInstance_0 ((this GameAdStateFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameAdState)))))

    
(unless (fboundp 'jm_getInstanceForApp_1) (defgeneric jm_getInstanceForApp_1 (this p1)))
(defmethod jm_getInstanceForApp_1 ((this GameAdStateFactory) _softwareInformation)
  (declare (ignorable this _softwareInformation))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameAdState) (aref (slot-value this 'f_gameAdStateArray) 0))
        (return-from jreturn (aref (slot-value this 'f_gameAdStateArray) 0)))))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this GameAdStateFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



