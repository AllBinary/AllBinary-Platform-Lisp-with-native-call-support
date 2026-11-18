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
;;;; package org.allbinary.game.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ResourceRelativeRelationshipFactoryInterface (JObject)
  ())

(defun ResourceRelativeRelationshipFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'ResourceRelativeRelationshipFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getResourceRelativeRelationshipList_1) (defgeneric jm_getResourceRelativeRelationshipList_1 (this p1)))
(defmethod jm_getResourceRelativeRelationshipList_1 ((this ResourceRelativeRelationshipFactoryInterface) _resource)
  (declare (ignorable this _resource))
  (error (JR.newException "AbstractMethodError" "getResourceRelativeRelationshipList")))

    
(unless (fboundp 'jm_addResourceRelativeRelationship_2) (defgeneric jm_addResourceRelativeRelationship_2 (this p1 p2)))
(defmethod jm_addResourceRelativeRelationship_2 ((this ResourceRelativeRelationshipFactoryInterface) _resource _relativeRelationship)
  (declare (ignorable this _resource _relativeRelationship))
  (error (JR.newException "AbstractMethodError" "addResourceRelativeRelationship")))



