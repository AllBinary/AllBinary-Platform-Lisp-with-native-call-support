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
;;;; package org.allbinary.logic.system.os.windows

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass WindowsOS (GenericOperatingSystem)
  ())

    
(defun WindowsOS.jnew_0 ()
  (let ((this (make-instance 'WindowsOS)))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scalable) t)))
    this))

    
(unless (fboundp 'jm_isAutoHide_0) (defgeneric jm_isAutoHide_0 (this)))
(defmethod jm_isAutoHide_0 ((this WindowsOS))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))



