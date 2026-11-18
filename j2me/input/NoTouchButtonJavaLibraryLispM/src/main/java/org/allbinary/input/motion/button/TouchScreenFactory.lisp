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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchScreenFactory (JObject)
  ((f_multiTouch :initform nil)
   (f_touch :initform nil)
   (f_touchScreenType :initform nil)))

(defvar TouchScreenFactory.jcell_SINGLETON :jnone)
(defun TouchScreenFactory.jstatic_SINGLETON ()
  (when (eq TouchScreenFactory.jcell_SINGLETON :jnone) (setf TouchScreenFactory.jcell_SINGLETON (TouchScreenFactory.jnew_0)))
  TouchScreenFactory.jcell_SINGLETON)
(defun (setf TouchScreenFactory.jstatic_SINGLETON) (value) (setf TouchScreenFactory.jcell_SINGLETON value))

    
(defun TouchScreenFactory.jnew_0 ()
  (let ((this (make-instance 'TouchScreenFactory)))
    
    
    (setf (slot-value this 'f_touchScreenType) (slot-value (TouchScreenTypesFactory.jm_getInstance_0) 'f_NOTOUCH))
  (let ()
    (block jreturn nil))
    this))

    
(defun TouchScreenFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchScreenFactory.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_isMultiTouch_0) (defgeneric jm_isMultiTouch_0 (this)))
(defmethod jm_isMultiTouch_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_multiTouch)))))

    
(unless (fboundp 'jm_setTouch_1) (defgeneric jm_setTouch_1 (this p1)))
(defmethod jm_setTouch_1 ((this TouchScreenFactory) _touch)
  (declare (ignorable this _touch))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isTouch_0) (defgeneric jm_isTouch_0 (this)))
(defmethod jm_isTouch_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touch)))))

    
(unless (fboundp 'jm_getTouchScreenType_0) (defgeneric jm_getTouchScreenType_0 (this)))
(defmethod jm_getTouchScreenType_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touchScreenType)))))



