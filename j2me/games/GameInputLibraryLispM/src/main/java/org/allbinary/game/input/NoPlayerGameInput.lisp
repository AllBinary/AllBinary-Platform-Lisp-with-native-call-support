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

(defclass NoPlayerGameInput (PlayerGameInput)
  ())

(defvar NoPlayerGameInput.jcell_SINGLETON :jnone)
(defun NoPlayerGameInput.jstatic_SINGLETON ()
  (when (eq NoPlayerGameInput.jcell_SINGLETON :jnone) (setf NoPlayerGameInput.jcell_SINGLETON (NoPlayerGameInput.jnew_0)))
  NoPlayerGameInput.jcell_SINGLETON)
(defun (setf NoPlayerGameInput.jstatic_SINGLETON) (value) (setf NoPlayerGameInput.jcell_SINGLETON value))

    
(defun NoPlayerGameInput.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoPlayerGameInput.jstatic_SINGLETON)))))

    
(defun NoPlayerGameInput.jnew_0 ()
  (let ((this (make-instance 'NoPlayerGameInput)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_onDownGameKeyEvent_1) (defgeneric jm_onDownGameKeyEvent_1 (this p1)))
(defmethod jm_onDownGameKeyEvent_1 ((this NoPlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onUpGameKeyEvent_1) (defgeneric jm_onUpGameKeyEvent_1 (this p1)))
(defmethod jm_onUpGameKeyEvent_1 ((this NoPlayerGameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn nil)))



