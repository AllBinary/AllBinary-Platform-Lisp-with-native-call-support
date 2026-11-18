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
;;;; package org.allbinary.game.combat.damage

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AnimationDamageFloaters (DamageFloaters)
  ((f_logUtil :initform nil)
   (f_layerInterface :initform nil)
   (f_animationInterfaceArray :initform nil)
   (f_circularIndexUtil :initform nil)
   (f_dx :initform 0)
   (f_dy :initform 0)))

    
(defun AnimationDamageFloaters.jnew_4 (_layerInterface _animationInterfaceArray _dx _dy)
  (declare (ignorable _layerInterface _animationInterfaceArray _dx _dy))
  (let ((this (make-instance 'AnimationDamageFloaters)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    
    
    
    
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (setf (slot-value this 'f_animationInterfaceArray) _animationInterfaceArray)
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_animationInterfaceArray)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_setFrame_1 (aref (slot-value this 'f_animationInterfaceArray) _index) (JR.i32 (- (jm_getSize_0 (aref (slot-value this 'f_animationInterfaceArray) _index)) 1))))
                (setf _index (JR.i32 (- _index 1))))))
        (setf (slot-value this 'f_layerInterface) _layerInterface)
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (length (slot-value this 'f_animationInterfaceArray))))
        (setf (slot-value this 'f_dx) _dx)
        (setf (slot-value this 'f_dy) _dy)))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this AnimationDamageFloaters) _damage)
  (declare (ignorable this _damage))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (setf _i (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_setFrame_1 (aref (slot-value this 'f_animationInterfaceArray) _i) 0)
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AnimationDamageFloaters) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _x _y _animationInterface _delta _index _commonStrings _canvasStrings)
  (declare (ignorable _viewPosition _x _y _animationInterface _delta _index _commonStrings _canvasStrings))
    (block jreturn
        (handler-case (progn
            (setf _viewPosition (jm_getViewPosition_0 (slot-value this 'f_layerInterface)))
            (setf _x (jm_getX_0 _viewPosition))
            (setf _y (jm_getY_0 _viewPosition))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (length (slot-value this 'f_animationInterfaceArray))) do
                    (block jcontinue
                (setf _animationInterface (aref (slot-value this 'f_animationInterfaceArray) _index))
                (if (< (jm_getFrame_0 _animationInterface) (JR.i32 (- (jm_getAnimationSize_0 _animationInterface) 1)))
                    (progn
                    (setf _delta (JR.i32 (* (jm_getFrame_0 _animationInterface) 20)))
                    (jm_paintXY_3 _animationInterface _graphics (JR.i32 (+ _x (slot-value this 'f_dx))) (JR.i32 (+ (JR.i32 (- _y _delta)) (slot-value this 'f_dy))))
                    (jm_nextFrame_0 _animationInterface))))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (setf _canvasStrings (CanvasStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _canvasStrings 'f_PAINT) _e))))))



