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

(defclass BasicPopupMenuPaintable (Paintable)
  ((f_basicSetColorUtil :initform nil)
   (f_drawStringUtil :initform nil)
   (f_label :initform nil)
   (f_foregroundBasicColor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_rectangle :initform nil)
   (f_BORDER :initform 0)
   (f_heightOffset :initform 0)
   (f_offset :initform 0)
   (f_animationInterface :initform nil)))

(defvar BasicPopupMenuPaintable.jcell_NAME :jnone)
(defun BasicPopupMenuPaintable.jstatic_NAME ()
  (when (eq BasicPopupMenuPaintable.jcell_NAME :jnone) (setf BasicPopupMenuPaintable.jcell_NAME "MENU"))
  BasicPopupMenuPaintable.jcell_NAME)
(defun (setf BasicPopupMenuPaintable.jstatic_NAME) (value) (setf BasicPopupMenuPaintable.jcell_NAME value))

    
(defun BasicPopupMenuPaintable.jnew_3 (_rectangle _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _rectangle _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'BasicPopupMenuPaintable)))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_drawStringUtil) (DrawVerticalStringUtil.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_foregroundBasicColor) _foregroundBasicColor)
        (setf (slot-value this 'f_label) (BasicPopupMenuPaintable.jstatic_NAME))
        (setf (slot-value this 'f_rectangle) _rectangle)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            (setf (slot-value this 'f_animationInterface) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0)))
            (progn
            (setf (slot-value this 'f_animationInterface) (RectangleFilledAnimation.jnew_3 (jm_getWidth_0 (slot-value this 'f_rectangle)) (jm_getHeight_0 (slot-value this 'f_rectangle)) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_TRANSPARENT_GREY)))))
        (jm_init_1 this _rectangle)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this BasicPopupMenuPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _features _isOpenGL _BORDER)
  (declare (ignorable _font _features _isOpenGL _BORDER))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf _features (Features.jm_getInstance_0))
        (setf _isOpenGL (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
        (jm_updateMeasurement_2 (slot-value this 'f_drawStringUtil) _graphics (slot-value this 'f_label))
        (setf _BORDER 0)
        (if (or (J2MEUtil.jm_isHTML_0) _isOpenGL)
            (progn
            (setf _BORDER (JR.idiv (MyFontProcessor.jm_defaultCharWidth_1 _font) 2)))
            (if (or (or (AndroidUtil.jm_isAndroid_0) (J2MEUtil.jm_isJ2SE_0)) (SWTUtil.jstatic_isSWT))
            (progn
            (setf _BORDER (MyFontProcessor.jm_defaultCharWidth_1 _font)))
            (progn
            (setf _BORDER (JR.i32 (* (MyFontProcessor.jm_defaultCharWidth_1 _font) 2))))))
        (setf (slot-value this 'f_BORDER) _BORDER)
        (setf (slot-value this 'f_heightOffset) (JR.i32 (- (jm_getHeight_0 (slot-value this 'f_rectangle)) (JR.i32 (* (jm_getHeight_0 _font) (jm_length_0 (BasicPopupMenuPaintable.jstatic_NAME)))))))
        (if (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0))
            (progn
            (setf (slot-value this 'f_heightOffset) (JR.i32 (- (slot-value this 'f_heightOffset) (JR.i32 (+ (jm_getHeight_0 _font) 2)))))
            (if (AndroidUtil.jm_isAndroid_0)
                (progn
                (setf (slot-value this 'f_heightOffset) (jm_getHeight_0 _font)))
                (progn
                (setf (slot-value this 'f_heightOffset) (JR.i32 (- (slot-value this 'f_heightOffset) (JR.i32 (+ (jm_getHeight_0 _font) 2)))))))))
        (setf (slot-value this 'f_offset) (JR.i32 (+ (ash (slot-value this 'f_heightOffset) (- (logand 1 31))) (if (jm_isJOGL_0 (SWTJOGLProcessor.jm_getInstance_0)) 4 0))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BasicPopupMenuPaintable) _rectangle)
  (declare (ignorable this _rectangle))
  (let (_width _height _rectangleFilledAnimation)
  (declare (ignorable _width _height _rectangleFilledAnimation))
    (block jreturn
        (setf (slot-value this 'f_rectangle) _rectangle)
        (setf _width (jm_getWidth_0 (slot-value this 'f_rectangle)))
        (setf _height (jm_getHeight_0 (slot-value this 'f_rectangle)))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            nil)
            (progn
            (setf _rectangleFilledAnimation (slot-value this 'f_animationInterface))
            (jm_setWidth_1 _rectangleFilledAnimation _width)
            (jm_setHeight_1 _rectangleFilledAnimation _height))))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BasicPopupMenuPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_point _x _y _width _height)
  (declare (ignorable _point _x _y _width _height))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _point (jm_getPoint_0 (slot-value this 'f_rectangle)))
        (setf _x (jm_getX_0 _point))
        (setf _y (jm_getY_0 _point))
        (setf _width (jm_getWidth_0 (slot-value this 'f_rectangle)))
        (setf _height (jm_getHeight_0 (slot-value this 'f_rectangle)))
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics _x _y)
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_foregroundBasicColor))
        (jm_paintVerticle_5 (slot-value this 'f_drawStringUtil) _graphics (slot-value this 'f_label) (JR.i32 (+ _x (slot-value this 'f_BORDER))) (JR.i32 (+ _y (slot-value this 'f_offset))) 0)
        (jm_drawRect_4 _graphics _x _y _width _height))))



