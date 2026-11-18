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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpecialMessageUtil (JObject)
  ())

(defvar SpecialMessageUtil.jcell_SINGLETON :jnone)
(defun SpecialMessageUtil.jstatic_SINGLETON ()
  (when (eq SpecialMessageUtil.jcell_SINGLETON :jnone) (setf SpecialMessageUtil.jcell_SINGLETON (SpecialMessageUtil.jnew_0)))
  SpecialMessageUtil.jcell_SINGLETON)
(defun (setf SpecialMessageUtil.jstatic_SINGLETON) (value) (setf SpecialMessageUtil.jcell_SINGLETON value))

(defun SpecialMessageUtil.jnew_0 ()
  (let ((this (make-instance 'SpecialMessageUtil)))
    this))

    
(defun SpecialMessageUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SpecialMessageUtil.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this SpecialMessageUtil))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (Memory.jm_getInfo_0))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (jm_toString_0 (GameStatisticsFactory.jm_getInstance_0)))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer " Option: ")
        (if (jm_isDefault_1 (Features.jm_getInstance_0) (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL_AUTO_SELECT))
            (progn
            (jm_append_1 _stringBuffer (jm_getName_0 (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL_AUTO_SELECT))))
            (progn
            (jm_append_1 _stringBuffer (jm_getName_0 (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL_MINIMUM)))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



