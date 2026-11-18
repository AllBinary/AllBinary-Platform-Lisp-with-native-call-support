;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.graphics.font

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MyFontProcessor (JObject)
  ())

(defvar MyFontProcessor.jcell_instance :jnone)
(defun MyFontProcessor.jstatic_instance ()
  (when (eq MyFontProcessor.jcell_instance :jnone) (setf MyFontProcessor.jcell_instance (MyFontProcessor.jnew_0)))
  MyFontProcessor.jcell_instance)
(defun (setf MyFontProcessor.jstatic_instance) (value) (setf MyFontProcessor.jcell_instance value))

(defun MyFontProcessor.jnew_0 ()
  (let ((this (make-instance 'MyFontProcessor)))
    this))

    
(defun MyFontProcessor.jm_defaultCharWidth_1 (_font)
  (declare (ignorable _font))
  (let ()
    (block jreturn
        (return-from jreturn (jm_charWidth_1 _font (char-code #\C))))))

    
(defun MyFontProcessor.jm_defaultStringWidth_2 (_font _size)
  (declare (ignorable _font _size))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (* (MyFontProcessor.jm_defaultCharWidth_1 _font) _size))))))

    
(defun MyFontProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MyFontProcessor.jstatic_instance)))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this MyFontProcessor) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



