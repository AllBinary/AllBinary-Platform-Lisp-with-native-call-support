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
;;;; package org.allbinary.media.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageCompleteUtil (JObject)
  ())

(defvar ImageCompleteUtil.jcell_instance :jnone)
(defun ImageCompleteUtil.jstatic_instance ()
  (when (eq ImageCompleteUtil.jcell_instance :jnone) (setf ImageCompleteUtil.jcell_instance (ImageCompleteUtil.jnew_0)))
  ImageCompleteUtil.jcell_instance)
(defun (setf ImageCompleteUtil.jstatic_instance) (value) (setf ImageCompleteUtil.jcell_instance value))

(defun ImageCompleteUtil.jnew_0 ()
  (let ((this (make-instance 'ImageCompleteUtil)))
    this))

    
(defun ImageCompleteUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageCompleteUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_waitForImage_2) (defgeneric jm_waitForImage_2 (this p1 p2)))
(defmethod jm_waitForImage_2 ((this ImageCompleteUtil) _image _name)
  (declare (ignorable this _image _name))
  (let ()
    (block jreturn nil)))



