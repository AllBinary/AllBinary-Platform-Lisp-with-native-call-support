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
;;;; package org.allbinary.game.ag.layer.pickup.points

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PointsLayer (AllBinaryLayer)
  ((f_points :initform 0)))

    
(defun PointsLayer.jnew_1 (_points)
  (declare (ignorable _points))
  (let ((this (make-instance 'PointsLayer)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_points) _points)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PointsLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this PointsLayer) _scoreableInterface)
  (declare (ignorable this _scoreableInterface))
  (let ()
    (block jreturn
        (jm_addPoints_1 _scoreableInterface (slot-value this 'f_points)))))



