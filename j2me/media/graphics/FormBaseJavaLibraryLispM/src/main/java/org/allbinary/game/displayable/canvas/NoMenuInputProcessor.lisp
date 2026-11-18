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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NoMenuInputProcessor (BasicMenuInputProcessor)
  ())

(defvar NoMenuInputProcessor.jcell_SINGLETON :jnone)
(defun NoMenuInputProcessor.jstatic_SINGLETON ()
  (when (eq NoMenuInputProcessor.jcell_SINGLETON :jnone) (setf NoMenuInputProcessor.jcell_SINGLETON (NoMenuInputProcessor.jnew_0)))
  NoMenuInputProcessor.jcell_SINGLETON)
(defun (setf NoMenuInputProcessor.jstatic_SINGLETON) (value) (setf NoMenuInputProcessor.jcell_SINGLETON value))

    
(defun NoMenuInputProcessor.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NoMenuInputProcessor.jstatic_SINGLETON)))))

    
(defun NoMenuInputProcessor.jnew_0 ()
  (let ((this (make-instance 'NoMenuInputProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_onDownGameKeyEvent_1) (defgeneric jm_onDownGameKeyEvent_1 (this p1)))
(defmethod jm_onDownGameKeyEvent_1 ((this NoMenuInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onUpGameKeyEvent_1) (defgeneric jm_onUpGameKeyEvent_1 (this p1)))
(defmethod jm_onUpGameKeyEvent_1 ((this NoMenuInputProcessor) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onMotionGestureEvent_1) (defgeneric jm_onMotionGestureEvent_1 (this p1)))
(defmethod jm_onMotionGestureEvent_1 ((this NoMenuInputProcessor) _motionGestureEvent)
  (declare (ignorable this _motionGestureEvent))
  (let ()
    (block jreturn nil)))



