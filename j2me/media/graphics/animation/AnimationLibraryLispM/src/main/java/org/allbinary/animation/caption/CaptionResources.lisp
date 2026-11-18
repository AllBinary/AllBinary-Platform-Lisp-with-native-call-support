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
;;;; package org.allbinary.animation.caption

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CaptionResources (JObject)
  ())

(defvar CaptionResources.jcell_RESOURCE :jnone)
(defun CaptionResources.jstatic_RESOURCE ()
  (when (eq CaptionResources.jcell_RESOURCE :jnone) (setf CaptionResources.jcell_RESOURCE "/character_message_bubbled_box.png"))
  CaptionResources.jcell_RESOURCE)
(defun (setf CaptionResources.jstatic_RESOURCE) (value) (setf CaptionResources.jcell_RESOURCE value))

(defun CaptionResources.jnew_0 ()
  (let ((this (make-instance 'CaptionResources)))
    this))



