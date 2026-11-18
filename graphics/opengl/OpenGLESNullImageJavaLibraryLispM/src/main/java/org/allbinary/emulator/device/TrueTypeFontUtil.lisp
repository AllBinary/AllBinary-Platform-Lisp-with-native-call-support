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
;;;; package org.allbinary.emulator.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrueTypeFontUtil (TrueTypeFontUtilBase)
  ((f_fontImage :initform nil)))

(defvar TrueTypeFontUtil.jcell_instance :jnone)
(defun TrueTypeFontUtil.jstatic_instance ()
  (when (eq TrueTypeFontUtil.jcell_instance :jnone) (setf TrueTypeFontUtil.jcell_instance (TrueTypeFontUtil.jnew_0)))
  TrueTypeFontUtil.jcell_instance)
(defun (setf TrueTypeFontUtil.jstatic_instance) (value) (setf TrueTypeFontUtil.jcell_instance value))

    
(defun TrueTypeFontUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TrueTypeFontUtil.jstatic_instance)))))

    
(defun TrueTypeFontUtil.jnew_0 ()
  (let ((this (make-instance 'TrueTypeFontUtil)))
    (setf (slot-value this 'f_fontImage) (OpenGLESImage.jstatic_NULL_OPENGL_IMAGE))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getAsTextureSize_1) (defgeneric jm_getAsTextureSize_1 (this p1)))
(defmethod jm_getAsTextureSize_1 ((this TrueTypeFontUtil) _textureSize)
  (declare (ignorable this _textureSize))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getCellSize_1) (defgeneric jm_getCellSize_1 (this p1)))
(defmethod jm_getCellSize_1 ((this TrueTypeFontUtil) _cellSize)
  (declare (ignorable this _cellSize))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getFontBitmap_4) (defgeneric jm_getFontBitmap_4 (this p1 p2 p3 p4)))
(defmethod jm_getFontBitmap_4 ((this TrueTypeFontUtil) _filename _fontSize _cellSize _basicColor)
  (declare (ignorable this _filename _fontSize _cellSize _basicColor))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_saveFontAtlasAsFile_0) (defgeneric jm_saveFontAtlasAsFile_0 (this)))
(defmethod jm_saveFontAtlasAsFile_0 ((this TrueTypeFontUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getFontBitmapGL_4) (defgeneric jm_getFontBitmapGL_4 (this p1 p2 p3 p4)))
(defmethod jm_getFontBitmapGL_4 ((this TrueTypeFontUtil) _gl _filename _cellSize _basicColor)
  (declare (ignorable this _gl _filename _cellSize _basicColor))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getFontWidths_2) (defgeneric jm_getFontWidths_2 (this p1 p2)))
(defmethod jm_getFontWidths_2 ((this TrueTypeFontUtil) _filename _fontSize)
  (declare (ignorable this _filename _fontSize))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



