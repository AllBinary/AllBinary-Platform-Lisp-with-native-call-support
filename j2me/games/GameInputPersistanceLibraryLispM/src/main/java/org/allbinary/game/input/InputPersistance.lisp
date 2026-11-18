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

;GameInputPersistanceLibrary
(defclass InputPersistance (BasicPersitance)
  ((f_tsUtil :initform nil)
   (f_hashtableUtil :initform nil)))

    
(defun InputPersistance.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'InputPersistance)))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_hashtableUtil) (HashtableUtil.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_loadAll_1) (defgeneric jm_loadAll_1 (this p1)))
(defmethod jm_loadAll_1 ((this InputPersistance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_recordStore _recordEnum _gameActionInputId _inputId _gameActionInput _input _hashtable _gameKeyFactory _stringBuffer _inputFactory _smallIntegerSingletonFactory _stdUtil _recordAsBytes _byteArrayInputStream _inputStream _id _value _gameActionInputIdAsString)
  (declare (ignorable _recordStore _recordEnum _gameActionInputId _inputId _gameActionInput _input _hashtable _gameKeyFactory _stringBuffer _inputFactory _smallIntegerSingletonFactory _stdUtil _recordAsBytes _byteArrayInputStream _inputStream _id _value _gameActionInputIdAsString))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
            (setf _gameActionInputId 0)
            (setf _inputId 0)
            (setf _gameActionInput nil)
            (setf _input nil)
            (setf _hashtable nil)
            (setf _gameKeyFactory (GameKeyMappingFactory.jm_getInstance_0))
            (setf _stringBuffer (StringMaker.jnew_0))
            (setf _inputFactory (InputFactory.jm_getInstance_0))
            (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
            (setf _stdUtil (StdUtil.jm_getInstance_0))
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
                    (setf _hashtable (jm_createHashtable_0 _stdUtil))
                    (setf _value 0)
                    (block jbreak (loop while (> (jm_available_0 _inputStream) 0) do
                            (block jcontinue
                        (setf _gameActionInputIdAsString (jm_readUTF_0 _inputStream))
                        (setf _value (Integer.jm_parseInt_1 _gameActionInputIdAsString))
                        (setf _gameActionInputId _value)
                        (jm_readUTF_0 _inputStream)
                        (setf _value (Integer.jm_parseInt_1 (jm_readUTF_0 _inputStream)))
                        (setf _inputId _value)
                        (setf _gameActionInput (jm_getGameKey_1 _gameKeyFactory (JR.i32 _gameActionInputId)))
                        (setf _input (jm_getInstanceById_1 _inputFactory (JR.i32 _inputId)))
                        (if (or (eq _input (slot-value _inputFactory 'f_NO_INPUT)) (null _gameActionInput))
                            (progn
                            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
                            (if (eq _input (slot-value _inputFactory 'f_NO_INPUT))
                                (progn
                                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_ERROR_LOADING_ID))
                                (jm_appendlong_1 _stringBuffer _inputId)
                                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_GAME_ACTION_INPUT))
                                (jm_appendlong_1 _stringBuffer _gameActionInputId)
                                (PreLogUtil.jm_put_3 (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL))))
                            (if (null _gameActionInput)
                                (progn
                                (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
                                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_ERROR_LOADING))
                                (jm_appendlong_1 _stringBuffer _gameActionInputId)
                                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_ID))
                                (jm_appendlong_1 _stringBuffer _inputId)
                                (PreLogUtil.jm_put_3 (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL)))))
                            (progn
                            nil))
                        (jm_put_2 _hashtable _input _gameActionInput))))
                    (jm_add_1 (slot-value this 'f_valueList) _hashtable)
                    (jm_add_1 (slot-value this 'f_idList) (jm_getAt_1 _smallIntegerSingletonFactory _id)))
                    (progn
                    nil))))))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_persistanceStrings) 'f_CLOSING_RECORDSTORE) this (slot-value (slot-value this 'f_persistanceStrings) 'f_LOAD_ALL))
                (jm_closeRecordStore_0 _recordStore))))))))

    
(unless (fboundp 'jm_save_2) (defgeneric jm_save_2 (this p1 p2)))
(defmethod jm_save_2 ((this InputPersistance) _abeClientInformation _hashtable)
  (declare (ignorable this _abeClientInformation _hashtable))
  (let (_recordStore _stringBuffer _byteArrayOutputStream _outputStream _gameActionInput _list _input _savedGameBytes _commonSeps _smallIntegerSingletonFactory _inputObjectArray _size _gameActionInputIdAsString _inputIdAsString _index2 _index)
  (declare (ignorable _recordStore _stringBuffer _byteArrayOutputStream _outputStream _gameActionInput _list _input _savedGameBytes _commonSeps _smallIntegerSingletonFactory _inputObjectArray _size _gameActionInputIdAsString _inputIdAsString _index2 _index))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_persistanceStrings) 'f_SAVING)) (jm_toString_1 (StringUtil.jm_getInstance_0) _hashtable))) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (setf _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (setf _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (setf _gameActionInput nil)
            (setf _list nil)
            (setf _input nil)
            (setf _savedGameBytes nil)
            (setf _commonSeps (CommonSeps.jm_getInstance_0))
            (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
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
                    (setf _gameActionInputIdAsString (JR.toString (jm_getAt_1 _smallIntegerSingletonFactory (jm_getId_0 _gameActionInput))))
                    (jm_writeUTF_1 _outputStream _gameActionInputIdAsString)
                    (jm_writeUTF_1 _outputStream (slot-value _commonSeps 'f_EQUALS))
                    (setf _input (aref (slot-value _list 'f_objectArray) _index2))
                    (setf _inputIdAsString (JR.toString (jm_getAt_1 _smallIntegerSingletonFactory (jm_getId_0 _input))))
                    (jm_writeUTF_1 _outputStream _inputIdAsString))
                        (setf _index2 (JR.i32 (+ _index2 1)))))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf _savedGameBytes (jm_toByteArray_0 _byteArrayOutputStream))
            (jm_addRecord_3 _recordStore _savedGameBytes 0 (length _savedGameBytes)))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_persistanceStrings) 'f_CLOSING_RECORDSTORE) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
                (jm_closeRecordStore_0 _recordStore))))))))



