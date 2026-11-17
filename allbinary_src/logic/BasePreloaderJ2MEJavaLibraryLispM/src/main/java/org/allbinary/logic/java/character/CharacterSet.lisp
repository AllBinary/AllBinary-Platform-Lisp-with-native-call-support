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

;import java.nio.charset.Charset;
(defclass CharacterSet (JObject)
  ())

    
(defun CharacterSet.jnew_0 ()
  (let ((this (make-instance 'CharacterSet)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CharacterSet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn "Default Character Set: Empty Implementation"))))



