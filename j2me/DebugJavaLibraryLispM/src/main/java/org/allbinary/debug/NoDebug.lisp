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
;;;; package org.allbinary.debug

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoDebug (JObject)
  ())

(defvar NoDebug.jcell_SINGLETON :jnone)
(defun NoDebug.jstatic_SINGLETON ()
  (when (eq NoDebug.jcell_SINGLETON :jnone) (setf NoDebug.jcell_SINGLETON (NoDebug.jnew_0)))
  NoDebug.jcell_SINGLETON)
(defun (setf NoDebug.jstatic_SINGLETON) (value) (setf NoDebug.jcell_SINGLETON value))

(defun NoDebug.jnew_0 ()
  (let ((this (make-instance 'NoDebug)))
    this))

    
(defun NoDebug.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoDebug.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this NoDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this NoDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getMaxTime_0) (defgeneric jm_getMaxTime_0 (this)))
(defmethod jm_getMaxTime_0 ((this NoDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 10000))))

    
(unless (fboundp 'jm_getStartTime_0) (defgeneric jm_getStartTime_0 (this)))
(defmethod jm_getStartTime_0 ((this NoDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_isRunning_0) (defgeneric jm_isRunning_0 (this)))
(defmethod jm_isRunning_0 ((this NoDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



