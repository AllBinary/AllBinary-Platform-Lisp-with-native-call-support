;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThreadPoolStrings (JObject)
  ((f_ADD_TASK :initform nil)
   (f_START_TASK :initform nil)
   (f_COMPLETE_TASK :initform nil)))

(defvar ThreadPoolStrings.jcell_instance :jnone)
(defun ThreadPoolStrings.jstatic_instance ()
  (when (eq ThreadPoolStrings.jcell_instance :jnone) (setf ThreadPoolStrings.jcell_instance (ThreadPoolStrings.jnew_0)))
  ThreadPoolStrings.jcell_instance)

(defun ThreadPoolStrings.jnew_0 ()
  (let ((this (make-instance 'ThreadPoolStrings)))
    (setf (slot-value this 'f_ADD_TASK) "addTask")
    (setf (slot-value this 'f_START_TASK) "Started Task: ")
    (setf (slot-value this 'f_COMPLETE_TASK) "Completed Task: ")
    this))

    
(defun ThreadPoolStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThreadPoolStrings.jstatic_instance)))))



