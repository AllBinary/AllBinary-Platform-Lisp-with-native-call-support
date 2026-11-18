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
;;;; package org.allbinary.animation.image.sprite

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SpriteIndexedAnimation (IndexedAnimation)
  ((f_sprite :initform nil)
   (f_image :initform nil)
   (f_basicColorArray :initform nil)))

    
(defun SpriteIndexedAnimation.jnew_4 (_sprite _image _basicColorArray _animationBehavior)
  (declare (ignorable _sprite _image _basicColorArray _animationBehavior))
  (let ((this (make-instance 'SpriteIndexedAnimation)))
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_sprite) _sprite)
        (setf (slot-value this 'f_image) _image)
        (setf (slot-value this 'f_basicColorArray) _basicColorArray)
        (if (and (/= (length (slot-value this 'f_basicColorArray)) 0) (/= (jm_getSize_0 this) (length (slot-value this 'f_basicColorArray))))
            (progn
            (error (JR.newException "Exception" (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_TOTAL_LABEL)) (jm_getSize_0 this)) "!=") (length (slot-value this 'f_basicColorArray))))))))))
    this))

    
(unless (fboundp 'jm_getAnimationSize_0) (defgeneric jm_getAnimationSize_0 (this)))
(defmethod jm_getAnimationSize_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this SpriteIndexedAnimation) _basicColor)
  (declare (ignorable this _basicColor))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length (slot-value this 'f_basicColorArray))) do
                (block jcontinue
            (if (eq _basicColor (aref (slot-value this 'f_basicColorArray) _index))
                (progn
                (jm_setFrame_1 this _index)
                (return-from jbreak))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (< (length (slot-value this 'f_basicColorArray)) (jm_getFrame_0 this))
            (progn
            (return-from jreturn (aref (slot-value this 'f_basicColorArray) (jm_getFrame_0 this))))
            (progn
            (return-from jreturn (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))))

    
(unless (fboundp 'jm_paintFrame_4) (defgeneric jm_paintFrame_4 (this p1 p2 p3 p4)))
(defmethod jm_paintFrame_4 ((this SpriteIndexedAnimation) _graphics _frame _x _y)
  (declare (ignorable this _graphics _frame _x _y))
  (let ()
    (block jreturn
        (jm_setFrame_1 this _frame)
        (jm_setPosition_2 (slot-value this 'f_sprite) _x _y)
        (jm_paint_1 (slot-value this 'f_sprite) _graphics))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this SpriteIndexedAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_setPosition_2 (slot-value this 'f_sprite) _x _y)
        (jm_paint_1 (slot-value this 'f_sprite) _graphics))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this SpriteIndexedAnimation) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_sprite) _graphics))))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_nextFrame_0 (slot-value this 'f_sprite)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_prevFrame_0 (slot-value this 'f_sprite)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRawFrameCount_0 (slot-value this 'f_sprite))))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this SpriteIndexedAnimation) _frame)
  (declare (ignorable this _frame))
  (let ()
    (block jreturn
        (jm_setFrame_1 (slot-value this 'f_sprite) _frame))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getFrame_0 (slot-value this 'f_sprite))))))

    
(unless (fboundp 'jm_isLastFrame_0) (defgeneric jm_isLastFrame_0 (this)))
(defmethod jm_isLastFrame_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (jm_getFrame_0 (slot-value this 'f_sprite)) (JR.i32 (- (jm_getSize_0 this) 1)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_getLastFrame_0) (defgeneric jm_getLastFrame_0 (this)))
(defmethod jm_getLastFrame_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 this)))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this SpriteIndexedAnimation) _sequence)
  (declare (ignorable this _sequence))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_finalize_0) (defgeneric jm_finalize_0 (this)))
(defmethod jm_finalize_0 ((this SpriteIndexedAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



