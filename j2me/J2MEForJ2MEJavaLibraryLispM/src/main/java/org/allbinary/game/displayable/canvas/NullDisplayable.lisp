;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2MEForJ2ME
(defclass NullDisplayable (Canvas)
  ((f_baseGameStatistics :initform nil)))

(defvar NullDisplayable.jcell_SINGLETON :jnone)
(defun NullDisplayable.jstatic_SINGLETON ()
  (when (eq NullDisplayable.jcell_SINGLETON :jnone) (setf NullDisplayable.jcell_SINGLETON (NullDisplayable.jnew_0)))
  NullDisplayable.jcell_SINGLETON)
(defun (setf NullDisplayable.jstatic_SINGLETON) (value) (setf NullDisplayable.jcell_SINGLETON value))

    
(defun NullDisplayable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullDisplayable.jstatic_SINGLETON)))))

    
(defun NullDisplayable.jnew_0 ()
  (let ((this (make-instance 'NullDisplayable)))
    (setf (slot-value this 'f_baseGameStatistics) (GameStatisticsFactory.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this NullDisplayable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_nextRefresh_0 (slot-value this 'f_baseGameStatistics)))))



