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

(defclass BasicGroupFactory (JObject)
  ((f_NAME :initform nil)
   (f_NO_SUCH_GROUP :initform nil)
   (f_GOOD :initform nil)
   (f_ENEMY :initform nil)
   (f_ENEMY_ON_LEVEL :initform nil)
   (f_NONE :initform nil)
   (f_GOOD_ARRAY :initform nil)
   (f_ENEMY_ARRAY :initform nil)
   (f_ENEMY_ON_LEVEL_ARRAY :initform nil)
   (f_NONE_ARRAY :initform nil)))

(defvar BasicGroupFactory.jcell_instance :jnone)
(defun BasicGroupFactory.jstatic_instance ()
  (when (eq BasicGroupFactory.jcell_instance :jnone) (setf BasicGroupFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  BasicGroupFactory.jcell_instance)
(defun (setf BasicGroupFactory.jstatic_instance) (value) (setf BasicGroupFactory.jcell_instance value))

(defun BasicGroupFactory.jnew_0 ()
  (let ((this (make-instance 'BasicGroupFactory)))
    (setf (slot-value this 'f_NAME) "GROUP_NAME")
    (setf (slot-value this 'f_NO_SUCH_GROUP) "No Such Group: ")
    (setf (slot-value this 'f_GOOD) (Group.jnew_2 "Good Guys" (JR.i16 0)))
    (setf (slot-value this 'f_ENEMY) (Group.jnew_2 "Bad Guys" (JR.i16 1)))
    (setf (slot-value this 'f_ENEMY_ON_LEVEL) (Group.jnew_2 "Bad Guys on Level" (JR.i16 2)))
    (setf (slot-value this 'f_NONE) (Group.jnew_2 "Not On A Team" (JR.i16 3)))
    (setf (slot-value this 'f_GOOD_ARRAY) (vector (slot-value this 'f_GOOD)))
    (setf (slot-value this 'f_ENEMY_ARRAY) (vector (slot-value this 'f_ENEMY)))
    (setf (slot-value this 'f_ENEMY_ON_LEVEL_ARRAY) (vector (slot-value this 'f_ENEMY) (slot-value this 'f_ENEMY_ON_LEVEL)))
    (setf (slot-value this 'f_NONE_ARRAY) (vector (slot-value this 'f_NONE)))
    this))

    
(defun BasicGroupFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (BasicGroupFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (BasicGroupFactory.jstatic_instance) (BasicGroupFactory.jnew_0))))
        (return-from jreturn (BasicGroupFactory.jstatic_instance)))))



