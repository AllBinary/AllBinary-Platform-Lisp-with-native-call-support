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
;;;; package org.allbinary.game.input.mapping

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputMapping (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_hashtable :initform nil)
   (f_mappedList :initform nil)))

    
(defun InputMapping.jnew_0 ()
  (let ((this (make-instance 'InputMapping)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_mappedList) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getTotalMapped_0) (defgeneric jm_getTotalMapped_0 (this)))
(defmethod jm_getTotalMapped_0 ((this InputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_hashtable))))))

    
(unless (fboundp 'jm_isDefaultNew_0) (defgeneric jm_isDefaultNew_0 (this)))
(defmethod jm_isDefaultNew_0 ((this InputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getDefault_0) (defgeneric jm_getDefault_0 (this)))
(defmethod jm_getDefault_0 ((this InputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (InputToGameKeyMapping.jm_getNullInstance_0)))))

    
(unless (fboundp 'jm_removeAll_0) (defgeneric jm_removeAll_0 (this)))
(defmethod jm_removeAll_0 ((this InputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_hashtable))
        (jm_clear_0 (slot-value this 'f_mappedList)))))

    
(unless (fboundp 'jm_remove_2) (defgeneric jm_remove_2 (this p1 p2)))
(defmethod jm_remove_2 ((this InputMapping) _input _mappedToInput)
  (declare (ignorable this _input _mappedToInput))
  (let (_stringBuffer _stringUtil _list)
  (declare (ignorable _stringBuffer _stringUtil _list))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _input))
        (jm_append_1 _stringBuffer " == ")
        (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _mappedToInput))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "InputMapping::remove")
        (setf _list (jm_getMappedInput_1 this _input))
        (if (jm_contains_1 _list _mappedToInput)
            (progn
            (jm_remove_1 _list _mappedToInput)
            (jm_remove_1 (slot-value this 'f_mappedList) _mappedToInput)
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer "Removed: ")
            (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _input))
            (jm_append_1 _stringBuffer " == ")
            (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _mappedToInput))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "InputMapping::remove"))
            (progn
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_append_1 _stringBuffer "Not Deleted: ")
            (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _input))
            (jm_append_1 _stringBuffer " == ")
            (jm_append_1 _stringBuffer (jm_toString_1 _stringUtil _mappedToInput))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "InputMapping::remove"))))))

    
(unless (fboundp 'jm_addMapping_1) (defgeneric jm_addMapping_1 (this p1)))
(defmethod jm_addMapping_1 ((this InputMapping) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this InputMapping) _input _mappedToInput)
  (declare (ignorable this _input _mappedToInput))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (setf _list (jm_getMappedInput_1 this _input))
        (if (not (jm_contains_1 _list _mappedToInput))
            (progn
            (jm_add_1 _list _mappedToInput)
            (jm_add_1 (slot-value this 'f_mappedList) _mappedToInput))))))

    
(unless (fboundp 'jm_isMapped_1) (defgeneric jm_isMapped_1 (this p1)))
(defmethod jm_isMapped_1 ((this InputMapping) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_mappedList) _input)))))

    
(unless (fboundp 'jm_getMappedInput_1) (defgeneric jm_getMappedInput_1 (this p1)))
(defmethod jm_getMappedInput_1 ((this InputMapping) _id)
  (declare (ignorable this _id))
  (let (_mappingInputCanBeNullList _list)
  (declare (ignorable _mappingInputCanBeNullList _list))
    (block jreturn
        (setf _mappingInputCanBeNullList (jm_get_1 (slot-value this 'f_hashtable) _id))
        (if (null _mappingInputCanBeNullList)
            (progn
            (setf _list (BasicArrayListD.jnew_0))
            (jm_put_2 (slot-value this 'f_hashtable) _id _list)
            (return-from jreturn _list)))
        (return-from jreturn _mappingInputCanBeNullList))))

    
(unless (fboundp 'jm_getHashtable_0) (defgeneric jm_getHashtable_0 (this)))
(defmethod jm_getHashtable_0 ((this InputMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))



