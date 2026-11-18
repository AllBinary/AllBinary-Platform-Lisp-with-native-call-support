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
;;;; package org.allbinary.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass VectorInfo (JObject)
  ((f_width :initform 0)
   (f_height :initform 0)
   (f_points :initform nil)
   (f_totalFrames :initform 0)))

    
(defun VectorInfo.jnew_4 (_width _height _points _totalFrames)
  (declare (ignorable _width _height _points _totalFrames))
  (let ((this (make-instance 'VectorInfo)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width)
        (setf (slot-value this 'f_height) _height)
        (setf (slot-value this 'f_points) _points)
        (setf (slot-value this 'f_totalFrames) _totalFrames)))
    this))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this VectorInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_width)))))

    
(unless (fboundp 'jm_setWidth_1) (defgeneric jm_setWidth_1 (this p1)))
(defmethod jm_setWidth_1 ((this VectorInfo) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_width) _width))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this VectorInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_height)))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this VectorInfo) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_height) _height))))

    
(unless (fboundp 'jm_getPoints_0) (defgeneric jm_getPoints_0 (this)))
(defmethod jm_getPoints_0 ((this VectorInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_points)))))

    
(unless (fboundp 'jm_setPoints_1) (defgeneric jm_setPoints_1 (this p1)))
(defmethod jm_setPoints_1 ((this VectorInfo) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) _points))))

    
(unless (fboundp 'jm_getTotalFrames_0) (defgeneric jm_getTotalFrames_0 (this)))
(defmethod jm_getTotalFrames_0 ((this VectorInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalFrames)))))

    
(unless (fboundp 'jm_setTotalFrames_1) (defgeneric jm_setTotalFrames_1 (this p1)))
(defmethod jm_setTotalFrames_1 ((this VectorInfo) _totalFrames)
  (declare (ignorable this _totalFrames))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalFrames) _totalFrames))))



