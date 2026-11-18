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
;;;; package org.allbinary.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;TouchJ2MENone
(defclass TouchJ2ME (JObject)
  ())

    
(defun TouchJ2ME.jnew_0 ()
  (let ((this (make-instance 'TouchJ2ME)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_pointerDragged_2) (defgeneric jm_pointerDragged_2 (this p1 p2)))
(defmethod jm_pointerDragged_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pointerPressed_2) (defgeneric jm_pointerPressed_2 (this p1 p2)))
(defmethod jm_pointerPressed_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pointerReleased_2) (defgeneric jm_pointerReleased_2 (this p1 p2)))
(defmethod jm_pointerReleased_2 ((this TouchJ2ME) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))



