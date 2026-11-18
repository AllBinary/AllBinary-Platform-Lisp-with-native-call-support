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
;;;; package org.allbinary.animation.text

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextInterface (JObject)
  ())

(defun TextInterface.jnew_0 ()
  (let ((this (make-instance 'TextInterface)))
    this))

    
(unless (fboundp 'jm_setTextWithOnMeasure_2) (defgeneric jm_setTextWithOnMeasure_2 (this p1 p2)))
(defmethod jm_setTextWithOnMeasure_2 ((this TextInterface) _text _textChangeListener)
  (declare (ignorable this _text _textChangeListener))
  (error (JR.newException "AbstractMethodError" "setTextWithOnMeasure")))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this TextInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getText")))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this TextInterface) _text)
  (declare (ignorable this _text))
  (error (JR.newException "AbstractMethodError" "setText")))

    
(unless (fboundp 'jm_getFontHeight_0) (defgeneric jm_getFontHeight_0 (this)))
(defmethod jm_getFontHeight_0 ((this TextInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getFontHeight")))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this TextInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getWidth")))



