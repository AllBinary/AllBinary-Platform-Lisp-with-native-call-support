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
;;;; package org.allbinary.graphics.displayable.command

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MyCommandInterface (JObject)
  ())

(defun MyCommandInterface.jnew_0 ()
  (let ((this (make-instance 'MyCommandInterface)))
    this))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this MyCommandInterface) _command)
  (declare (ignorable this _command))
  (error (JR.newException "AbstractMethodError" "addCommand")))

    
(unless (fboundp 'jm_removeAllCommands_0) (defgeneric jm_removeAllCommands_0 (this)))
(defmethod jm_removeAllCommands_0 ((this MyCommandInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "removeAllCommands")))



