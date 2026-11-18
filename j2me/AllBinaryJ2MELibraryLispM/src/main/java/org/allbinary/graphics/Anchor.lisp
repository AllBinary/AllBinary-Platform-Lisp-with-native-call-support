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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Anchor (JObject)
  ())

(defvar Anchor.jcell_TOP_LEFT :jnone)
(defun Anchor.jstatic_TOP_LEFT ()
  (when (eq Anchor.jcell_TOP_LEFT :jnone) (setf Anchor.jcell_TOP_LEFT (logand (Graphics.jstatic_TOP) (Graphics.jstatic_LEFT))))
  Anchor.jcell_TOP_LEFT)
(defun (setf Anchor.jstatic_TOP_LEFT) (value) (setf Anchor.jcell_TOP_LEFT value))

(defun Anchor.jnew_0 ()
  (let ((this (make-instance 'Anchor)))
    this))



