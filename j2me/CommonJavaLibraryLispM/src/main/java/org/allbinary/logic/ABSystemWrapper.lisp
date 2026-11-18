;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.logic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABSystemWrapper (JObject)
  ())

(defvar ABSystemWrapper.jcell_instance :jnone)
(defun ABSystemWrapper.jstatic_instance ()
  (when (eq ABSystemWrapper.jcell_instance :jnone) (setf ABSystemWrapper.jcell_instance (ABSystemWrapper.jnew_0)))
  ABSystemWrapper.jcell_instance)
(defun (setf ABSystemWrapper.jstatic_instance) (value) (setf ABSystemWrapper.jcell_instance value))

(defun ABSystemWrapper.jnew_0 ()
  (let ((this (make-instance 'ABSystemWrapper)))
    this))

    
(defun ABSystemWrapper.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ABSystemWrapper.jstatic_instance)))))

    
(unless (fboundp 'jm_arraycopy_5) (defgeneric jm_arraycopy_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_arraycopy_5 ((this ABSystemWrapper) _src _srcPos _dest _destPos _length)
  (declare (ignorable this _src _srcPos _dest _destPos _length))
  (let ()
    (block jreturn
        (JR.arraycopy _src _srcPos _dest _destPos _length))))

    
(unless (fboundp 'jm_currentTimeMillis_0) (defgeneric jm_currentTimeMillis_0 (this)))
(defmethod jm_currentTimeMillis_0 ((this ABSystemWrapper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.currentTimeMillis)))))



