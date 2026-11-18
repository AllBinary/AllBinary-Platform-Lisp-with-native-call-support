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

(defclass CompositeGroup (JObject)
  ((f_logUtil :initform nil)
   (f_groupInterface :initform nil)
   (f_list :initform nil)))

    
(defun CompositeGroup.jnew_1 (_groupInterface)
  (declare (ignorable _groupInterface))
  (let ((this (make-instance 'CompositeGroup)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_groupInterface) _groupInterface)))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this CompositeGroup))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this CompositeGroup) _groupInterface)
  (declare (ignorable this _groupInterface))
  (let (_commonStrings _groupCommonFactory _stringBuffer)
  (declare (ignorable _commonStrings _groupCommonFactory _stringBuffer))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _groupCommonFactory (GroupCommonFactory.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value _groupCommonFactory 'f_ADDING_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_0 _groupInterface))
        (jm_append_1 _stringBuffer (slot-value _groupCommonFactory 'f_TO_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_groupInterface)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_ADD))
        (jm_add_1 (slot-value this 'f_list) _groupInterface))))

    
(unless (fboundp 'jm_isInGroup_1) (defgeneric jm_isInGroup_1 (this p1)))
(defmethod jm_isInGroup_1 ((this CompositeGroup) _groupInterface)
  (declare (ignorable this _groupInterface))
  (let ()
    (block jreturn
        (if (jm_contains_1 (slot-value this 'f_list) _groupInterface)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_getGroup_0) (defgeneric jm_getGroup_0 (this)))
(defmethod jm_getGroup_0 ((this CompositeGroup))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_groupInterface)))))



