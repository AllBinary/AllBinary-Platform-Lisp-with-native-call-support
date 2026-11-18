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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TitleResource (JObject)
  ())

(defvar TitleResource.jcell_RESOURCE_TITLE :jnone)
(defun TitleResource.jstatic_RESOURCE_TITLE ()
  (when (eq TitleResource.jcell_RESOURCE_TITLE :jnone) (setf TitleResource.jcell_RESOURCE_TITLE "/title_sprite_100_by_100.png"))
  TitleResource.jcell_RESOURCE_TITLE)
(defun (setf TitleResource.jstatic_RESOURCE_TITLE) (value) (setf TitleResource.jcell_RESOURCE_TITLE value))

(defun TitleResource.jnew_0 ()
  (let ((this (make-instance 'TitleResource)))
    this))



