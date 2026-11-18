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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Scoreable (JObject)
  ((f_points :initform 0)))

(defvar Scoreable.jcell_ID :jnone)
(defun Scoreable.jstatic_ID ()
  (when (eq Scoreable.jcell_ID :jnone) (setf Scoreable.jcell_ID (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 3)))
  Scoreable.jcell_ID)
(defun (setf Scoreable.jstatic_ID) (value) (setf Scoreable.jcell_ID value))

    
(defun Scoreable.jnew_1 (_points)
  (declare (ignorable _points))
  (let ((this (make-instance 'Scoreable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) _points)))
    this))

    
(unless (fboundp 'jm_addPoints_1) (defgeneric jm_addPoints_1 (this p1)))
(defmethod jm_addPoints_1 ((this Scoreable) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) (JR.i32 (+ (slot-value this 'f_points) _points))))))

    
(unless (fboundp 'jm_removePoints_1) (defgeneric jm_removePoints_1 (this p1)))
(defmethod jm_removePoints_1 ((this Scoreable) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) (JR.i32 (- (slot-value this 'f_points) _points))))))

    
(unless (fboundp 'jm_setPoints_1) (defgeneric jm_setPoints_1 (this p1)))
(defmethod jm_setPoints_1 ((this Scoreable) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_points) _points))))

    
(unless (fboundp 'jm_getPoints_0) (defgeneric jm_getPoints_0 (this)))
(defmethod jm_getPoints_0 ((this Scoreable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_points)))))



