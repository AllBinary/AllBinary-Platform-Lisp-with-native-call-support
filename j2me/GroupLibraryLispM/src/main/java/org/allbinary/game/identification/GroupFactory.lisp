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

(defclass GroupFactory (JObject)
  ((f_logUtil :initform nil)
   (f_NULL_GROUP_ARRAY :initform nil)
   (f_list :initform nil)
   (f_index :initform 0)))

(defvar GroupFactory.jcell_instance :jnone)
(defun GroupFactory.jstatic_instance ()
  (when (eq GroupFactory.jcell_instance :jnone) (setf GroupFactory.jcell_instance (GroupFactory.jnew_0)))
  GroupFactory.jcell_instance)
(defun (setf GroupFactory.jstatic_instance) (value) (setf GroupFactory.jcell_instance value))

(defun GroupFactory.jnew_0 ()
  (let ((this (make-instance 'GroupFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_NULL_GROUP_ARRAY) (JR.newArray nil 0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_index) 0)
    this))

    
(defun GroupFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GroupFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getNextGroup_0) (defgeneric jm_getNextGroup_0 (this)))
(defmethod jm_getNextGroup_0 ((this GroupFactory))
  (declare (ignorable this))
  (let (_group)
  (declare (ignorable _group))
    (block jreturn
        (setf _group (aref (slot-value (slot-value this 'f_list) 'f_objectArray) (slot-value this 'f_index)))
        (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1)))
        (return-from jreturn _group))))

    
(unless (fboundp 'jm_getNextGroupByName_1) (defgeneric jm_getNextGroupByName_1 (this p1)))
(defmethod jm_getNextGroupByName_1 ((this GroupFactory) _name)
  (declare (ignorable this _name))
  (let (_group)
  (declare (ignorable _group))
    (block jreturn
        (setf _group (jm_getNextGroup_0 this))
        (jm_setName_1 _group _name)
        (return-from jreturn _group))))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this GroupFactory) _groups _nameArray)
  (declare (ignorable this _groups _nameArray))
  (let (_stringMaker _stringUtil _TEAM _size _name)
  (declare (ignorable _stringMaker _stringUtil _TEAM _size _name))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (setf _TEAM "Team ")
        (jm_clear_0 (slot-value this 'f_list))
        (setf (slot-value this 'f_index) 0)
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (setf _name nil)
        (block jbreak (loop while (< _size _groups) do
                (block jcontinue
            (setf _name (slot-value _stringUtil 'f_EMPTY_STRING))
            (if (< _size (length _nameArray))
                (progn
                (setf _name (aref _nameArray _size)))
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (setf _name (jm_toString_0 (jm_appendint_1 (jm_append_1 _stringMaker _TEAM) _size)))))
            (jm_add_1 (slot-value this 'f_list) (Group.jnew_2 _name (JR.i16 (JR.i32 (+ _size 3)))))
            (setf _size (JR.i32 (+ _size 1)))))))))



