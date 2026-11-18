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

(defclass UpdateMyFontProcessor (MyFontProcessor)
  ((f_updateMeasurementProcessor :initform nil)))

    
(defun UpdateMyFontProcessor.jnew_1 (_keyValueDrawCharArray)
  (declare (ignorable _keyValueDrawCharArray))
  (let ((this (make-instance 'UpdateMyFontProcessor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_updateMeasurementProcessor) _keyValueDrawCharArray)))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this UpdateMyFontProcessor) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_updateMeasurement_1 (slot-value this 'f_updateMeasurementProcessor) _graphics))))



