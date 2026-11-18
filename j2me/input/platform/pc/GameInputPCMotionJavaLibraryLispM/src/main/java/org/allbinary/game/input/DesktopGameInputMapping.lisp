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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DesktopGameInputMapping (PCGameInputMapping)
  ())

(defun DesktopGameInputMapping.jnew_0 ()
  (let ((this (make-instance 'DesktopGameInputMapping)))
    this))

    
(unless (fboundp 'jm_getDefault_0) (defgeneric jm_getDefault_0 (this)))
(defmethod jm_getDefault_0 ((this DesktopGameInputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getInputMapping_0 (DesktopDefaultGameInputMapping.jnew_0))))))



