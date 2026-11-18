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

(defclass AllAnalogControllerVisitor (AnalogControllerVisitor)
  ())

(defun AllAnalogControllerVisitor.jnew_0 ()
  (let ((this (make-instance 'AllAnalogControllerVisitor)))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this AllAnalogControllerVisitor) _allbinaryLayerManager _analogLocationInputProcessor)
  (declare (ignorable this _allbinaryLayerManager _analogLocationInputProcessor))
  (let (_analogLocationInputList _analogLocationInput _index)
  (declare (ignorable _analogLocationInputList _analogLocationInput _index))
    (block jreturn
        (setf _analogLocationInputList (jm_getList_0 (AnalogLocationInputFactory.jm_getInstance_0)))
        (setf _analogLocationInput nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 _analogLocationInputList) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _analogLocationInput (jm_get_1 _analogLocationInputList _index))
            (jm_process_2 _analogLocationInputProcessor _allbinaryLayerManager _analogLocationInput))
                (setf _index (JR.i32 (- _index 1)))))))))



