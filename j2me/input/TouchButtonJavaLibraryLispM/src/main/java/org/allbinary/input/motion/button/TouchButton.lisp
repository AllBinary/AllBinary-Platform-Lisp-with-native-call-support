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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButton (Paintable)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_touchButtonInput :initform nil)
   (f_animationInterface :initform nil)
   (f_hintAnimationInterface :initform nil)
   (f_rawRectangle :initform nil)
   (f_xBorder :initform 0)
   (f_yBorder :initform 0)
   (f_rectangleP :initform nil)
   (f_cellPositionP :initform nil)
   (f_animationX :initform 0)
   (f_animationY :initform 0)
   (f_hintAnimationY :initform 0)))

    
(defun TouchButton.jm_createButton_6 (_touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder)
  (declare (ignorable _touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder))
  (let ()
    (block jreturn
        (return-from jreturn (TouchButton.jnew_7 _touchButtonInput (jm_getInstance_1 (jm_get_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value _touchButtonResource 'f_RESOURCE)) 0) (jm_getInstance_1 (jm_get_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value _touchButtonResource 'f_HINT)) 0) _rawRectangle _cellPosition _xBorder _yBorder)))))

    
(defun TouchButton.jnew_7 (_touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder)
  (declare (ignorable _touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder))
  (let ((this (make-instance 'TouchButton)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    (setf (slot-value this 'f_rectangleP) (RectangleFactory.jstatic_SINGLETON))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_touchButtonInput) _touchButtonInput)
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_hintAnimationInterface) _hintAnimationInterface)
        (setf (slot-value this 'f_rawRectangle) _rawRectangle)
        (setf (slot-value this 'f_cellPositionP) _cellPosition)
        (setf (slot-value this 'f_xBorder) _xBorder)
        (setf (slot-value this 'f_yBorder) _yBorder)
        (jm_updateRectangle_0 this)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Created: ") (jm_toString_0 this))) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))))
    this))

    
(unless (fboundp 'jm_paintHint_1) (defgeneric jm_paintHint_1 (this p1)))
(defmethod jm_paintHint_1 ((this TouchButton) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_hintAnimationInterface) _graphics (slot-value this 'f_animationX) (slot-value this 'f_hintAnimationY)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TouchButton) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (slot-value this 'f_animationX) (slot-value this 'f_animationY)))))

    
(unless (fboundp 'jm_updateRectangle_0) (defgeneric jm_updateRectangle_0 (this)))
(defmethod jm_updateRectangle_0 ((this TouchButton))
  (declare (ignorable this))
  (let (_pointFactory _x _y _point)
  (declare (ignorable _pointFactory _x _y _point))
    (block jreturn
        (handler-case (progn
            (setf _pointFactory (PointFactory.jm_getInstance_0))
            (setf _x (JR.i32 (* (jm_getWidth_0 (slot-value this 'f_rawRectangle)) (jm_getColumn_0 (slot-value this 'f_cellPositionP)))))
            (setf _y (JR.i32 (* (jm_getHeight_0 (slot-value this 'f_rawRectangle)) (jm_getRow_0 (slot-value this 'f_cellPositionP)))))
            (setf (slot-value this 'f_rectangleP) (Rectangle.jnew_3 (jm_createXY_2 _pointFactory (JR.i32 (+ _x (slot-value this 'f_xBorder))) (JR.i32 (+ _y (slot-value this 'f_yBorder)))) (jm_getWidth_0 (slot-value this 'f_rawRectangle)) (jm_getHeight_0 (slot-value this 'f_rawRectangle))))
            (setf _point (jm_getPoint_0 (slot-value this 'f_rectangleP)))
            (setf (slot-value this 'f_animationX) (jm_getX_0 _point))
            (setf (slot-value this 'f_animationY) (jm_getY_0 _point))
            (setf (slot-value this 'f_hintAnimationY) (JR.i32 (- (slot-value this 'f_animationY) 32))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "updateRectangle" _e))))))

    
(unless (fboundp 'jm_getCellPosition_0) (defgeneric jm_getCellPosition_0 (this)))
(defmethod jm_getCellPosition_0 ((this TouchButton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_cellPositionP)))))

    
(unless (fboundp 'jm_getRectangle_0) (defgeneric jm_getRectangle_0 (this)))
(defmethod jm_getRectangle_0 ((this TouchButton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rectangleP)))))

    
(unless (fboundp 'jm_getTouchButtonInput_0) (defgeneric jm_getTouchButtonInput_0 (this)))
(defmethod jm_getTouchButtonInput_0 ((this TouchButton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_touchButtonInput)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TouchButton))
  (declare (ignorable this))
  (let (_stringBuffer _stringUtil)
  (declare (ignorable _stringBuffer _stringUtil))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (jm_append_1 _stringBuffer "TouchButton: ")
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (jm_getRectangle_0 this)))
        (jm_append_1 _stringBuffer " CellPosition: ")
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil (slot-value this 'f_cellPositionP)))
        (jm_append_1 _stringBuffer " xBorder: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_xBorder))
        (jm_append_1 _stringBuffer " yBorder: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_yBorder))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



