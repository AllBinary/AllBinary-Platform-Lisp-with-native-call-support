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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImmutableBasicArrayList (BasicArrayListS)
  ((f_name :initform nil)))

    
(defun ImmutableBasicArrayList.jnew_2 (_name _size)
  (declare (ignorable _name _size))
  (let ((this (make-instance 'ImmutableBasicArrayList)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_name) _name)))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this ImmutableBasicArrayList) _e)
  (declare (ignorable this _e))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value this 'f_name) this)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_addAt_2) (defgeneric jm_addAt_2 (this p1 p2)))
(defmethod jm_addAt_2 ((this ImmutableBasicArrayList) _index _element)
  (declare (ignorable this _index _element))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value this 'f_name) this))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this ImmutableBasicArrayList))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



