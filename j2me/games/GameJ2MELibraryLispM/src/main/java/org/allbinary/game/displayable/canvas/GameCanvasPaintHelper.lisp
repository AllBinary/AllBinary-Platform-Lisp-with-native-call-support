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

(defclass GameCanvasPaintHelper (ProcessPaintable)
  ((f_gameCanvas :initform nil)))

    
(defun GameCanvasPaintHelper.jnew_1 (_gameCanvas)
  (declare (ignorable _gameCanvas))
  (let ((this (make-instance 'GameCanvasPaintHelper)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameCanvas) _gameCanvas)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this GameCanvasPaintHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this GameCanvasPaintHelper) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_draw_1 (slot-value this 'f_gameCanvas) _graphics))))



