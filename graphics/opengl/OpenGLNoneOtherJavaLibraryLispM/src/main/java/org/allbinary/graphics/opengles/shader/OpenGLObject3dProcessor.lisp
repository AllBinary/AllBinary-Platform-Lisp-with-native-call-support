;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.opengles.shader

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLObject3dProcessor (JObject)
  ((f_commonStrings :initform nil)))

(defun OpenGLObject3dProcessor.jnew_0 ()
  (let ((this (make-instance 'OpenGLObject3dProcessor)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this OpenGLObject3dProcessor) _gl _object3d)
  (declare (ignorable this _gl _object3d))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this OpenGLObject3dProcessor) _gl _object3d _index)
  (declare (ignorable this _gl _object3d _index))
  (let ()
    (block jreturn nil)))



