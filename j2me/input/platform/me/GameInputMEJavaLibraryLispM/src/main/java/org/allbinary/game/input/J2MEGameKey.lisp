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

(defclass J2MEGameKey (Input)
  ())

    
(defun J2MEGameKey.jnew_2 (_key _keyName)
  (declare (ignorable _key _keyName))
  (let ((this (make-instance 'J2MEGameKey)))
  (let (_id _inputFactory)
  (declare (ignorable _id _inputFactory))
    (block jreturn
        nil
        (setf _id (jm_getId_0 this))
        (if (>= _id 0)
            (progn
            (setf _inputFactory (InputFactory.jm_getInstance_0))
            (jm_add_2 _inputFactory _id this)))))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this J2MEGameKey))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "J2MEGameKey: ") (call-next-method this)))))))

    
(defun J2MEGameKey.jm_getString_1 (_keyCode)
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



