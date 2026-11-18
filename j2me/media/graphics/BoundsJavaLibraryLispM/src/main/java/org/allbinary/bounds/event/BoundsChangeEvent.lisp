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
;;;; package org.allbinary.bounds.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BoundsChangeEvent (AllBinaryEventObject)
  ())

    
(defun BoundsChangeEvent.jnew_1 (_rectangle)
  (declare (ignorable _rectangle))
  (let ((this (make-instance 'BoundsChangeEvent)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getRectangle_0) (defgeneric jm_getRectangle_0 (this)))
(defmethod jm_getRectangle_0 ((this BoundsChangeEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSource_0 this)))))



