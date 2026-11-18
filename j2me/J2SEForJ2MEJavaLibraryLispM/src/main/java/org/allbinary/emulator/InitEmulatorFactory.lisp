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
;;;; package org.allbinary.emulator

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InitEmulatorFactory (JObject)
  ((f_initEmulator :initform nil)))

(defvar InitEmulatorFactory.jcell_instance :jnone)
(defun InitEmulatorFactory.jstatic_instance ()
  (when (eq InitEmulatorFactory.jcell_instance :jnone) (setf InitEmulatorFactory.jcell_instance (InitEmulatorFactory.jnew_0)))
  InitEmulatorFactory.jcell_instance)
(defun (setf InitEmulatorFactory.jstatic_instance) (value) (setf InitEmulatorFactory.jcell_instance value))

(defun InitEmulatorFactory.jnew_0 ()
  (let ((this (make-instance 'InitEmulatorFactory)))
    (setf (slot-value this 'f_initEmulator) nil)
    this))

    
(defun InitEmulatorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InitEmulatorFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_setInitEmulator_1) (defgeneric jm_setInitEmulator_1 (this p1)))
(defmethod jm_setInitEmulator_1 ((this InitEmulatorFactory) _initEmulator)
  (declare (ignorable this _initEmulator))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initEmulator) _initEmulator))))

    
(unless (fboundp 'jm_isInitEmulator_0) (defgeneric jm_isInitEmulator_0 (this)))
(defmethod jm_isInitEmulator_0 ((this InitEmulatorFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initEmulator)))))



