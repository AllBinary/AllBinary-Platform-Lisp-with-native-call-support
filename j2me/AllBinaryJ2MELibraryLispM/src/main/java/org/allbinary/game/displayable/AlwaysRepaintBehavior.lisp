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

(defclass AlwaysRepaintBehavior (RepaintBehavior)
  ((f_NAME :initform nil)))

(defvar AlwaysRepaintBehavior.jcell_instanceC :jnone)
(defun AlwaysRepaintBehavior.jstatic_instanceC ()
  (when (eq AlwaysRepaintBehavior.jcell_instanceC :jnone) (setf AlwaysRepaintBehavior.jcell_instanceC (AlwaysRepaintBehavior.jnew_0)))
  AlwaysRepaintBehavior.jcell_instanceC)
(defun (setf AlwaysRepaintBehavior.jstatic_instanceC) (value) (setf AlwaysRepaintBehavior.jcell_instanceC value))

(defun AlwaysRepaintBehavior.jnew_0 ()
  (let ((this (make-instance 'AlwaysRepaintBehavior)))
    (setf (slot-value this 'f_NAME) "AlwaysRepaintBehavior")
    this))

    
(defun AlwaysRepaintBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AlwaysRepaintBehavior.jstatic_instanceC)))))

    
(unless (fboundp 'jm_repaint_1) (defgeneric jm_repaint_1 (this p1)))
(defmethod jm_repaint_1 ((this AlwaysRepaintBehavior) _canvas)
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

    
(unless (fboundp 'jm_onChangeRepaint_1) (defgeneric jm_onChangeRepaint_1 (this p1)))
(defmethod jm_onChangeRepaint_1 ((this AlwaysRepaintBehavior) _canvas)
  (declare (ignorable this _canvas))
  (let ()
    (block jreturn nil)))



