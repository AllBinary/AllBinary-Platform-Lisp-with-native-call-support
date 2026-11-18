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
;;;; package org.allbinary.game.tick

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullTickable (JObject)
  ((f_NAME :initform nil)))

(defvar NullTickable.jcell_SINGLETON :jnone)
(defun NullTickable.jstatic_SINGLETON ()
  (when (eq NullTickable.jcell_SINGLETON :jnone) (setf NullTickable.jcell_SINGLETON (NullTickable.jnew_0)))
  NullTickable.jcell_SINGLETON)
(defun (setf NullTickable.jstatic_SINGLETON) (value) (setf NullTickable.jcell_SINGLETON value))

(defun NullTickable.jnew_0 ()
  (let ((this (make-instance 'NullTickable)))
    (setf (slot-value this 'f_NAME) "NulLTickable")
    this))

    
(defun NullTickable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullTickable.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_processTick_1) (defgeneric jm_processTick_1 (this p1)))
(defmethod jm_processTick_1 ((this NullTickable) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this NullTickable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NAME)))))



