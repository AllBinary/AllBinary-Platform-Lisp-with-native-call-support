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
;;;; package org.allbinary.game.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RepaintBehavior (JObject)
  ((f_logUtil :initform nil)
   (f_NAME :initform nil)))

(defvar RepaintBehavior.jcell_instance :jnone)
(defun RepaintBehavior.jstatic_instance ()
  (when (eq RepaintBehavior.jcell_instance :jnone) (setf RepaintBehavior.jcell_instance (RepaintBehavior.jnew_0)))
  RepaintBehavior.jcell_instance)
(defun (setf RepaintBehavior.jstatic_instance) (value) (setf RepaintBehavior.jcell_instance value))

(defun RepaintBehavior.jnew_0 ()
  (let ((this (make-instance 'RepaintBehavior)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_NAME) "RepaintBehavior")
    this))

    
(defun RepaintBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RepaintBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_repaint_1) (defgeneric jm_repaint_1 (this p1)))
(defmethod jm_repaint_1 ((this RepaintBehavior) _canvas)
  (declare (ignorable this _canvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onChangeRepaint_1) (defgeneric jm_onChangeRepaint_1 (this p1)))
(defmethod jm_onChangeRepaint_1 ((this RepaintBehavior) _canvas)
  (declare (ignorable this _canvas))
  (let (_features _openGLFeatureFactory _thread)
  (declare (ignorable _features _openGLFeatureFactory _thread))
    (block jreturn
        (setf _features (Features.jm_getInstance_0))
        (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (jm_isFeature_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL))
            (progn
            (jm_process_0 (DisplayInfoSingleton.jm_getInstance_0)))
            (progn
            (setf _thread (Thread.jnew_2 (RepaintRunnable.jnew_1 _canvas) (slot-value this 'f_NAME)))
            (jm_start_0 _thread))))))



