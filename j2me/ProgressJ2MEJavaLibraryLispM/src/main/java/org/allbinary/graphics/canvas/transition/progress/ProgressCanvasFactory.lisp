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
;;;; package org.allbinary.graphics.canvas.transition.progress

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ProgressCanvasFactory (JObject)
  ())

(defvar ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN :jnone)
(defun ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN ()
  (when (eq ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN :jnone) (setf ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN)
(defun (setf ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN) (value) (setf ProgressCanvasFactory.jcell_PROGRESS_FORM_SCREEN value))

(defun ProgressCanvasFactory.jnew_0 ()
  (let ((this (make-instance 'ProgressCanvasFactory)))
    this))

    
(defun ProgressCanvasFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN) (ProgressCanvas.jnew_3 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (ProgressCanvasFactory.jstatic_PROGRESS_FORM_SCREEN)))))

    
(defun ProgressCanvasFactory.jm_getLazyInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullPaintable.jm_getInstance_0)))))



