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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CurrentlyPressedTouchButtonSingleton (JObject)
  ((f_list :initform nil)))

(defvar CurrentlyPressedTouchButtonSingleton.jcell_instance :jnone)
(defun CurrentlyPressedTouchButtonSingleton.jstatic_instance ()
  (when (eq CurrentlyPressedTouchButtonSingleton.jcell_instance :jnone) (setf CurrentlyPressedTouchButtonSingleton.jcell_instance (CurrentlyPressedTouchButtonSingleton.jnew_0)))
  CurrentlyPressedTouchButtonSingleton.jcell_instance)
(defun (setf CurrentlyPressedTouchButtonSingleton.jstatic_instance) (value) (setf CurrentlyPressedTouchButtonSingleton.jcell_instance value))

    
(defun CurrentlyPressedTouchButtonSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CurrentlyPressedTouchButtonSingleton.jstatic_instance)))))

    
(defun CurrentlyPressedTouchButtonSingleton.jnew_0 ()
  (let ((this (make-instance 'CurrentlyPressedTouchButtonSingleton)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_size_0) (defgeneric jm_size_0 (this)))
(defmethod jm_size_0 ((this CurrentlyPressedTouchButtonSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_removeAt_1) (defgeneric jm_removeAt_1 (this p1)))
(defmethod jm_removeAt_1 ((this CurrentlyPressedTouchButtonSingleton) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (jm_removeAt_1 (slot-value this 'f_list) _index)))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this CurrentlyPressedTouchButtonSingleton) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (return-from jreturn (jm_remove_1 (slot-value this 'f_list) _touchButtonInput)))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this CurrentlyPressedTouchButtonSingleton) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index)))))

    
(unless (fboundp 'jm_contains_1) (defgeneric jm_contains_1 (this p1)))
(defmethod jm_contains_1 ((this CurrentlyPressedTouchButtonSingleton) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_list) _touchButtonInput)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this CurrentlyPressedTouchButtonSingleton) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _touchButtonInput))))



