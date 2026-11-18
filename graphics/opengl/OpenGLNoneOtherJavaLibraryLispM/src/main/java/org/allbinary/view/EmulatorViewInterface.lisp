;;;; Generated Code Do Not Modify
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass EmulatorViewInterface (JObject)
  ())

(defun EmulatorViewInterface.jnew_0 ()
  (let ((this (make-instance 'EmulatorViewInterface)))
    this))

    
(unless (fboundp 'jm_setMidlet_1) (defgeneric jm_setMidlet_1 (this p1)))
(defmethod jm_setMidlet_1 ((this EmulatorViewInterface) _midlet)
  (declare (ignorable this _midlet))
  (error (JR.newException "AbstractMethodError" "setMidlet")))

    
(unless (fboundp 'jm_onEmulatorInitComplete_1) (defgeneric jm_onEmulatorInitComplete_1 (this p1)))
(defmethod jm_onEmulatorInitComplete_1 ((this EmulatorViewInterface) _midletActivity)
  (declare (ignorable this _midletActivity))
  (error (JR.newException "AbstractMethodError" "onEmulatorInitComplete")))

    
(unless (fboundp 'jm_onSetDisplayable_1) (defgeneric jm_onSetDisplayable_1 (this p1)))
(defmethod jm_onSetDisplayable_1 ((this EmulatorViewInterface) _displayable)
  (declare (ignorable this _displayable))
  (error (JR.newException "AbstractMethodError" "onSetDisplayable")))



