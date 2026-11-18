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
;;;; package org.allbinary.graphics.displayable.screen

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WebCommandProcessor (JObject)
  ((f_logUtil :initform nil)
   (f_aboutCommandProcessor :initform nil)
   (f_list :initform nil)))

(defvar WebCommandProcessor.jcell_instance :jnone)
(defun WebCommandProcessor.jstatic_instance ()
  (when (eq WebCommandProcessor.jcell_instance :jnone) (setf WebCommandProcessor.jcell_instance (WebCommandProcessor.jnew_0)))
  WebCommandProcessor.jcell_instance)
(defun (setf WebCommandProcessor.jstatic_instance) (value) (setf WebCommandProcessor.jcell_instance value))

(defun WebCommandProcessor.jnew_0 ()
  (let ((this (make-instance 'WebCommandProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_aboutCommandProcessor) (AboutCommandProcessor.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(defun WebCommandProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (WebCommandProcessor.jstatic_instance)))))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this WebCommandProcessor) _midletCommandListener _command _canvas)
  (declare (ignorable this _midletCommandListener _command _canvas))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (jm_removeAt_1 (slot-value this 'f_list) 0))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_PROCESS) _e))))))



