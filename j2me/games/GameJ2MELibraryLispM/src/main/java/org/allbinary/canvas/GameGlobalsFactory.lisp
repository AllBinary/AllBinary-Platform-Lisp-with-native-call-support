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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameGlobalsFactory (JObject)
  ((f_newCanvas :initform nil)
   (f_newDisplaybleTime :initform 0)
   (f_point :initform nil)))

(defvar GameGlobalsFactory.jcell_instance :jnone)
(defun GameGlobalsFactory.jstatic_instance ()
  (when (eq GameGlobalsFactory.jcell_instance :jnone) (setf GameGlobalsFactory.jcell_instance (GameGlobalsFactory.jnew_0)))
  GameGlobalsFactory.jcell_instance)
(defun (setf GameGlobalsFactory.jstatic_instance) (value) (setf GameGlobalsFactory.jcell_instance value))

(defun GameGlobalsFactory.jnew_0 ()
  (let ((this (make-instance 'GameGlobalsFactory)))
    (setf (slot-value this 'f_newCanvas) t)
    (setf (slot-value this 'f_newDisplaybleTime) (Integer.jstatic_MIN_VALUE))
    (setf (slot-value this 'f_point) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
    this))

    
(defun GameGlobalsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameGlobalsFactory.jstatic_instance)))))



