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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PositionStrings (JObject)
  ((f_X :initform nil)
   (f_Y :initform nil)
   (f_X_LABEL :initform nil)
   (f_Y_LABEL :initform nil)
   (f_Z_LABEL :initform nil)
   (f_DX_LABEL :initform nil)
   (f_DY_LABEL :initform nil)
   (f_DZ_LABEL :initform nil)))

(defvar PositionStrings.jcell_instance :jnone)
(defun PositionStrings.jstatic_instance ()
  (when (eq PositionStrings.jcell_instance :jnone) (setf PositionStrings.jcell_instance (PositionStrings.jnew_0)))
  PositionStrings.jcell_instance)
(defun (setf PositionStrings.jstatic_instance) (value) (setf PositionStrings.jcell_instance value))

(defun PositionStrings.jnew_0 ()
  (let ((this (make-instance 'PositionStrings)))
    (setf (slot-value this 'f_X) "x")
    (setf (slot-value this 'f_Y) "y")
    (setf (slot-value this 'f_X_LABEL) "x: ")
    (setf (slot-value this 'f_Y_LABEL) "y: ")
    (setf (slot-value this 'f_Z_LABEL) "z: ")
    (setf (slot-value this 'f_DX_LABEL) "dx: ")
    (setf (slot-value this 'f_DY_LABEL) "dy: ")
    (setf (slot-value this 'f_DZ_LABEL) "dz: ")
    this))

    
(defun PositionStrings.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PositionStrings.jstatic_instance)))))



