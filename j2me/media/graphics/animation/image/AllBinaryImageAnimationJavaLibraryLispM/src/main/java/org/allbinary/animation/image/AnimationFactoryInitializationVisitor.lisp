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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationFactoryInitializationVisitor (JObject)
  ((f_width :initform 0)
   (f_height :initform 0)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_originalDx :initform 0)
   (f_originalDy :initform 0)))

(defun AnimationFactoryInitializationVisitor.jnew_0 ()
  (let ((this (make-instance 'AnimationFactoryInitializationVisitor)))
    
    
    
    
    
    
    this))

    
(unless (fboundp 'jm_visit_0) (defgeneric jm_visit_0 (this)))
(defmethod jm_visit_0 ((this AnimationFactoryInitializationVisitor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AnimationFactoryInitializationVisitor))
  (declare (ignorable this))
  (let (_commonSeps _commonLabels _stringBuffer)
  (declare (ignorable _commonSeps _commonLabels _stringBuffer))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _commonLabels (CommonLabels.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_appendfloat_1 (jm_append_1 _stringBuffer (slot-value (PositionStrings.jm_getInstance_0) 'f_DX_LABEL)) (coerce (slot-value this 'f_dx) 'single-float))
        (jm_appendfloat_1 (jm_append_1 _stringBuffer (slot-value (PositionStrings.jm_getInstance_0) 'f_DY_LABEL)) (coerce (slot-value this 'f_dy) 'single-float))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_width))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_height))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



