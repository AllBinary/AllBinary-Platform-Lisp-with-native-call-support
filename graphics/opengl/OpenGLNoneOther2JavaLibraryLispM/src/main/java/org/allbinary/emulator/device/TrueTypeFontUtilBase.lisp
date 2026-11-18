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
;;;; package org.allbinary.emulator.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrueTypeFontUtilBase (JObject)
  ())

    
(defun TrueTypeFontUtilBase.jnew_1 (_scale)
  (declare (ignorable _scale))
  (let ((this (make-instance 'TrueTypeFontUtilBase)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getAsTextureSize_1) (defgeneric jm_getAsTextureSize_1 (this p1)))
(defmethod jm_getAsTextureSize_1 ((this TrueTypeFontUtilBase) _textureSize)
  (declare (ignorable this _textureSize))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_getCellSize_1) (defgeneric jm_getCellSize_1 (this p1)))
(defmethod jm_getCellSize_1 ((this TrueTypeFontUtilBase) _cellSize)
  (declare (ignorable this _cellSize))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))



