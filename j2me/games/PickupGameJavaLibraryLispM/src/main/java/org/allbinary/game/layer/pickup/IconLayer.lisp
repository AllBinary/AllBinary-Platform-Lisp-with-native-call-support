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
;;;; package org.allbinary.game.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass IconLayer (AllBinaryLayer)
  ((f_animationInterface :initform nil)))

(defvar IconLayer.jcell_NULL_ICON_LAYER :jnone)
(defun IconLayer.jstatic_NULL_ICON_LAYER ()
  (when (eq IconLayer.jcell_NULL_ICON_LAYER :jnone) (setf IconLayer.jcell_NULL_ICON_LAYER (IconLayer.jnew_3 (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0) 0 0)))
  IconLayer.jcell_NULL_ICON_LAYER)
(defun (setf IconLayer.jstatic_NULL_ICON_LAYER) (value) (setf IconLayer.jcell_NULL_ICON_LAYER value))

    
(defun IconLayer.jnew_3 (_animationInterface _width _height)
  (declare (ignorable _animationInterface _width _height))
  (let ((this (make-instance 'IconLayer)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_animationInterface) _animationInterface)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this IconLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_animationInterface) _graphics (slot-value this 'f_x) (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this IconLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paintThreedXYZ_4 (slot-value this 'f_animationInterface) _graphics (slot-value this 'f_x) (slot-value this 'f_y) (slot-value this 'f_z)))))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this IconLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterface)))))



