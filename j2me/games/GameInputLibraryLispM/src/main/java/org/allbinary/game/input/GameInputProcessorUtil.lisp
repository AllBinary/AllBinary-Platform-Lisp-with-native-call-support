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

(defclass GameInputProcessorUtil (JObject)
  ())

(defun GameInputProcessorUtil.jnew_0 ()
  (let ((this (make-instance 'GameInputProcessorUtil)))
    this))

    
(defun GameInputProcessorUtil.jm_init_1 (_inputProcessorArray)
  (declare (ignorable _inputProcessorArray))
  (let (_noInputProcessor _total _inputProcessorCanBeNull _index)
  (declare (ignorable _noInputProcessor _total _inputProcessorCanBeNull _index))
    (block jreturn
        (setf _noInputProcessor (GameInputProcessor.jm_getInstance_0))
        (setf _total (slot-value (InputFactory.jm_getInstance_0) 'f_MAX))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _total) do
                (block jcontinue
            (setf _inputProcessorCanBeNull (aref _inputProcessorArray _index))
            (if (null _inputProcessorCanBeNull)
                (progn
                (setf (aref _inputProcessorArray _index) _noInputProcessor))))
                (setf _index (JR.i32 (+ _index 1)))))))))



