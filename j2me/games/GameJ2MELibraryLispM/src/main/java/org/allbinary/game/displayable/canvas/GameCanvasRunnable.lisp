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

(defclass GameCanvasRunnable (GameRunnable)
  ((f_logUtil :initform nil)
   (f_gameTickDisplayInfoSingleton :initform nil)
   (f_allBinaryGameCanvas :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)))

    
(defun GameCanvasRunnable.jnew_1 (_allBinaryGameCanvas)
  (declare (ignorable _allBinaryGameCanvas))
  (let ((this (make-instance 'GameCanvasRunnable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_gameTickDisplayInfoSingleton) (GameTickDisplayInfoSingleton.jm_getInstance_0))
    
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameCanvas) _allBinaryGameCanvas)))
    this))

    
(unless (fboundp 'jm_run_0) (defgeneric jm_run_0 (this)))
(defmethod jm_run_0 ((this GameCanvasRunnable))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_setStartTime_1 (jm_getLoopTimeHelperP_0 (slot-value this 'f_allBinaryGameCanvas)) (jm_setStartTime_0 (slot-value this 'f_gameTickTimeDelayHelper)))
            (jm_update_0 (slot-value this 'f_gameTickDisplayInfoSingleton))
            (jm_processGame_0 (slot-value this 'f_allBinaryGameCanvas)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_RUN) _e))))))

    
(unless (fboundp 'jm_processLoopSleep_0) (defgeneric jm_processLoopSleep_0 (this)))
(defmethod jm_processLoopSleep_0 ((this GameCanvasRunnable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_processLoopSleep_0 (slot-value this 'f_allBinaryGameCanvas)))))



