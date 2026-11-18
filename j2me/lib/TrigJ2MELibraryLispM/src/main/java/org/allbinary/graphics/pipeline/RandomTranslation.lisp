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

(defclass RandomTranslation (JObject)
  ())

(defun RandomTranslation.jnew_0 ()
  (let ((this (make-instance 'RandomTranslation)))
    this))

    
(defun RandomTranslation.jm_getInstance_2 (_vector _howMuch)
  (declare (ignorable _vector _howMuch))
  (let (_myRandomFactory _x _y _graphicsPipe)
  (declare (ignorable _myRandomFactory _x _y _graphicsPipe))
    (block jreturn
        (setf _myRandomFactory (MyRandomFactory.jm_getInstance_0))
        (setf _x (JR.i32 (- (jm_getNextInt_1 _myRandomFactory _howMuch))))
        (setf _y (jm_getNextInt_1 _myRandomFactory _howMuch))
        (setf _graphicsPipe (BasicGraphicsPipeline.jnew_1 _vector))
        (jm_createMatrix_0 _graphicsPipe)
        (jm_translate_2 _graphicsPipe _x _y)
        (return-from jreturn (jm_getMatrix_0 _graphicsPipe)))))



