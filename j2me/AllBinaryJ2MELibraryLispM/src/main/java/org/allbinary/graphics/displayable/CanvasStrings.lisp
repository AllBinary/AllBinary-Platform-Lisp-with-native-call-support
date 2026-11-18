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

(defclass CanvasStrings (JObject)
  ((f_CONSTRUCTOR :initform nil)
   (f_PAUSE :initform nil)
   (f_UN_PAUSE :initform nil)
   (f_SET_FULL_SCREEN_MODE :initform nil)
   (f_SIZE_CHANGED :initform nil)
   (f_SCALED_IMAGES :initform nil)
   (f_PAINT :initform nil)
   (f_ON_DISPLAY_CHANGE_EVENT :initform nil)
   (f_UPDATE_MEASUREMENT :initform nil)
   (f_FD_WIDTH :initform nil)
   (f_FD_HEIGHT :initform nil)
   (f_EMPTY_CHILD_NAME_LIST :initform nil)
   (f_ABOUT :initform nil)
   (f_OPTIONS :initform nil)
   (f_FONT_ATLAS :initform nil)
   (f_OBJ_MODEL :initform nil)
   (f_MD2_MODEL :initform nil)
   (f__PNG :initform nil)))

(defvar CanvasStrings.jcell_instance :jnone)
(defun CanvasStrings.jstatic_instance ()
  (when (eq CanvasStrings.jcell_instance :jnone) (setf CanvasStrings.jcell_instance (CanvasStrings.jnew_0)))
  CanvasStrings.jcell_instance)
(defun (setf CanvasStrings.jstatic_instance) (value) (setf CanvasStrings.jcell_instance value))

(defun CanvasStrings.jnew_0 ()
  (let ((this (make-instance 'CanvasStrings)))
    (setf (slot-value this 'f_CONSTRUCTOR) "MyCanvas::MyCanvas")
    (setf (slot-value this 'f_PAUSE) "MyCanvas::pause")
    (setf (slot-value this 'f_UN_PAUSE) "MyCanvas::unPause")
    (setf (slot-value this 'f_SET_FULL_SCREEN_MODE) "setFullScreenMode")
    (setf (slot-value this 'f_SIZE_CHANGED) "sizeChanged")
    (setf (slot-value this 'f_SCALED_IMAGES) "scaledImages")
    (setf (slot-value this 'f_PAINT) "paint")
    (setf (slot-value this 'f_ON_DISPLAY_CHANGE_EVENT) "onDisplayChangeEvent")
    (setf (slot-value this 'f_UPDATE_MEASUREMENT) "updateMeasurement")
    (setf (slot-value this 'f_FD_WIDTH) " font/display width: ")
    (setf (slot-value this 'f_FD_HEIGHT) " font/display height: ")
    (setf (slot-value this 'f_EMPTY_CHILD_NAME_LIST) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_ABOUT) "About")
    (setf (slot-value this 'f_OPTIONS) "Options")
    (setf (slot-value this 'f_FONT_ATLAS) "/font.png")
    (setf (slot-value this 'f_OBJ_MODEL) "_obj")
    (setf (slot-value this 'f_MD2_MODEL) "_md2")
    (setf (slot-value this 'f__PNG) ".png")
    this))

    
(defun CanvasStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CanvasStrings.jstatic_instance)))))



