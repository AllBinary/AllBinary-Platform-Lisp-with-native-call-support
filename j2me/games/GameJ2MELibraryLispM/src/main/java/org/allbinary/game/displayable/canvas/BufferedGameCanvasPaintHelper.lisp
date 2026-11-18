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

(defclass BufferedGameCanvasPaintHelper (ProcessPaintable)
  ((f_gameCanvas :initform nil)
   (f_offScreenImage :initform nil)
   (f_previousImage :initform nil)
   (f_circularIndexUtil :initform nil)
   (f_drawCircularIndexUtil :initform nil)
   (f_anchor :initform 0)))

(defvar BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES :jnone)
(defun BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES ()
  (when (eq BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES :jnone) (setf BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES 4))
  BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES)
(defun (setf BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES) (value) (setf BufferedGameCanvasPaintHelper.jcell_MAX_IMAGES value))

    
(defun BufferedGameCanvasPaintHelper.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'BufferedGameCanvasPaintHelper)))
    (setf (slot-value this 'f_gameCanvas) (NullCanvas.jstatic_NULL_CANVAS))
    (setf (slot-value this 'f_offScreenImage) (JR.newArray nil (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (setf (slot-value this 'f_previousImage) (NullImage.jstatic_NULL_IMAGE))
    (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (setf (slot-value this 'f_drawCircularIndexUtil) (CircularIndexUtil.jm_createInstanceAt_2 (JR.i32 (- (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES) 1)) (BufferedGameCanvasPaintHelper.jstatic_MAX_IMAGES)))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" "No Longer Used"))))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this BufferedGameCanvasPaintHelper))
  (declare (ignorable this))
  (let (_myCanvas)
  (declare (ignorable _myCanvas))
    (block jreturn
        (setf _myCanvas (slot-value this 'f_gameCanvas))
        (jm_draw_1 _myCanvas (jm_getGraphics_0 (aref (slot-value this 'f_offScreenImage) (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))))
        (jm_next_0 (slot-value this 'f_circularIndexUtil))
        (jm_next_0 (slot-value this 'f_drawCircularIndexUtil)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this BufferedGameCanvasPaintHelper) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_previousImage) (aref (slot-value this 'f_offScreenImage) (jm_getIndex_0 (slot-value this 'f_drawCircularIndexUtil))))
        (jm_drawImage_4 _graphics (slot-value this 'f_previousImage) 0 0 (slot-value this 'f_anchor)))))



