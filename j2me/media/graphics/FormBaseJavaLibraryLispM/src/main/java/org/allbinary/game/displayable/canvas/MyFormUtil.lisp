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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MyFormUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_popupMenuRectangle :initform nil)))

(defvar MyFormUtil.jcell_instance :jnone)
(defun MyFormUtil.jstatic_instance ()
  (when (eq MyFormUtil.jcell_instance :jnone) (setf MyFormUtil.jcell_instance (MyFormUtil.jnew_0)))
  MyFormUtil.jcell_instance)
(defun (setf MyFormUtil.jstatic_instance) (value) (setf MyFormUtil.jcell_instance value))

(defun MyFormUtil.jnew_0 ()
  (let ((this (make-instance 'MyFormUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_popupMenuRectangle) (RectangleFactory.jstatic_SINGLETON))
    this))

    
(defun MyFormUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MyFormUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this MyFormUtil) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _displayInfo _features _isOpenGL _TOTAL_CHAR_WIDTH _width _pointFactory)
  (declare (ignorable _font _displayInfo _features _isOpenGL _TOTAL_CHAR_WIDTH _width _pointFactory))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _features (Features.jm_getInstance_0))
        (setf _isOpenGL (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
        (setf _TOTAL_CHAR_WIDTH (if (and (jm_isJOGL_0 (SWTJOGLProcessor.jm_getInstance_0)) _isOpenGL) 2 3))
        (setf _width (MyFontProcessor.jm_defaultStringWidth_2 _font _TOTAL_CHAR_WIDTH))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (if (< (jm_getLastHeight_0 _displayInfo) 320)
            (progn
            (setf (slot-value this 'f_popupMenuRectangle) (Rectangle.jnew_3 (jm_createXY_2 _pointFactory 0 25) _width (JR.i32 (+ (JR.i32 (* (jm_getHeight_0 _font) 4)) 2)))))
            (progn
            (setf (slot-value this 'f_popupMenuRectangle) (Rectangle.jnew_3 (jm_createXY_2 _pointFactory 0 (JR.i32 (- (jm_getLastHalfHeight_0 _displayInfo) 70))) _width (JR.i32 (* (jm_getHeight_0 _font) 5)))))))))

    
(unless (fboundp 'jm_getPopupMenuRectangle_0) (defgeneric jm_getPopupMenuRectangle_0 (this)))
(defmethod jm_getPopupMenuRectangle_0 ((this MyFormUtil))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_popupMenuRectangle)))))



