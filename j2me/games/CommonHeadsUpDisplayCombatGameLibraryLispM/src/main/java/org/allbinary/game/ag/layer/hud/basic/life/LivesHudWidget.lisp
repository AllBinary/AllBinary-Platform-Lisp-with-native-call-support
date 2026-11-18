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
;;;; package org.allbinary.game.ag.layer.hud.basic.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LivesHudWidget (BasicHud)
  ((f_lifeInterface :initform nil)
   (f_xArray :initform nil)
   (f_animationInterface :initform nil)))

    
(defun LivesHudWidget.jnew_4 (_animationInterface _lifeInterface _location _direction)
  (declare (ignorable _animationInterface _lifeInterface _location _direction))
  (let ((this (make-instance 'LivesHudWidget)))
    
    
    
  (let (_size)
  (declare (ignorable _size))
    (block jreturn
        nil
        (setf (slot-value this 'f_lifeInterface) _lifeInterface)
        (setf _size (jm_getMaxlives_0 (jm_getLifeInterface_0 this)))
        (setf (slot-value this 'f_xArray) (JR.newArray 0 _size))
        (setf (slot-value this 'f_animationInterface) _animationInterface)
        (setf (slot-value this 'f_updateMaxWidth) (JR.i32 (* (jm_getMaxlives_0 (slot-value this 'f_lifeInterface)) 16)))
        (setf (slot-value this 'f_updateMaxHeight) 16)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this LivesHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_maxLives _index)
  (declare (ignorable _maxLives _index))
    (block jreturn
        (call-next-method this _graphics)
        (setf _maxLives (jm_getMaxlives_0 (jm_getLifeInterface_0 this)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _maxLives) do
                (block jcontinue
            (setf (aref (slot-value this 'f_xArray) _index) (JR.i32 (+ (jm_getX_0 this) (JR.i32 (* _index 16))))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_1) (defgeneric jm_onDisplayChangeEvent_1 (this p1)))
(defmethod jm_onDisplayChangeEvent_1 ((this LivesHudWidget) _displayChangeEvent)
  (declare (ignorable this _displayChangeEvent))
  (let ()
    (block jreturn
        (call-next-method this _displayChangeEvent)
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_setX_1) (defgeneric jm_setX_1 (this p1)))
(defmethod jm_setX_1 ((this LivesHudWidget) _x)
  (declare (ignorable this _x))
  (let ()
    (block jreturn
        (call-next-method this _x)
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this LivesHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (progn
            (setf _index (jm_get_0 (jm_getLifeInterface_0 this)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (aref (slot-value this 'f_xArray) _index) (jm_getY_0 this)))))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this LivesHudWidget) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getLifeInterface_0) (defgeneric jm_getLifeInterface_0 (this)))
(defmethod jm_getLifeInterface_0 ((this LivesHudWidget))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lifeInterface)))))



