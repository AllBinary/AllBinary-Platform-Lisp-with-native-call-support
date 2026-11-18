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
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DisplayableInterface (JObject)
  ())

(defun DisplayableInterface.jnew_0 ()
  (let ((this (make-instance 'DisplayableInterface)))
    this))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this DisplayableInterface) _cmd)
  (declare (ignorable this _cmd))
  (error (JR.newException "AbstractMethodError" "addCommand")))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this DisplayableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHeight")))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this DisplayableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getWidth")))

    
(unless (fboundp 'jm_removeCommand_1) (defgeneric jm_removeCommand_1 (this p1)))
(defmethod jm_removeCommand_1 ((this DisplayableInterface) _cmd)
  (declare (ignorable this _cmd))
  (error (JR.newException "AbstractMethodError" "removeCommand")))

    
(unless (fboundp 'jm_setCommandListener_1) (defgeneric jm_setCommandListener_1 (this p1)))
(defmethod jm_setCommandListener_1 ((this DisplayableInterface) _l)
  (declare (ignorable this _l))
  (error (JR.newException "AbstractMethodError" "setCommandListener")))



