;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenInfo (JObject)
  ((f_SMALL_WIDTH :initform 0)
   (f_SMALL_HEIGHT :initform 0)
   (f_MEDIUM_WIDTH :initform 0)
   (f_MEDIUM_HEIGHT :initform 0)))

(defvar ScreenInfo.jcell_instance :jnone)
(defun ScreenInfo.jstatic_instance ()
  (when (eq ScreenInfo.jcell_instance :jnone) (setf ScreenInfo.jcell_instance (ScreenInfo.jnew_0)))
  ScreenInfo.jcell_instance)
(defun (setf ScreenInfo.jstatic_instance) (value) (setf ScreenInfo.jcell_instance value))

(defun ScreenInfo.jnew_0 ()
  (let ((this (make-instance 'ScreenInfo)))
    (setf (slot-value this 'f_SMALL_WIDTH) 320)
    (setf (slot-value this 'f_SMALL_HEIGHT) 240)
    (setf (slot-value this 'f_MEDIUM_WIDTH) 800)
    (setf (slot-value this 'f_MEDIUM_HEIGHT) 600)
    this))

    
(defun ScreenInfo.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScreenInfo.jstatic_instance)))))



