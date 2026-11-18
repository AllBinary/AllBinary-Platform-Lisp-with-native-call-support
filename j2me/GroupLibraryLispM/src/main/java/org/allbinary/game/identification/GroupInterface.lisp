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
;;;; package org.allbinary.game.identification

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GroupInterface (JObject)
  ())

(defun GroupInterface.jnew_0 ()
  (let ((this (make-instance 'GroupInterface)))
    this))

    
(unless (fboundp 'jm_getGroupName_0) (defgeneric jm_getGroupName_0 (this)))
(defmethod jm_getGroupName_0 ((this GroupInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getGroupName")))

    
(unless (fboundp 'jm_getGroupId_0) (defgeneric jm_getGroupId_0 (this)))
(defmethod jm_getGroupId_0 ((this GroupInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getGroupId")))



