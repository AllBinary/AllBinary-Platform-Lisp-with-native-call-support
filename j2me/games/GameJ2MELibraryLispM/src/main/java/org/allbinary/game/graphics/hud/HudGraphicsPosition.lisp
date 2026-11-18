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
;;;; package org.allbinary.game.graphics.hud

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HudGraphicsPosition (JObject)
  ((f_anchor :initform 0)
   (f_point :initform nil)))

(defvar HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION :jnone)
(defun HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION ()
  (when (eq HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION :jnone) (setf HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION (HudGraphicsPosition.jnew_2 (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO) 9)))
  HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION)
(defun (setf HudGraphicsPosition.jstatic_NULL_HUD_GRAPHICS_POSITION) (value) (setf HudGraphicsPosition.jcell_NULL_HUD_GRAPHICS_POSITION value))

    
(defun HudGraphicsPosition.jnew_2 (_point _anchor)
  (declare (ignorable _point _anchor))
  (let ((this (make-instance 'HudGraphicsPosition)))
    
    (setf (slot-value this 'f_point) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
  (let ()
    (block jreturn
        (jm_setAnchor_1 this _anchor)
        (jm_setPoint_1 this _point)))
    this))

    
(unless (fboundp 'jm_getAnchor_0) (defgeneric jm_getAnchor_0 (this)))
(defmethod jm_getAnchor_0 ((this HudGraphicsPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_anchor)))))

    
(unless (fboundp 'jm_setAnchor_1) (defgeneric jm_setAnchor_1 (this p1)))
(defmethod jm_setAnchor_1 ((this HudGraphicsPosition) _anchor)
  (declare (ignorable this _anchor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_anchor) _anchor))))

    
(unless (fboundp 'jm_getPoint_0) (defgeneric jm_getPoint_0 (this)))
(defmethod jm_getPoint_0 ((this HudGraphicsPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_point)))))

    
(unless (fboundp 'jm_setPoint_1) (defgeneric jm_setPoint_1 (this p1)))
(defmethod jm_setPoint_1 ((this HudGraphicsPosition) _point)
  (declare (ignorable this _point))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_point) _point))))



