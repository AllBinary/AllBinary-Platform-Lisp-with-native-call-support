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
;;;; package org.allbinary.game.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ABToGBUtil (JObject)
  ((f_abCanvas :initform nil)
   (f_allBinaryGameLayerManager :initform nil)))

(defvar ABToGBUtil.jcell_instance :jnone)
(defun ABToGBUtil.jstatic_instance ()
  (when (eq ABToGBUtil.jcell_instance :jnone) (setf ABToGBUtil.jcell_instance (ABToGBUtil.jnew_0)))
  ABToGBUtil.jcell_instance)
(defun (setf ABToGBUtil.jstatic_instance) (value) (setf ABToGBUtil.jcell_instance value))

(defun ABToGBUtil.jnew_0 ()
  (let ((this (make-instance 'ABToGBUtil)))
    (setf (slot-value this 'f_abCanvas) (NullCanvas.jstatic_NULL_CANVAS))
    (setf (slot-value this 'f_allBinaryGameLayerManager) (AllBinaryGameLayerManager.jm_getNullInstance_0))
    this))

    
(defun ABToGBUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ABToGBUtil.jstatic_instance)))))



