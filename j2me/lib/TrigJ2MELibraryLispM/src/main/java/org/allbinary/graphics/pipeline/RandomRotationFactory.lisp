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
;;;; package org.allbinary.graphics.pipeline

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RandomRotationFactory (JObject)
  ((f_myRandomFactory :initform nil)
   (f_angleFactory :initform nil)))

(defvar RandomRotationFactory.jcell_instance :jnone)
(defun RandomRotationFactory.jstatic_instance ()
  (when (eq RandomRotationFactory.jcell_instance :jnone) (setf RandomRotationFactory.jcell_instance (RandomRotationFactory.jnew_0)))
  RandomRotationFactory.jcell_instance)
(defun (setf RandomRotationFactory.jstatic_instance) (value) (setf RandomRotationFactory.jcell_instance value))

(defun RandomRotationFactory.jnew_0 ()
  (let ((this (make-instance 'RandomRotationFactory)))
    (setf (slot-value this 'f_myRandomFactory) (MyRandomFactory.jm_getInstance_0))
    (setf (slot-value this 'f_angleFactory) (AngleFactory.jm_getInstance_0))
    this))

    
(defun RandomRotationFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (RandomRotationFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstanceList_2) (defgeneric jm_getInstanceList_2 (this p1 p2)))
(defmethod jm_getInstanceList_2 ((this RandomRotationFactory) _vector _howMuch)
  (declare (ignorable this _vector _howMuch))
  (let (_graphicsPipe)
  (declare (ignorable _graphicsPipe))
    (block jreturn
        (setf _graphicsPipe (BasicGraphicsPipeline.jnew_1 _vector))
        (jm_createMatrix_0 _graphicsPipe)
        (jm_rotateToAngle_1 _graphicsPipe (jm_getAt_1 (slot-value this 'f_angleFactory) (jm_getNextRandomAngle_1 this _howMuch)))
        (return-from jreturn (jm_getMatrix_0 _graphicsPipe)))))

    
(unless (fboundp 'jm_getNextRandomAngle_1) (defgeneric jm_getNextRandomAngle_1 (this p1)))
(defmethod jm_getNextRandomAngle_1 ((this RandomRotationFactory) _howMuch)
  (declare (ignorable this _howMuch))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getNextInt_1 (slot-value this 'f_myRandomFactory) (JR.i32 (* _howMuch 10)))))))



