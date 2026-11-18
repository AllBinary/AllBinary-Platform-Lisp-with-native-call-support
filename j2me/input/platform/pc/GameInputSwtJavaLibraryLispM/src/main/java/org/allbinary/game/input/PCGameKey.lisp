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

(defclass PCGameKey (Input)
  ())

    
(defun PCGameKey.jnew_2 (_keyCode _name)
  (declare (ignorable _keyCode _name))
  (let ((this (make-instance 'PCGameKey)))
  (let (_id)
  (declare (ignorable _id))
    (block jreturn
        nil
        (setf _id (jm_getId_0 this))
        (if (>= _id 0)
            (progn
            (jm_add_2 (InputFactory.jm_getInstance_0) _id this)))))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this PCGameKey))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.concat "PCGameKey: " (call-next-method this))))))

    
(defun PCGameKey.jm_getString_1 (_keyCode)
  (declare (ignorable _keyCode))
  (let (_input)
  (declare (ignorable _input))
    (block jreturn
        (setf _input (jm_getInstanceById_1 (InputFactory.jm_getInstance_0) _keyCode))
        (if (not (null _input))
            (progn
            (return-from jreturn (jm_getName_0 _input)))
            (progn
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))



