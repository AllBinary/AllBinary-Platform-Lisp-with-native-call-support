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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoScoreable (Scoreable)
  ())

(defvar NoScoreable.jcell_SINGLETON :jnone)
(defun NoScoreable.jstatic_SINGLETON ()
  (when (eq NoScoreable.jcell_SINGLETON :jnone) (setf NoScoreable.jcell_SINGLETON (NoScoreable.jnew_0)))
  NoScoreable.jcell_SINGLETON)
(defun (setf NoScoreable.jstatic_SINGLETON) (value) (setf NoScoreable.jcell_SINGLETON value))

    
(defun NoScoreable.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoScoreable.jstatic_SINGLETON)))))

    
(defun NoScoreable.jnew_0 ()
  (let ((this (make-instance 'NoScoreable)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_addPoints_1) (defgeneric jm_addPoints_1 (this p1)))
(defmethod jm_addPoints_1 ((this NoScoreable) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_removePoints_1) (defgeneric jm_removePoints_1 (this p1)))
(defmethod jm_removePoints_1 ((this NoScoreable) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn nil)))



