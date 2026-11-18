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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass EarlySoundsFactory (BaseSoundsFactory)
  ())

(defvar EarlySoundsFactory.jcell_instance :jnone)
(defun EarlySoundsFactory.jstatic_instance ()
  (when (eq EarlySoundsFactory.jcell_instance :jnone) (setf EarlySoundsFactory.jcell_instance (EarlySoundsFactory.jnew_0)))
  EarlySoundsFactory.jcell_instance)
(defun (setf EarlySoundsFactory.jstatic_instance) (value) (setf EarlySoundsFactory.jcell_instance value))

(defun EarlySoundsFactory.jnew_0 ()
  (let ((this (make-instance 'EarlySoundsFactory)))
    this))

    
(unless (fboundp 'jm_getSoundInterfaceArray_0) (defgeneric jm_getSoundInterfaceArray_0 (this)))
(defmethod jm_getSoundInterfaceArray_0 ((this EarlySoundsFactory))
  (declare (ignorable this))
  (let (_soundInterfaceArray _index)
  (declare (ignorable _soundInterfaceArray _index))
    (block jreturn
        (setf _soundInterfaceArray (JR.newArray nil 2))
        (setf _index 0)
        (setf (aref _soundInterfaceArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (SelectSound.jm_getInstance_0))
        (setf (aref _soundInterfaceArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (ErrorSound.jm_getInstance_0))
        (return-from jreturn _soundInterfaceArray))))

    
(defun EarlySoundsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (EarlySoundsFactory.jstatic_instance)))))



