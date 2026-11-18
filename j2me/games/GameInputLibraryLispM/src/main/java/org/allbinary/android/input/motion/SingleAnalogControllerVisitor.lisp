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
;;;; package org.allbinary.android.input.motion

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SingleAnalogControllerVisitor (AnalogControllerVisitor)
  ((f_playerInputId :initform 0)))

    
(defun SingleAnalogControllerVisitor.jnew_1 (_playerInputId)
  (declare (ignorable _playerInputId))
  (let ((this (make-instance 'SingleAnalogControllerVisitor)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_playerInputId) _playerInputId)))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this SingleAnalogControllerVisitor) _allbinaryLayerManager _analogLocationInputProcessor)
  (declare (ignorable this _allbinaryLayerManager _analogLocationInputProcessor))
  (let (_analogLocationInput)
  (declare (ignorable _analogLocationInput))
    (block jreturn
        (setf _analogLocationInput (jm_getInstanceForPlayer_1 (AnalogLocationInputFactory.jm_getInstance_0) (slot-value this 'f_playerInputId)))
        (jm_process_2 _analogLocationInputProcessor _allbinaryLayerManager _analogLocationInput))))



