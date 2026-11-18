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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;GameInputNoPersistanceLibrary
(defclass InputPersistance (BasicPersitance)
  ((f_hashtableUtil :initform nil)))

    
(defun InputPersistance.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'InputPersistance)))
    (setf (slot-value this 'f_hashtableUtil) (HashtableUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_loadAll_1) (defgeneric jm_loadAll_1 (this p1)))
(defmethod jm_loadAll_1 ((this InputPersistance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_recordStore _recordEnum _hashtable _stringBuffer _smallIntegerSingletonFactory _id)
  (declare (ignorable _recordStore _recordEnum _hashtable _stringBuffer _smallIntegerSingletonFactory _id))
    (block jreturn
        (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
        (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
        (setf _hashtable nil)
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf _id 0)
        (block jbreak (loop while (jm_hasNextElement_0 _recordEnum) do
                (block jcontinue
            (setf _id (jm_nextRecordId_0 _recordEnum))
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_LOADING_ID)) _id)) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL))
            (setf _hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
            (jm_add_1 (slot-value this 'f_valueList) _hashtable)
            (jm_add_1 (slot-value this 'f_idList) (jm_getAt_1 _smallIntegerSingletonFactory _id)))))
        (jm_closeRecordStore_0 _recordStore))))

    
(unless (fboundp 'jm_save_2) (defgeneric jm_save_2 (this p1 p2)))
(defmethod jm_save_2 ((this InputPersistance) _abeClientInformation _hashtable)
  (declare (ignorable this _abeClientInformation _hashtable))
  (let (_recordStore _gameActionInput _list _input _inputObjectArray _size _index2 _index)
  (declare (ignorable _recordStore _gameActionInput _list _input _inputObjectArray _size _index2 _index))
    (block jreturn
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_persistanceStrings) 'f_NOT_SAVING)) (jm_toString_1 (StringUtil.jm_getInstance_0) _hashtable))) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
        (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
        (setf _gameActionInput nil)
        (setf _list nil)
        (setf _input nil)
        (setf _inputObjectArray (jm_getKeysAsArray_1 (slot-value this 'f_hashtableUtil) _hashtable))
        (setf _size (length _inputObjectArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameActionInput (aref _inputObjectArray _index))
            (setf _list (jm_get_1 _hashtable (aref _inputObjectArray _index)))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 (jm_size_0 _list)) do
                    (block jcontinue
                (setf _input (jm_get_1 _list _index2)))
                    (setf _index2 (JR.i32 (+ _index2 1)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_closeRecordStore_0 _recordStore))))



