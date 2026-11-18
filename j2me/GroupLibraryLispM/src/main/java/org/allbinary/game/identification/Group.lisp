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

(defclass Group (JObject)
  ((f_name :initform nil)
   (f_teamId :initform 0)
   (f_string :initform nil)))

    
(defun Group.jnew_2 (_teamName _teamId)
  (declare (ignorable _teamName _teamId))
  (let ((this (make-instance 'Group)))
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    
    (setf (slot-value this 'f_string) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_teamId) _teamId)
        (jm_setName_1 this _teamName)))
    this))

    
(unless (fboundp 'jm_getGroupName_0) (defgeneric jm_getGroupName_0 (this)))
(defmethod jm_getGroupName_0 ((this Group))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_setName_1) (defgeneric jm_setName_1 (this p1)))
(defmethod jm_setName_1 ((this Group) _name)
  (declare (ignorable this _name))
  (let (_groupCommonFactory _stringBuffer)
  (declare (ignorable _groupCommonFactory _stringBuffer))
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (setf _groupCommonFactory (GroupCommonFactory.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value _groupCommonFactory 'f_GROUP_NAME_LABEL))
        (jm_append_1 _stringBuffer (slot-value this 'f_name))
        (jm_append_1 _stringBuffer (slot-value _groupCommonFactory 'f_ID_LABEL))
        (jm_appendshort_1 _stringBuffer (slot-value this 'f_teamId))
        (setf (slot-value this 'f_string) (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getGroupId_0) (defgeneric jm_getGroupId_0 (this)))
(defmethod jm_getGroupId_0 ((this Group))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_teamId)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Group))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_string)))))



