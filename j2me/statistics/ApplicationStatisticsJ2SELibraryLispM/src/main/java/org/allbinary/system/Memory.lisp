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
;;;; package org.allbinary.system

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass Memory (JObject)
  ())

(defun Memory.jnew_0 ()
  (let ((this (make-instance 'Memory)))
    this))

    
(defun Memory.jm_getInfo_0 ()
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Memory: Free: ")
        (jm_appendlong_1 _stringBuffer (jm_freeMemory_0 (Runtime.jm_getRuntime_0)))
        (jm_append_1 _stringBuffer " Max: ")
        (jm_appendlong_1 _stringBuffer (jm_maxMemory_0 (Runtime.jm_getRuntime_0)))
        (jm_append_1 _stringBuffer " Total: ")
        (jm_appendlong_1 _stringBuffer (jm_totalMemory_0 (Runtime.jm_getRuntime_0)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



