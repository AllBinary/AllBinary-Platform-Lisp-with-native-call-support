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
;;;; package org.allbinary.game.part

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PartInterfaceUtil (JObject)
  ())

(defvar PartInterfaceUtil.jcell_SINGLETON :jnone)
(defun PartInterfaceUtil.jstatic_SINGLETON ()
  (when (eq PartInterfaceUtil.jcell_SINGLETON :jnone) (setf PartInterfaceUtil.jcell_SINGLETON (JR.newArray nil 0)))
  PartInterfaceUtil.jcell_SINGLETON)
(defun (setf PartInterfaceUtil.jstatic_SINGLETON) (value) (setf PartInterfaceUtil.jcell_SINGLETON value))

(defun PartInterfaceUtil.jnew_0 ()
  (let ((this (make-instance 'PartInterfaceUtil)))
    this))

    
(defun PartInterfaceUtil.jm_getZeroArray_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PartInterfaceUtil.jstatic_SINGLETON)))))



