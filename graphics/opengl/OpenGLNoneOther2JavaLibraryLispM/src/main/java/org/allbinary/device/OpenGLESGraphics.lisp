;;;; Generated Code Do Not Modify
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass OpenGLESGraphics (Graphics)
  ((f_commonStrings :initform nil)
   (f_gl :initform nil)))

    
(defun OpenGLESGraphics.jnew_0 ()
  (let ((this (make-instance 'OpenGLESGraphics)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_gl) (NullGL10.jstatic_NULL_GL10))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_updateGL_1) (defgeneric jm_updateGL_1 (this p1)))
(defmethod jm_updateGL_1 ((this OpenGLESGraphics) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this OpenGLESGraphics) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this OpenGLESGraphics))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this OpenGLESGraphics))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setOrthoginalMode_0) (defgeneric jm_setOrthoginalMode_0 (this)))
(defmethod jm_setOrthoginalMode_0 ((this OpenGLESGraphics))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setCameraMode_0) (defgeneric jm_setCameraMode_0 (this)))
(defmethod jm_setCameraMode_0 ((this OpenGLESGraphics))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getGl10_0) (defgeneric jm_getGl10_0 (this)))
(defmethod jm_getGl10_0 ((this OpenGLESGraphics))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gl)))))

    
(unless (fboundp 'jm_setFontDebug_2) (defgeneric jm_setFontDebug_2 (this p1 p2)))
(defmethod jm_setFontDebug_2 ((this OpenGLESGraphics) _font _fontDebug)
  (declare (ignorable this _font _fontDebug))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



