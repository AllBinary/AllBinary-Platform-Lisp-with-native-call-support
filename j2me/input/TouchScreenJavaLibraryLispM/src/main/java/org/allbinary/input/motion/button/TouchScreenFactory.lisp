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
  ((f_logUtil :initform nil)
   (f_touch :initform nil)
   (f_multiTouch :initform nil)
   (f_multiTouchDistinct :initform nil)
   (f_touchScreenType :initform nil)))

(defvar TouchScreenFactory.jcell_SINGLETON :jnone)
(defun TouchScreenFactory.jstatic_SINGLETON ()
  (when (eq TouchScreenFactory.jcell_SINGLETON :jnone) (setf TouchScreenFactory.jcell_SINGLETON (TouchScreenFactory.jnew_0)))
  TouchScreenFactory.jcell_SINGLETON)
(defun (setf TouchScreenFactory.jstatic_SINGLETON) (value) (setf TouchScreenFactory.jcell_SINGLETON value))

    
(defun TouchScreenFactory.jnew_0 ()
  (let ((this (make-instance 'TouchScreenFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    
    (setf (slot-value this 'f_touchScreenType) (slot-value (TouchScreenTypesFactory.jm_getInstance_0) 'f_NOTOUCH))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_setTouch_1 this t)
            (jm_setMultiTouch_1 this nil))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) (TouchScreenFactory.jstatic_SINGLETON) (slot-value _commonStrings 'f_GET_INSTANCE) _e)))))
    this))

    
(defun TouchScreenFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchScreenFactory.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_setMultiTouch_1) (defgeneric jm_setMultiTouch_1 (this p1)))
(defmethod jm_setMultiTouch_1 ((this TouchScreenFactory) _multiTouch)
  (declare (ignorable this _multiTouch))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_multiTouch) _multiTouch))))

    
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
    (block jreturn
        (setf (slot-value this 'f_touch) _touch))))

    
(unless (fboundp 'jm_isTouch_0) (defgeneric jm_isTouch_0 (this)))
(defmethod jm_isTouch_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touch)))))

    
(unless (fboundp 'jm_setMultiTouchDistinct_1) (defgeneric jm_setMultiTouchDistinct_1 (this p1)))
(defmethod jm_setMultiTouchDistinct_1 ((this TouchScreenFactory) _multiTouchDistinct)
  (declare (ignorable this _multiTouchDistinct))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_multiTouchDistinct) _multiTouchDistinct))))

    
(unless (fboundp 'jm_isMultiTouchDistinct_0) (defgeneric jm_isMultiTouchDistinct_0 (this)))
(defmethod jm_isMultiTouchDistinct_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_multiTouchDistinct)))))

    
(unless (fboundp 'jm_setTouchScreenType_1) (defgeneric jm_setTouchScreenType_1 (this p1)))
(defmethod jm_setTouchScreenType_1 ((this TouchScreenFactory) _touchScreenType)
  (declare (ignorable this _touchScreenType))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchScreenType) _touchScreenType))))

    
(unless (fboundp 'jm_getTouchScreenType_0) (defgeneric jm_getTouchScreenType_0 (this)))
(defmethod jm_getTouchScreenType_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touchScreenType)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TouchScreenFactory))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "TouchScreen: ")
        (jm_appendboolean_1 _stringBuffer (jm_isTouch_0 this))
        (jm_append_1 _stringBuffer " MultiTouch: ")
        (jm_appendboolean_1 _stringBuffer (jm_isMultiTouch_0 this))
        (jm_append_1 _stringBuffer " Distinct MultiTouch: ")
        (jm_appendboolean_1 _stringBuffer (jm_isMultiTouchDistinct_0 this))
        (jm_append_1 _stringBuffer " TouchScreenType: ")
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getTouchScreenType_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



