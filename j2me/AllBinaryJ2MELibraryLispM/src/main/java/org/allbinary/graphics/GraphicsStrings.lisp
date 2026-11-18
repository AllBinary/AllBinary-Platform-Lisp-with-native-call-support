;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GraphicsStrings (JObject)
  ((f_ANIMATION :initform nil)
   (f_ANGLE :initform nil)
   (f_MOVEMENT_ANGLE :initform nil)
   (f_ROTATION :initform nil)
   (f_OPACITY :initform nil)
   (f_HTML :initform nil)
   (f_WIDTH :initform nil)
   (f_HEIGHT :initform nil)))

(defvar GraphicsStrings.jcell_instance :jnone)
(defun GraphicsStrings.jstatic_instance ()
  (when (eq GraphicsStrings.jcell_instance :jnone) (setf GraphicsStrings.jcell_instance (GraphicsStrings.jnew_0)))
  GraphicsStrings.jcell_instance)
(defun (setf GraphicsStrings.jstatic_instance) (value) (setf GraphicsStrings.jcell_instance value))

(defun GraphicsStrings.jnew_0 ()
  (let ((this (make-instance 'GraphicsStrings)))
    (setf (slot-value this 'f_ANIMATION) "animation")
    (setf (slot-value this 'f_ANGLE) "angle")
    (setf (slot-value this 'f_MOVEMENT_ANGLE) "movement_angle")
    (setf (slot-value this 'f_ROTATION) "rotation")
    (setf (slot-value this 'f_OPACITY) "opacity")
    (setf (slot-value this 'f_HTML) "HTML")
    (setf (slot-value this 'f_WIDTH) "width")
    (setf (slot-value this 'f_HEIGHT) "height")
    this))

    
(defun GraphicsStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GraphicsStrings.jstatic_instance)))))



