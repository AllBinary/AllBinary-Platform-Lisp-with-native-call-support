;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2026 AllBinary 
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
;;;; package org.allbinary.business.user.role

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicUserRoles (JObject)
  ((f_roleVector :initform nil)))

(defvar BasicUserRoles.jcell_instance :jnone)
(defun BasicUserRoles.jstatic_instance ()
  (when (eq BasicUserRoles.jcell_instance :jnone) (setf BasicUserRoles.jcell_instance (BasicUserRoles.jnew_0)))
  BasicUserRoles.jcell_instance)
(defun (setf BasicUserRoles.jstatic_instance) (value) (setf BasicUserRoles.jcell_instance value))

(defun BasicUserRoles.jnew_0 ()
  (let ((this (make-instance 'BasicUserRoles)))
    (setf (slot-value this 'f_roleVector) (BasicArrayListD.jnew_0))
    this))

    
(defun BasicUserRoles.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicUserRoles.jstatic_instance)))))

    
(unless (fboundp 'jm_getRole_1) (defgeneric jm_getRole_1 (this p1)))
(defmethod jm_getRole_1 ((this BasicUserRoles) _role)
  (declare (ignorable this _role))
  (let (_roleVector _size _userRole _index)
  (declare (ignorable _roleVector _size _userRole _index))
    (block jreturn
        (setf _roleVector (jm_getAll_0 this))
        (setf _size (jm_size_0 _roleVector))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _userRole (jm_get_1 _roleVector _index))
            (if (eq (JR.compareTo _role (jm_toString_0 _userRole)) 0)
                (progn
                (return-from jreturn _userRole))))
                (setf _index (JR.i32 (+ _index 1))))))
        (error (JR.newException "Exception" "Unable to get role - Unknown Role")))))

    
(unless (fboundp 'jm_getAll_0) (defgeneric jm_getAll_0 (this)))
(defmethod jm_getAll_0 ((this BasicUserRoles))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_roleVector)))))



