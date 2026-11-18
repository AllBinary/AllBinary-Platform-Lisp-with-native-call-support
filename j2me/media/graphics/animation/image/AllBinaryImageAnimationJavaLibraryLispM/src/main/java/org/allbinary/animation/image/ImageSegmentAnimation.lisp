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
;;;; package org.allbinary.animation.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageSegmentAnimation (ImageAnimation)
  ((f_startX :initform 0)
   (f_startY :initform 0)
   (f_drawWidth :initform 0)
   (f_drawHeight :initform 0)
   (f_circularIndexUtil :initform nil)
   (f_sequenceArray :initform nil)))

    
(defun ImageSegmentAnimation.jnew_3 (_image _sequenceArray _animationBehavior)
  (declare (ignorable _image _sequenceArray _animationBehavior))
  (let ((this (make-instance 'ImageSegmentAnimation)))
    
    
    
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_startX) 0)
        (setf (slot-value this 'f_startY) 0)
        (setf (slot-value this 'f_drawWidth) (jm_getWidth_0 (jm_getImage_0 this)))
        (setf (slot-value this 'f_drawHeight) (jm_getHeight_0 (jm_getImage_0 this)))
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (slot-value this 'f_drawHeight)))
        (setf (slot-value this 'f_sequenceArray) _sequenceArray)))
    this))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_previousFrame_0) (defgeneric jm_previousFrame_0 (this)))
(defmethod jm_previousFrame_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_previous_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_setFrame_1) (defgeneric jm_setFrame_1 (this p1)))
(defmethod jm_setFrame_1 ((this ImageSegmentAnimation) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (jm_setIndex_1 (slot-value this 'f_circularIndexUtil) _index))))

    
(unless (fboundp 'jm_getFrame_0) (defgeneric jm_getFrame_0 (this)))
(defmethod jm_getFrame_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getIndex_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSize_0 (slot-value this 'f_circularIndexUtil))))))

    
(unless (fboundp 'jm_setSequence_1) (defgeneric jm_setSequence_1 (this p1)))
(defmethod jm_setSequence_1 ((this ImageSegmentAnimation) _sequenceArray)
  (declare (ignorable this _sequenceArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_sequenceArray) _sequenceArray))))

    
(unless (fboundp 'jm_getSequence_0) (defgeneric jm_getSequence_0 (this)))
(defmethod jm_getSequence_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_sequenceArray)))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this ImageSegmentAnimation) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getStartX_0) (defgeneric jm_getStartX_0 (this)))
(defmethod jm_getStartX_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startX)))))

    
(unless (fboundp 'jm_setStartX_1) (defgeneric jm_setStartX_1 (this p1)))
(defmethod jm_setStartX_1 ((this ImageSegmentAnimation) _startX)
  (declare (ignorable this _startX))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startX) _startX))))

    
(unless (fboundp 'jm_getStartY_0) (defgeneric jm_getStartY_0 (this)))
(defmethod jm_getStartY_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startY)))))

    
(unless (fboundp 'jm_setStartY_1) (defgeneric jm_setStartY_1 (this p1)))
(defmethod jm_setStartY_1 ((this ImageSegmentAnimation) _startY)
  (declare (ignorable this _startY))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startY) _startY))))

    
(unless (fboundp 'jm_getDrawWidth_0) (defgeneric jm_getDrawWidth_0 (this)))
(defmethod jm_getDrawWidth_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_drawWidth)))))

    
(unless (fboundp 'jm_setDrawWidth_1) (defgeneric jm_setDrawWidth_1 (this p1)))
(defmethod jm_setDrawWidth_1 ((this ImageSegmentAnimation) _drawWidth)
  (declare (ignorable this _drawWidth))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_drawWidth) _drawWidth))))

    
(unless (fboundp 'jm_getDrawHeight_0) (defgeneric jm_getDrawHeight_0 (this)))
(defmethod jm_getDrawHeight_0 ((this ImageSegmentAnimation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_drawHeight)))))

    
(unless (fboundp 'jm_setDrawHeight_1) (defgeneric jm_setDrawHeight_1 (this p1)))
(defmethod jm_setDrawHeight_1 ((this ImageSegmentAnimation) _drawHeight)
  (declare (ignorable this _drawHeight))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_drawHeight) _drawHeight))))



