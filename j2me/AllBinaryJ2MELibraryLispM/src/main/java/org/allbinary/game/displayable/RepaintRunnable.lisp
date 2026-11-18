;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.game.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RepaintRunnable (ARunnable)
  ((f_canvas :initform nil)))

    
(defun RepaintRunnable.jnew_1 (_canvas)
  (declare (ignorable _canvas))
  (let ((this (make-instance 'RepaintRunnable)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_canvas) _canvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this RepaintRunnable))
  (declare (ignorable this))
  (let (_commonStrings _logUtil)
  (declare (ignorable _commonStrings _logUtil))
    (block jreturn
        (handler-case (progn
            (jm_repaint_0 (slot-value this 'f_canvas))
            (jm_process_0 (DisplayInfoSingleton.jm_getInstance_0)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))



