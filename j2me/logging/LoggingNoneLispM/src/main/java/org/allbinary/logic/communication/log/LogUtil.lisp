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
;;;; package org.allbinary.logic.communication.log

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ActualPlatform
(defclass LogUtil (JObject)
  ())

(defvar LogUtil.jcell_instance :jnone)
(defun LogUtil.jstatic_instance ()
  (when (eq LogUtil.jcell_instance :jnone) (setf LogUtil.jcell_instance (LogUtil.jnew_0)))
  LogUtil.jcell_instance)

    
(defun LogUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LogUtil.jstatic_instance)))))

    
(defun LogUtil.jnew_0 ()
  (let ((this (make-instance 'LogUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_putP_1) (defgeneric jm_putP_1 (this p1)))
(defmethod jm_putP_1 ((this LogUtil) _log)
  (declare (ignorable this _log))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_putF_3) (defgeneric jm_putF_3 (this p1 p2 p3)))
(defmethod jm_putF_3 ((this LogUtil) _specialMessage _anyType _functionName)
  (declare (ignorable this _specialMessage _anyType _functionName))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_putFS_3) (defgeneric jm_putFS_3 (this p1 p2 p3)))
(defmethod jm_putFS_3 ((this LogUtil) _specialMessage _className _functionName)
  (declare (ignorable this _specialMessage _className _functionName))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_put_4) (defgeneric jm_put_4 (this p1 p2 p3 p4)))
(defmethod jm_put_4 ((this LogUtil) _specialMessage _anyType _functionName _exception)
  (declare (ignorable this _specialMessage _anyType _functionName _exception))
  (let ()
    (block jreturn nil)))



