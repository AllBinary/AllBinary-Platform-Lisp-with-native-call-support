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
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameTickDisplayInfoSingleton (JObject)
  ((f_displayInfoSingleton :initform nil)
   (f_lastWidth :initform 0)
   (f_lastHeight :initform 0)
   (f_lastHalfWidth :initform 0)
   (f_lastHalfHeight :initform 0)))

(defvar GameTickDisplayInfoSingleton.jcell_instance :jnone)
(defun GameTickDisplayInfoSingleton.jstatic_instance ()
  (when (eq GameTickDisplayInfoSingleton.jcell_instance :jnone) (setf GameTickDisplayInfoSingleton.jcell_instance (GameTickDisplayInfoSingleton.jnew_0)))
  GameTickDisplayInfoSingleton.jcell_instance)
(defun (setf GameTickDisplayInfoSingleton.jstatic_instance) (value) (setf GameTickDisplayInfoSingleton.jcell_instance value))

(defun GameTickDisplayInfoSingleton.jnew_0 ()
  (let ((this (make-instance 'GameTickDisplayInfoSingleton)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_lastWidth) (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)))
    (setf (slot-value this 'f_lastHeight) (jm_getLastHeight_0 (slot-value this 'f_displayInfoSingleton)))
    (setf (slot-value this 'f_lastHalfWidth) (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)))
    (setf (slot-value this 'f_lastHalfHeight) (jm_getLastHalfHeight_0 (slot-value this 'f_displayInfoSingleton)))
    this))

    
(defun GameTickDisplayInfoSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameTickDisplayInfoSingleton.jstatic_instance)))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameTickDisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lastWidth) (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (setf (slot-value this 'f_lastHeight) (jm_getLastHeight_0 (slot-value this 'f_displayInfoSingleton)))
        (setf (slot-value this 'f_lastHalfWidth) (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (setf (slot-value this 'f_lastHalfHeight) (jm_getLastHalfHeight_0 (slot-value this 'f_displayInfoSingleton))))))

    
(unless (fboundp 'jm_getLastWidth_0) (defgeneric jm_getLastWidth_0 (this)))
(defmethod jm_getLastWidth_0 ((this GameTickDisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastWidth)))))

    
(unless (fboundp 'jm_getLastHeight_0) (defgeneric jm_getLastHeight_0 (this)))
(defmethod jm_getLastHeight_0 ((this GameTickDisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastHeight)))))

    
(unless (fboundp 'jm_getLastHalfWidth_0) (defgeneric jm_getLastHalfWidth_0 (this)))
(defmethod jm_getLastHalfWidth_0 ((this GameTickDisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastHalfWidth)))))

    
(unless (fboundp 'jm_getLastHalfHeight_0) (defgeneric jm_getLastHalfHeight_0 (this)))
(defmethod jm_getLastHalfHeight_0 ((this GameTickDisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastHalfHeight)))))



