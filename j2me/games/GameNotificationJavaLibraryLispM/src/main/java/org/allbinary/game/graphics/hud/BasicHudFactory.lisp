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
;;;; package org.allbinary.game.graphics.hud

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicHudFactory (JObject)
  ((f_DIRECTION_EXCEPTION :initform nil)
   (f_VERTICAL :initform 0)
   (f_HORIZONTAL :initform 0)
   (f_BOTTOMLEFT :initform 0)
   (f_BOTTOMRIGHT :initform 0)
   (f_TOPLEFT :initform 0)
   (f_TOPRIGHT :initform 0)
   (f_BOTTOMCENTER :initform 0)
   (f_TOPCENTER :initform 0)
   (f_ABSOLUTE :initform 0)))

(defvar BasicHudFactory.jcell_instance :jnone)
(defun BasicHudFactory.jstatic_instance ()
  (when (eq BasicHudFactory.jcell_instance :jnone) (setf BasicHudFactory.jcell_instance (BasicHudFactory.jnew_0)))
  BasicHudFactory.jcell_instance)
(defun (setf BasicHudFactory.jstatic_instance) (value) (setf BasicHudFactory.jcell_instance value))

    
(defun BasicHudFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicHudFactory.jstatic_instance)))))

    
(defun BasicHudFactory.jnew_0 ()
  (let ((this (make-instance 'BasicHudFactory)))
    (setf (slot-value this 'f_DIRECTION_EXCEPTION) "Only Horizontal Direction is Allowed Currently")
    (setf (slot-value this 'f_VERTICAL) 0)
    (setf (slot-value this 'f_HORIZONTAL) 1)
    (setf (slot-value this 'f_BOTTOMLEFT) 0)
    (setf (slot-value this 'f_BOTTOMRIGHT) 1)
    (setf (slot-value this 'f_TOPLEFT) 2)
    (setf (slot-value this 'f_TOPRIGHT) 3)
    (setf (slot-value this 'f_BOTTOMCENTER) 4)
    (setf (slot-value this 'f_TOPCENTER) 5)
    (setf (slot-value this 'f_ABSOLUTE) 6)
  (let ()
    (block jreturn nil))
    this))



