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
;;;; package org.allbinary.graphics.threed

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;OpenGLNone
(defclass SWTJOGLProcessor (JObject)
  ())

(defvar SWTJOGLProcessor.jcell_instance :jnone)
(defun SWTJOGLProcessor.jstatic_instance ()
  (when (eq SWTJOGLProcessor.jcell_instance :jnone) (setf SWTJOGLProcessor.jcell_instance (SWTJOGLProcessor.jnew_0)))
  SWTJOGLProcessor.jcell_instance)
(defun (setf SWTJOGLProcessor.jstatic_instance) (value) (setf SWTJOGLProcessor.jcell_instance value))

(defun SWTJOGLProcessor.jnew_0 ()
  (let ((this (make-instance 'SWTJOGLProcessor)))
    this))

    
(defun SWTJOGLProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SWTJOGLProcessor.jstatic_instance)))))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this SWTJOGLProcessor) _display _comp)
  (declare (ignorable this _display _comp))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isHolderCreated_0) (defgeneric jm_isHolderCreated_0 (this)))
(defmethod jm_isHolderCreated_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_setRenderer_1) (defgeneric jm_setRenderer_1 (this p1)))
(defmethod jm_setRenderer_1 ((this SWTJOGLProcessor) _renderer)
  (declare (ignorable this _renderer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isJOGL_0) (defgeneric jm_isJOGL_0 (this)))
(defmethod jm_isJOGL_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_createSurface_0) (defgeneric jm_createSurface_0 (this)))
(defmethod jm_createSurface_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSurfaceCreated_0) (defgeneric jm_onSurfaceCreated_0 (this)))
(defmethod jm_onSurfaceCreated_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSurfaceChangedForEvent_1) (defgeneric jm_onSurfaceChangedForEvent_1 (this p1)))
(defmethod jm_onSurfaceChangedForEvent_1 ((this SWTJOGLProcessor) _event)
  (declare (ignorable this _event))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSurfaceChanged_0) (defgeneric jm_onSurfaceChanged_0 (this)))
(defmethod jm_onSurfaceChanged_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onSurfaceChangedWH_2) (defgeneric jm_onSurfaceChangedWH_2 (this p1 p2)))
(defmethod jm_onSurfaceChangedWH_2 ((this SWTJOGLProcessor) _width _height)
  (declare (ignorable this _width _height))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addListener_0) (defgeneric jm_addListener_0 (this)))
(defmethod jm_addListener_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addListeners_1) (defgeneric jm_addListeners_1 (this p1)))
(defmethod jm_addListeners_1 ((this SWTJOGLProcessor) _midlet)
  (declare (ignorable this _midlet))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setCustom_3) (defgeneric jm_setCustom_3 (this p1 p2 p3)))
(defmethod jm_setCustom_3 ((this SWTJOGLProcessor) _width _height _ratio)
  (declare (ignorable this _width _height _ratio))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setRatioProcessor_1) (defgeneric jm_setRatioProcessor_1 (this p1)))
(defmethod jm_setRatioProcessor_1 ((this SWTJOGLProcessor) _ratioProcessor)
  (declare (ignorable this _ratioProcessor))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isPortraitRatioProcessor_0) (defgeneric jm_isPortraitRatioProcessor_0 (this)))
(defmethod jm_isPortraitRatioProcessor_0 ((this SWTJOGLProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_charWidth_2) (defgeneric jm_charWidth_2 (this p1 p2)))
(defmethod jm_charWidth_2 ((this SWTJOGLProcessor) _font _ch)
  (declare (ignorable this _font _ch))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_charsWidth_4) (defgeneric jm_charsWidth_4 (this p1 p2 p3 p4)))
(defmethod jm_charsWidth_4 ((this SWTJOGLProcessor) _font _ch _offset _length)
  (declare (ignorable this _font _ch _offset _length))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_stringWidth_2) (defgeneric jm_stringWidth_2 (this p1 p2)))
(defmethod jm_stringWidth_2 ((this SWTJOGLProcessor) _font _str)
  (declare (ignorable this _font _str))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_substringWidth_4) (defgeneric jm_substringWidth_4 (this p1 p2 p3 p4)))
(defmethod jm_substringWidth_4 ((this SWTJOGLProcessor) _font _str _offset _len)
  (declare (ignorable this _font _str _offset _len))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



