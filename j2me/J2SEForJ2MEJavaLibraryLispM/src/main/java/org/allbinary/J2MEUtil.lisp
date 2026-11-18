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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass J2MEUtil (JObject)
  ())

    
(defun J2MEUtil.jnew_0 ()
  (let ((this (make-instance 'J2MEUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun J2MEUtil.jm_isJ2ME_0 ()
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(defun J2MEUtil.jm_isJ2SE_0 ()
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(defun J2MEUtil.jm_isHTML_0 ()
  (let ()
    (block jreturn
        (return-from jreturn nil))))



