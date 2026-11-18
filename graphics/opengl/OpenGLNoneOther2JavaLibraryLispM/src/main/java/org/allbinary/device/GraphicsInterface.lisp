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
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GraphicsInterface (JObject)
  ())

(defun GraphicsInterface.jnew_0 ()
  (let ((this (make-instance 'GraphicsInterface)))
    this))

    
(unless (fboundp 'jm_setFontDebug_2) (defgeneric jm_setFontDebug_2 (this p1 p2)))
(defmethod jm_setFontDebug_2 ((this GraphicsInterface) _font _fontDebug)
  (declare (ignorable this _font _fontDebug))
  (error (JR.newException "AbstractMethodError" "setFontDebug")))



