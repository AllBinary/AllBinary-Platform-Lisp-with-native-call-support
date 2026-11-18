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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoreNamePersistanceSingleton (JObject)
  ((f_logUtil :initform nil)
   (f_tsUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_platformRecordIdUtil :initform nil)
   (f_RECORD_ID :initform nil)
   (f_name :initform nil)
   (f_nameBasicArrayList :initform nil)))

(defvar HighScoreNamePersistanceSingleton.jcell_SINGLETON :jnone)
(defun HighScoreNamePersistanceSingleton.jstatic_SINGLETON ()
  (when (eq HighScoreNamePersistanceSingleton.jcell_SINGLETON :jnone) (setf HighScoreNamePersistanceSingleton.jcell_SINGLETON (HighScoreNamePersistanceSingleton.jnew_0)))
  HighScoreNamePersistanceSingleton.jcell_SINGLETON)
(defun (setf HighScoreNamePersistanceSingleton.jstatic_SINGLETON) (value) (setf HighScoreNamePersistanceSingleton.jcell_SINGLETON value))

(defun HighScoreNamePersistanceSingleton.jnew_0 ()
  (let ((this (make-instance 'HighScoreNamePersistanceSingleton)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_platformRecordIdUtil) (PlatformRecordIdUtil.jm_getInstance_0))
    (setf (slot-value this 'f_RECORD_ID) "_SN")
    (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_nameBasicArrayList) (BasicArrayListD.jnew_0))
    this))

    
(defun HighScoreNamePersistanceSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HighScoreNamePersistanceSingleton.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this HighScoreNamePersistanceSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_deleteAll_2) (defgeneric jm_deleteAll_2 (this p1 p2)))
(defmethod jm_deleteAll_2 ((this HighScoreNamePersistanceSingleton) _abeClientInformation _gameInfo)
  (declare (ignorable this _abeClientInformation _gameInfo))
  (let (_size _integer _index)
  (declare (ignorable _size _integer _index))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_nameBasicArrayList)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _integer (aref (slot-value (slot-value this 'f_nameBasicArrayList) 'f_objectArray) _index))
            (jm_delete_3 this _abeClientInformation _gameInfo (jm_intValue_0 _integer)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 this))))

    
(unless (fboundp 'jm_getRecordId_1) (defgeneric jm_getRecordId_1 (this p1)))
(defmethod jm_getRecordId_1 ((this HighScoreNamePersistanceSingleton) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRecordId_2 (slot-value this 'f_platformRecordIdUtil) _abeClientInformation (slot-value this 'f_RECORD_ID))))))

    
(unless (fboundp 'jm_delete_3) (defgeneric jm_delete_3 (this p1 p2 p3)))
(defmethod jm_delete_3 ((this HighScoreNamePersistanceSingleton) _abeClientInformation _gameInfo _deleteId)
  (declare (ignorable this _abeClientInformation _gameInfo _deleteId))
  (let (_recordStore)
  (declare (ignorable _recordStore))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Deleting: ") _deleteId)) this (slot-value (slot-value this 'f_commonStrings) 'f_delete))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (jm_deleteRecord_1 _recordStore _deleteId))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 "Closing RecordStore" this (slot-value (slot-value this 'f_commonStrings) 'f_delete))
                (jm_closeRecordStore_0 _recordStore))))))))

    
(unless (fboundp 'jm_getIds_0) (defgeneric jm_getIds_0 (this)))
(defmethod jm_getIds_0 ((this HighScoreNamePersistanceSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_nameBasicArrayList)))))

    
(unless (fboundp 'jm_load_2) (defgeneric jm_load_2 (this p1 p2)))
(defmethod jm_load_2 ((this HighScoreNamePersistanceSingleton) _abeClientInformation _gameInfo)
  (declare (ignorable this _abeClientInformation _gameInfo))
  (let (_recordStore _LOADING_ID _recordEnum _smallIntegerSingletonFactory _recordAsBytes _byteArrayInputStream _inputStream _id)
  (declare (ignorable _recordStore _LOADING_ID _recordEnum _smallIntegerSingletonFactory _recordAsBytes _byteArrayInputStream _inputStream _id))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (if (eq (slot-value this 'f_name) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
                (progn
                (setf _LOADING_ID "Loading id: ")
                (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
                (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
                (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
                (setf _recordAsBytes nil)
                (setf _byteArrayInputStream nil)
                (setf _inputStream nil)
                (block jbreak (loop while (jm_hasNextElement_0 _recordEnum) do
                        (block jcontinue
                    (setf _id (jm_nextRecordId_0 _recordEnum))
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) _LOADING_ID) _id)) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))
                    (setf _recordAsBytes (jm_getRecord_2 (slot-value this 'f_tsUtil) _recordStore _id))
                    (setf _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (setf _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (block jbreak (loop while (> (jm_available_0 _inputStream) 0) do
                            (block jcontinue
                        (setf (slot-value this 'f_name) (jm_readUTF_0 _inputStream)))))
                    (jm_add_1 (slot-value this 'f_nameBasicArrayList) (jm_getAt_1 _smallIntegerSingletonFactory _id))))))))
            (error (_e) (declare (ignorable _e))
            (jm_save_3 this _abeClientInformation _gameInfo (slot-value this 'f_name))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION_LABEL)) (jm_getStackTrace_1 (ExceptionUtil.jm_getInstance_0) _e))) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))))
            (progn
            (handler-case (progn
                (if (not (null _recordStore))
                    (progn
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))
                    (jm_closeRecordStore_0 _recordStore))))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD) _e)))))
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_save_3) (defgeneric jm_save_3 (this p1 p2 p3)))
(defmethod jm_save_3 ((this HighScoreNamePersistanceSingleton) _abeClientInformation _gameInfo _name)
  (declare (ignorable this _abeClientInformation _gameInfo _name))
  (let (_recordStore _byteArrayOutputStream _outputStream _savedGameBytes)
  (declare (ignorable _recordStore _byteArrayOutputStream _outputStream _savedGameBytes))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Saving: ") _name)) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (setf _byteArrayOutputStream (ByteArrayOutputStream.jnew_0))
            (setf _outputStream (DataOutputStream.jnew_1 _byteArrayOutputStream))
            (jm_writeUTF_1 _outputStream _name)
            (setf _savedGameBytes (jm_toByteArray_0 _byteArrayOutputStream))
            (jm_addRecord_3 _recordStore _savedGameBytes 0 (length _savedGameBytes))
            (setf (slot-value this 'f_name) _name))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE) _e)))
            (progn
            (handler-case (progn
                (if (not (null _recordStore))
                    (progn
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE))
                    (jm_closeRecordStore_0 _recordStore))))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_SAVE) _e))))))))



