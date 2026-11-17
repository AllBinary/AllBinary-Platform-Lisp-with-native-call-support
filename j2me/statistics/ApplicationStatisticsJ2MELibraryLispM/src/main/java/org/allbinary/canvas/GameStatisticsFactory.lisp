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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass GameStatisticsFactory (BaseGameStatistics)
  ((f_stringBuffer :initform nil)))

(defvar GameStatisticsFactory.jcell_instance :jnone)
(defun GameStatisticsFactory.jstatic_instance ()
  (when (eq GameStatisticsFactory.jcell_instance :jnone) (setf GameStatisticsFactory.jcell_instance (GameStatisticsFactory.jnew_0)))
  GameStatisticsFactory.jcell_instance)

(defun GameStatisticsFactory.jnew_0 ()
  (let ((this (make-instance 'GameStatisticsFactory)))
    (setf (slot-value this 'f_stringBuffer) (StringMaker.jnew_0))
    this))

    
(defun GameStatisticsFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameStatisticsFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this GameStatisticsFactory) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn
        (if (> (jm_length_0 (slot-value this 'f_stringBuffer)) 12000)
            (progn
            (jm_delete_2 (slot-value this 'f_stringBuffer) 0 (jm_length_0 (slot-value this 'f_stringBuffer)))
            (jm_append_1 (slot-value this 'f_stringBuffer) "Old Stats Cleared")))
        (jm_append_1 (slot-value this 'f_stringBuffer) _string))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameStatisticsFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (call-next-method this)) (jm_toString_0 (slot-value this 'f_stringBuffer))))))))



