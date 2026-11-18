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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FormUtil (JObject)
  ())

(defvar FormUtil.jcell_instance :jnone)
(defun FormUtil.jstatic_instance ()
  (when (eq FormUtil.jcell_instance :jnone) (setf FormUtil.jcell_instance (FormUtil.jnew_0)))
  FormUtil.jcell_instance)
(defun (setf FormUtil.jstatic_instance) (value) (setf FormUtil.jcell_instance value))

(defun FormUtil.jnew_0 ()
  (let ((this (make-instance 'FormUtil)))
    this))

    
(defun FormUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FormUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_createFormRectangle_0) (defgeneric jm_createFormRectangle_0 (this)))
(defmethod jm_createFormRectangle_0 ((this FormUtil))
  (declare (ignorable this))
  (let (_displayInfo _pointFactory _rectangle)
  (declare (ignorable _displayInfo _pointFactory _rectangle))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _rectangle (Rectangle.jnew_3 (jm_createXY_2 _pointFactory 30 10) (JR.i32 (- (jm_getLastWidth_0 _displayInfo) 30)) (JR.i32 (- (jm_getLastHeight_0 _displayInfo) 35))))
        (return-from jreturn _rectangle))))



