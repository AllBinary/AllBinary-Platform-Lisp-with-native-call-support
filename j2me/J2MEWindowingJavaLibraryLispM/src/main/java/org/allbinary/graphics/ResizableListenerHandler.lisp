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

(defclass ResizableListenerHandler (JObject)
  ())

(defvar ResizableListenerHandler.jcell_instance :jnone)
(defun ResizableListenerHandler.jstatic_instance ()
  (when (eq ResizableListenerHandler.jcell_instance :jnone) (setf ResizableListenerHandler.jcell_instance (ResizableListenerHandler.jnew_0)))
  ResizableListenerHandler.jcell_instance)

(defun ResizableListenerHandler.jnew_0 ()
  (let ((this (make-instance 'ResizableListenerHandler)))
    this))

    
(defun ResizableListenerHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ResizableListenerHandler.jstatic_instance)))))

    
(unless (fboundp 'jm_setListener_1) (defgeneric jm_setListener_1 (this p1)))
(defmethod jm_setListener_1 ((this ResizableListenerHandler) _resizableListenerInterface)
  (declare (ignorable this _resizableListenerInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_fire_1) (defgeneric jm_fire_1 (this p1)))
(defmethod jm_fire_1 ((this ResizableListenerHandler) _isFullScreen)
  (declare (ignorable this _isFullScreen))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_fireEvent_1) (defgeneric jm_fireEvent_1 (this p1)))
(defmethod jm_fireEvent_1 ((this ResizableListenerHandler) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn nil)))



