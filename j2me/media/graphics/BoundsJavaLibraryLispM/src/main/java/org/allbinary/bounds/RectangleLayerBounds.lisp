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
;;;; package org.allbinary.bounds

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RectangleLayerBounds (LayerBounds)
  ())

    
(defun RectangleLayerBounds.jnew_1 (_rectangle)
  (declare (ignorable _rectangle))
  (let ((this (make-instance 'RectangleLayerBounds)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this RectangleLayerBounds) _boundsVisitorInterface)
  (declare (ignorable this _boundsVisitorInterface))
  (let ()
    (block jreturn
        (if (> (jm_getX_0 _boundsVisitorInterface) (jm_getMaxX_0 (slot-value this 'f_rectangle)))
            (progn
            (jm_maxX_0 _boundsVisitorInterface)))
        (if (> (jm_getY_0 _boundsVisitorInterface) (jm_getMaxY_0 (slot-value this 'f_rectangle)))
            (progn
            (jm_maxY_0 _boundsVisitorInterface)))
        (if (< (jm_getX_0 _boundsVisitorInterface) (jm_getX_0 (jm_getPoint_0 (slot-value this 'f_rectangle))))
            (progn
            (jm_minX_0 _boundsVisitorInterface)))
        (if (< (jm_getY_0 _boundsVisitorInterface) (jm_getY_0 (jm_getPoint_0 (slot-value this 'f_rectangle))))
            (progn
            (jm_minY_0 _boundsVisitorInterface))))))



