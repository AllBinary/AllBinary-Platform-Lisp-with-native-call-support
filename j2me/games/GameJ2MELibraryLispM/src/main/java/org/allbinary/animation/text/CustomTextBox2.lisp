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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomTextBox2 (CustomTextBox)
  ())

    
(defun CustomTextBox2.jnew_8 (_cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CustomTextBox2)))
  (let ()
    (block jreturn
        nil
        (jm_setFocus_1 (jm_getTextFieldItem_0 this) t)))
    this))



