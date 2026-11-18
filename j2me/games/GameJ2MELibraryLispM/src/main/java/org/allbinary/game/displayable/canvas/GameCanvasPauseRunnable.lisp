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

(defclass GameCanvasPauseRunnable (GameRunnable)
  ((f_logUtil :initform nil)
   (f_allBinaryGameCanvas :initform nil)))

    
(defun GameCanvasPauseRunnable.jnew_1 (_allBinaryGameCanvas)
  (declare (ignorable _allBinaryGameCanvas))
  (let ((this (make-instance 'GameCanvasPauseRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameCanvas) _allBinaryGameCanvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this GameCanvasPauseRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_processLoopSleep_0) (defgeneric jm_processLoopSleep_0 (this)))
(defmethod jm_processLoopSleep_0 ((this GameCanvasPauseRunnable))
  (declare (ignorable this))
  (let (_features _isOpenGL _commonStrings)
  (declare (ignorable _features _isOpenGL _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _features (Features.jm_getInstance_0))
            (setf _isOpenGL (jm_isDefault_1 _features (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
            (if _isOpenGL
                (progn
                (jm_processSleep_0 (slot-value this 'f_allBinaryGameCanvas)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))



