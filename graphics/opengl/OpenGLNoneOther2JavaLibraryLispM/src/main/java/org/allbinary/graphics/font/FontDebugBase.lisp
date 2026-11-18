;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.font

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;OpenGLNoneOther2JavaLibrary
(defclass FontDebugBase (JObject)
  ((f_SET_FONT :initform nil)))

(defvar FontDebugBase.jcell_instanceBase :jnone)
(defun FontDebugBase.jstatic_instanceBase ()
  (when (eq FontDebugBase.jcell_instanceBase :jnone) (setf FontDebugBase.jcell_instanceBase (FontDebugBase.jnew_0)))
  FontDebugBase.jcell_instanceBase)
(defun (setf FontDebugBase.jstatic_instanceBase) (value) (setf FontDebugBase.jcell_instanceBase value))

(defun FontDebugBase.jnew_0 ()
  (let ((this (make-instance 'FontDebugBase)))
    (setf (slot-value this 'f_SET_FONT) "setFont")
    this))

    
(defun FontDebugBase.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FontDebugBase.jstatic_instanceBase)))))

    
(unless (fboundp 'jm_debugMetrics_4) (defgeneric jm_debugMetrics_4 (this p1 p2 p3 p4)))
(defmethod jm_debugMetrics_4 ((this FontDebugBase) _currentFont _convertedTextSize _displayMetrics _stringBuffer)
  (declare (ignorable this _currentFont _convertedTextSize _displayMetrics _stringBuffer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_debugDpi_2) (defgeneric jm_debugDpi_2 (this p1 p2)))
(defmethod jm_debugDpi_2 ((this FontDebugBase) _densityDpi _stringBuffer)
  (declare (ignorable this _densityDpi _stringBuffer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_debugDimension_4) (defgeneric jm_debugDimension_4 (this p1 p2 p3 p4)))
(defmethod jm_debugDimension_4 ((this FontDebugBase) _currentFont _convertedTextSize _longestDimensionTotalPixels _stringBuffer)
  (declare (ignorable this _currentFont _convertedTextSize _longestDimensionTotalPixels _stringBuffer))
  (let ()
    (block jreturn nil)))



