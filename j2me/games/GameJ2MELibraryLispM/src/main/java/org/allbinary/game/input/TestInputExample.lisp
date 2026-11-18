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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TestInputExample (JObject)
  ((f_testValue :initform 0)))

(defun TestInputExample.jnew_0 ()
  (let ((this (make-instance 'TestInputExample)))
    
    this))

    
(unless (fboundp 'jm_up_0) (defgeneric jm_up_0 (this)))
(defmethod jm_up_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_down_0) (defgeneric jm_down_0 (this)))
(defmethod jm_down_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_left_0) (defgeneric jm_left_0 (this)))
(defmethod jm_left_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_testValue) (JR.i32 (+ (slot-value this 'f_testValue) 1))))))

    
(unless (fboundp 'jm_right_0) (defgeneric jm_right_0 (this)))
(defmethod jm_right_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_testValue) (JR.i32 (- (slot-value this 'f_testValue) 1))))))

    
(unless (fboundp 'jm_strafeLeft_0) (defgeneric jm_strafeLeft_0 (this)))
(defmethod jm_strafeLeft_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_strafeRight_0) (defgeneric jm_strafeRight_0 (this)))
(defmethod jm_strafeRight_0 ((this TestInputExample))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TestInputExample) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this TestInputExample) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



