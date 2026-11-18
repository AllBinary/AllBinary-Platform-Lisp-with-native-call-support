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
;;;; package org.allbinary.game.configuration.persistance

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass KeyValuePersistance (BasicPersitance)
  ((f_tsUtil :initform nil)))

    
(defun KeyValuePersistance.jnew_1 (_recordId)
  (declare (ignorable _recordId))
  (let ((this (make-instance 'KeyValuePersistance)))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_loadAll_1) (defgeneric jm_loadAll_1 (this p1)))
(defmethod jm_loadAll_1 ((this KeyValuePersistance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_loadAllSize_2 this _abeClientInformation 1))))

    
(unless (fboundp 'jm_loadAllSize_2) (defgeneric jm_loadAllSize_2 (this p1 p2)))
(defmethod jm_loadAllSize_2 ((this KeyValuePersistance) _abeClientInformation _size)
  (declare (ignorable this _abeClientInformation _size))
  (let (_recordStore _recordEnum _hashtable _name _value _smallIntegerSingletonFactory _stringBuffer _recordAsBytes _byteArrayInputStream _inputStream _id _index)
  (declare (ignorable _recordStore _recordEnum _hashtable _name _value _smallIntegerSingletonFactory _stringBuffer _recordAsBytes _byteArrayInputStream _inputStream _id _index))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
            (setf _hashtable nil)
            (setf _name nil)
            (setf _value nil)
            (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (setf _stringBuffer (StringMaker.jnew_0))
            (setf _recordAsBytes nil)
            (setf _byteArrayInputStream nil)
            (setf _inputStream nil)
            (block jbreak (loop while (jm_hasNextElement_0 _recordEnum) do
                    (block jcontinue
                (setf _id (jm_nextRecordId_0 _recordEnum))
                (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_LOADING_ID)) _id)) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL))
                (setf _recordAsBytes (jm_getRecord_2 (slot-value this 'f_tsUtil) _recordStore _id))
                (if (not (null _recordAsBytes))
                    (progn
                    (setf _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (setf _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (setf _hashtable (ABHashtable.jnew_0))
                    (progn
                        (setf _index 0)
                        (block jbreak (loop while (< _index _size) do
                            (block jcontinue
                        (setf _name (jm_readUTF_0 _inputStream))
                        (jm_readUTF_0 _inputStream)
                        (setf _value (jm_readUTF_0 _inputStream))
                        (jm_put_2 _hashtable _name _value))
                            (setf _index (JR.i32 (+ _index 1))))))
                    (jm_add_1 (slot-value this 'f_valueList) _hashtable)
                    (jm_add_1 (slot-value this 'f_idList) (jm_getAt_1 _smallIntegerSingletonFactory _id))))))))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_persistanceStrings) 'f_CLOSING_RECORDSTORE) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL))
                (jm_closeRecordStore_0 _recordStore))))))))

    
(unless (fboundp 'jm_save_2) (defgeneric jm_save_2 (this p1 p2)))
(defmethod jm_save_2 ((this KeyValuePersistance) _abeClientInformation _hashtable)
  (declare (ignorable this _abeClientInformation _hashtable))
  (let (_recordStore _byteArrayOutputStream _outputStream _value _commonSeps _objectArray _anyType _size _index _tsUtil _savedGameBytes)
  (declare (ignorable _recordStore _byteArrayOutputStream _outputStream _value _commonSeps _objectArray _anyType _size _index _tsUtil _savedGameBytes))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_persistanceStrings) 'f_SAVING)) (jm_toString_1 (StringUtil.jm_getInstance_0) _hashtable))) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (setf _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (setf _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (setf _value nil)
            (setf _commonSeps (CommonSeps.jm_getInstance_0))
            (setf _objectArray (jm_getKeysAsArray_1 (HashtableUtil.jm_getInstance_0) _hashtable))
            (setf _anyType nil)
            (setf _size (length _objectArray))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (jm_writeUTF_1 _outputStream (aref _objectArray _index))
                (jm_writeUTF_1 _outputStream (slot-value _commonSeps 'f_EQUALS))
                (setf _anyType (aref _objectArray _index))
                (setf _value (jm_get_1 _hashtable _anyType))
                (jm_writeUTF_1 _outputStream _value))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf _tsUtil (TsUtil.jm_getInstance_0))
            (setf _savedGameBytes (jm_getByteArray_1 _tsUtil (jm_toString_0 _byteArrayOutputStream)))
            (jm_addRecord_3 _recordStore _savedGameBytes 0 (length _savedGameBytes)))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_persistanceStrings) 'f_CLOSING_RECORDSTORE) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
                (jm_closeRecordStore_0 _recordStore))))))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this KeyValuePersistance) _index)
  (declare (ignorable this _index))
  (let (_hashtable)
  (declare (ignorable _hashtable))
    (block jreturn
        (setf _hashtable (aref (slot-value (slot-value this 'f_valueList) 'f_objectArray) _index))
        (return-from jreturn _hashtable))))



