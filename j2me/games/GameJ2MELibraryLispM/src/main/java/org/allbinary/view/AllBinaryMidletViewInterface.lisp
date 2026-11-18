;;;; Generated Code Do Not Modify
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryMidletViewInterface (JObject)
  ())

(defun AllBinaryMidletViewInterface.jnew_0 ()
  (let ((this (make-instance 'AllBinaryMidletViewInterface)))
    this))

    
(unless (fboundp 'jm_onResume_0) (defgeneric jm_onResume_0 (this)))
(defmethod jm_onResume_0 ((this AllBinaryMidletViewInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onResume")))

    
(unless (fboundp 'jm_onPause_0) (defgeneric jm_onPause_0 (this)))
(defmethod jm_onPause_0 ((this AllBinaryMidletViewInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onPause")))

    
(unless (fboundp 'jm_onDestroy_0) (defgeneric jm_onDestroy_0 (this)))
(defmethod jm_onDestroy_0 ((this AllBinaryMidletViewInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "onDestroy")))



