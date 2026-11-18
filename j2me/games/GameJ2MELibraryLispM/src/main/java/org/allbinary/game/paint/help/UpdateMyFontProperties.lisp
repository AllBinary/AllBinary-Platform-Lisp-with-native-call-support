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
;;;; package org.allbinary.game.paint.help

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass UpdateMyFontProperties (JObject)
  ((f_actionStringArray :initform nil)
   (f_keymappingBeginWidthArray :initform nil)
   (f_actionStringDeltaXArray :initform nil)
   (f_inputDeltaXArray :initform nil)
   (f_sepArray :initform nil)
   (f_sepWidthArray :initform nil)
   (f_charHeight :initform 0)))

(defun UpdateMyFontProperties.jnew_0 ()
  (let ((this (make-instance 'UpdateMyFontProperties)))
    (setf (slot-value this 'f_actionStringArray) (jm_getArrayInstance_0 (StringUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_keymappingBeginWidthArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY))
    (setf (slot-value this 'f_actionStringDeltaXArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY))
    (setf (slot-value this 'f_inputDeltaXArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY))
    (setf (slot-value this 'f_sepArray) (slot-value (StringUtil.jm_getInstance_0) 'f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS))
    (setf (slot-value this 'f_sepWidthArray) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY_ARRAY))
    
    this))



