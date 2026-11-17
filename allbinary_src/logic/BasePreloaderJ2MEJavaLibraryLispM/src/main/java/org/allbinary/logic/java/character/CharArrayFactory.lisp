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
;;;; package org.allbinary.logic.java.character

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CharArrayFactory (JObject)
  ((f_zeroCharArray :initform nil)))

(defvar CharArrayFactory.jcell_instance :jnone)
(defun CharArrayFactory.jstatic_instance ()
  (when (eq CharArrayFactory.jcell_instance :jnone) (setf CharArrayFactory.jcell_instance (CharArrayFactory.jnew_0)))
  CharArrayFactory.jcell_instance)

(defun CharArrayFactory.jnew_0 ()
  (let ((this (make-instance 'CharArrayFactory)))
    (setf (slot-value this 'f_zeroCharArray) (JR.newArray 0 0))
    this))

    
(defun CharArrayFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CharArrayFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getZeroCharArray_0) (defgeneric jm_getZeroCharArray_0 (this)))
(defmethod jm_getZeroCharArray_0 ((this CharArrayFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_zeroCharArray)))))



