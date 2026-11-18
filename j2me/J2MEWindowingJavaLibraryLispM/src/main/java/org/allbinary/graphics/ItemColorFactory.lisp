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

(defclass ItemColorFactory (JObject)
  ((f_INVERT_PAINT :initform 0)
   (f_PAINT :initform 0)
   (f_TEXT_FIELD_NO_FOCUS :initform 0)))

(defvar ItemColorFactory.jcell_instance :jnone)
(defun ItemColorFactory.jstatic_instance ()
  (when (eq ItemColorFactory.jcell_instance :jnone) (setf ItemColorFactory.jcell_instance (ItemColorFactory.jnew_0)))
  ItemColorFactory.jcell_instance)
(defun (setf ItemColorFactory.jstatic_instance) (value) (setf ItemColorFactory.jcell_instance value))

(defun ItemColorFactory.jnew_0 ()
  (let ((this (make-instance 'ItemColorFactory)))
    (setf (slot-value this 'f_INVERT_PAINT) #xFF000000)
    (setf (slot-value this 'f_PAINT) #xFFe07718)
    (setf (slot-value this 'f_TEXT_FIELD_NO_FOCUS) #x7F7F7F)
    this))

    
(defun ItemColorFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ItemColorFactory.jstatic_instance)))))



