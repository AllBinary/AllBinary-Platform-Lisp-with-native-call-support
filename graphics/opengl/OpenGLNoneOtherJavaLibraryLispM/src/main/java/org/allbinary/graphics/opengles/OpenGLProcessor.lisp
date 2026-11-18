;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.opengles

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLProcessor (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)))

(defun OpenGLProcessor.jnew_0 ()
  (let ((this (make-instance 'OpenGLProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this OpenGLProcessor) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))



