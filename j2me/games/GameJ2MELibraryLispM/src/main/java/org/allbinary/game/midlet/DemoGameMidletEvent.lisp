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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoGameMidletEvent (AllBinaryEventObject)
  ((f_demoGameMidletState :initform nil)))

    
(defun DemoGameMidletEvent.jnew_2 (_anyType _demoGameMidletState)
  (declare (ignorable _anyType _demoGameMidletState))
  (let ((this (make-instance 'DemoGameMidletEvent)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_demoGameMidletState) _demoGameMidletState)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this DemoGameMidletEvent) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_setSource_1 this _anyType))))

    
(unless (fboundp 'jm_setDemoGameMidletState_1) (defgeneric jm_setDemoGameMidletState_1 (this p1)))
(defmethod jm_setDemoGameMidletState_1 ((this DemoGameMidletEvent) _demoGameMidletState)
  (declare (ignorable this _demoGameMidletState))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_demoGameMidletState) _demoGameMidletState))))

    
(unless (fboundp 'jm_getDemoGameMidletState_0) (defgeneric jm_getDemoGameMidletState_0 (this)))
(defmethod jm_getDemoGameMidletState_0 ((this DemoGameMidletEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_demoGameMidletState)))))



