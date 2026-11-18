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

(defclass BaseTouchInput (JObject)
  ((f_commonStrings :initform nil)
   (f_basicArrayListUtil :initform nil)))

    
(defun BaseTouchInput.jnew_0 ()
  (let ((this (make-instance 'BaseTouchInput)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BaseTouchInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getImmutableInstance_0 (slot-value this 'f_basicArrayListUtil))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BaseTouchInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.className this)))))



