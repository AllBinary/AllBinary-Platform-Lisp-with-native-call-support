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

(defclass FullTouchButton (TouchButton)
  ())

    
(defun FullTouchButton.jm_createButton_6 (_touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder)
  (declare (ignorable _touchButtonInput _touchButtonResource _rawRectangle _cellPosition _xBorder _yBorder))
  (let ()
    (block jreturn
        (return-from jreturn (FullTouchButton.jnew_7 _touchButtonInput (jm_getInstance_1 (jm_get_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value _touchButtonResource 'f_RESOURCE)) 0) (jm_getInstance_1 (jm_get_1 (FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0) (slot-value _touchButtonResource 'f_HINT)) 0) _rawRectangle _cellPosition _xBorder _yBorder)))))

    
(defun FullTouchButton.jnew_7 (_touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder)
  (declare (ignorable _touchButtonInput _animationInterface _hintAnimationInterface _rawRectangle _cellPosition _xBorder _yBorder))
  (let ((this (make-instance 'FullTouchButton)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_updateRectangle_0) (defgeneric jm_updateRectangle_0 (this)))
(defmethod jm_updateRectangle_0 ((this FullTouchButton))
  (declare (ignorable this))
  (let (_pointFactory _x _y _point)
  (declare (ignorable _pointFactory _x _y _point))
    (block jreturn
        (handler-case (progn
            (setf _pointFactory (PointFactory.jm_getInstance_0))
            (setf _x (JR.i32 (* (jm_getWidth_0 (slot-value this 'f_rawRectangle)) (jm_getColumn_0 (slot-value this 'f_cellPositionP)))))
            (setf _y (JR.i32 (* (jm_getHeight_0 (slot-value this 'f_rawRectangle)) (jm_getRow_0 (slot-value this 'f_cellPositionP)))))
            (setf (slot-value this 'f_rectangleP) (Rectangle.jnew_3 (jm_createXY_2 _pointFactory _x _y) (JR.i32 (+ (jm_getWidth_0 (slot-value this 'f_rawRectangle)) (JR.i32 (* 2 (slot-value this 'f_xBorder))))) (JR.i32 (+ (jm_getHeight_0 (slot-value this 'f_rawRectangle)) (JR.i32 (* 2 (slot-value this 'f_yBorder)))))))
            (setf _point (jm_getPoint_0 (slot-value this 'f_rectangleP)))
            (setf (slot-value this 'f_animationX) (JR.i32 (+ (jm_getX_0 _point) (slot-value this 'f_xBorder))))
            (setf (slot-value this 'f_animationY) (JR.i32 (+ (jm_getY_0 _point) (slot-value this 'f_yBorder))))
            (setf (slot-value this 'f_hintAnimationY) (ash (JR.i32 (- (slot-value this 'f_animationY) (jm_getHeight_0 (slot-value this 'f_rectangleP)))) (- (logand 1 31)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "updateRectangle" _e))))))



