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
;;;; package org.allbinary.thread

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThreadFactoryUtil (JObject)
  ((f_logUtil :initform nil)))

(defvar ThreadFactoryUtil.jcell_instance :jnone)
(defun ThreadFactoryUtil.jstatic_instance ()
  (when (eq ThreadFactoryUtil.jcell_instance :jnone) (setf ThreadFactoryUtil.jcell_instance (ThreadFactoryUtil.jnew_0)))
  ThreadFactoryUtil.jcell_instance)
(defun (setf ThreadFactoryUtil.jstatic_instance) (value) (setf ThreadFactoryUtil.jcell_instance value))

(defun ThreadFactoryUtil.jnew_0 ()
  (let ((this (make-instance 'ThreadFactoryUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun ThreadFactoryUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThreadFactoryUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceGameCanvasRunnable_1) (defgeneric jm_getInstanceGameCanvasRunnable_1 (this p1)))
(defmethod jm_getInstanceGameCanvasRunnable_1 ((this ThreadFactoryUtil) _runnable)
  (declare (ignorable this _runnable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstanceType_2 this _runnable (jm_getType_0 _runnable))))))

    
(unless (fboundp 'jm_getInstanceForRunnable_1) (defgeneric jm_getInstanceForRunnable_1 (this p1)))
(defmethod jm_getInstanceForRunnable_1 ((this ThreadFactoryUtil) _runnable)
  (declare (ignorable this _runnable))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInstanceType_2 this _runnable (jm_getType_0 _runnable))))))

    
(unless (fboundp 'jm_getInstanceType_2) (defgeneric jm_getInstanceType_2 (this p1 p2)))
(defmethod jm_getInstanceType_2 ((this ThreadFactoryUtil) _runnable _type)
  (declare (ignorable this _runnable _type))
  (let (_commonStrings _primaryThreadPool _demoGameSingleThreadStartRunnable _thread)
  (declare (ignorable _commonStrings _primaryThreadPool _demoGameSingleThreadStartRunnable _thread))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (if (J2MEUtil.jm_isHTML_0)
            (progn
            (if (or (= _type (DemoCanvas.jstatic_TYPE)) (= _type (AllBinaryGameCanvas.jstatic_TYPE)))
                (progn
                (setf _demoGameSingleThreadStartRunnable (RunnableCanvasSingleThreadStartRunnable.jnew_1 _runnable))
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _runnable))) this (slot-value _commonStrings 'f_CONSTRUCTOR))
                (setf _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
                (jm_runTask_1 _primaryThreadPool _demoGameSingleThreadStartRunnable))
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Using Pseudo Thread for Runnable under PlayN/HTML5: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _runnable))) this (slot-value _commonStrings 'f_CONSTRUCTOR))
                (setf _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
                (jm_runTask_1 _primaryThreadPool _runnable)))))
        (setf _thread (Thread.jnew_2 _runnable (jm_toString_0 _runnable)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _thread) this (slot-value _commonStrings 'f_CONSTRUCTOR))
        (return-from jreturn _thread))))

    
(unless (fboundp 'jm_start_1) (defgeneric jm_start_1 (this p1)))
(defmethod jm_start_1 ((this ThreadFactoryUtil) _thread)
  (declare (ignorable this _thread))
  (let ()
    (block jreturn
        (jm_start_0 _thread))))



