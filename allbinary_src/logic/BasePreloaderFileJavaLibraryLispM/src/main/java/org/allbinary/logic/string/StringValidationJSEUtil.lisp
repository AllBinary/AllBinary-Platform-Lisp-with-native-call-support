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
;;;; package org.allbinary.logic.string

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StringValidationJSEUtil (JObject)
  ())

    
(defun StringValidationJSEUtil.jnew_0 ()
  (let ((this (make-instance 'StringValidationJSEUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun StringValidationJSEUtil.jm_isBlank_1 (_string)
  (declare (ignorable _string))
  (let (_len _c _i)
  (declare (ignorable _len _c _i))
    (block jreturn
        (setf _len (length _string))
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i _len) do
                (block jcontinue
            (setf _c (JR.charAt _string _i))
            (if (eq (Character.jm_isWhitespace_1 _c) nil)
                (progn
                (return-from jreturn nil))))
                (setf _i (JR.i32 (+ _i 1))))))
        (return-from jreturn t))))



