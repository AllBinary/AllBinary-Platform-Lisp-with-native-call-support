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
;;;; package org.allbinary.graphics.form.item.validation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PasswordValidator (TextFieldItemValidator)
  ())

    
(defun PasswordValidator.jnew_4 (_textFieldItem _min _max _allowOnEmpty)
  (declare (ignorable _textFieldItem _min _max _allowOnEmpty))
  (let ((this (make-instance 'PasswordValidator)))
  (let ()
    (block jreturn
        nil))
    this))



