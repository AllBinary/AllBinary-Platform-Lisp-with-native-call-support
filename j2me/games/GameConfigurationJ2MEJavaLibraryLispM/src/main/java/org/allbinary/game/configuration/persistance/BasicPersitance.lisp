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

(defclass BasicPersitance (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_persistanceStrings :initform nil)
   (f_platformRecordIdUtil :initform nil)
   (f_recordId :initform nil)
   (f_valueList :initform nil)
   (f_idList :initform nil)))

    
(defun BasicPersitance.jnew_1 (_recordId)
  (declare (ignorable _recordId))
  (let ((this (make-instance 'BasicPersitance)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_persistanceStrings) (PersistanceStrings.jm_getInstance_0))
    (setf (slot-value this 'f_platformRecordIdUtil) (PlatformRecordIdUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_valueList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_idList) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_recordId) _recordId)))
    this))

    
(unless (fboundp 'jm_deleteRecoreStore_1) (defgeneric jm_deleteRecoreStore_1 (this p1)))
(defmethod jm_deleteRecoreStore_1 ((this BasicPersitance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (RecordStore.jm_deleteRecordStore_1 (jm_getRecordId_1 this _abeClientInformation)))))

    
(unless (fboundp 'jm_deleteAll_1) (defgeneric jm_deleteAll_1 (this p1)))
(defmethod jm_deleteAll_1 ((this BasicPersitance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let (_size _integer _index)
  (declare (ignorable _size _integer _index))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_idList)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _integer (aref (slot-value (slot-value this 'f_idList) 'f_objectArray) _index))
            (jm_delete_2 this _abeClientInformation (jm_intValue_0 _integer)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 this))))

    
(unless (fboundp 'jm_delete_2) (defgeneric jm_delete_2 (this p1 p2)))
(defmethod jm_delete_2 ((this BasicPersitance) _abeClientInformation _deleteId)
  (declare (ignorable this _abeClientInformation _deleteId))
  (let (_recordStore)
  (declare (ignorable _recordStore))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_persistanceStrings) 'f_DELETING_WITH_ID)) _deleteId)) this (slot-value (slot-value this 'f_commonStrings) 'f_delete))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this _abeClientInformation) t))
            (jm_deleteRecord_1 _recordStore _deleteId))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (if (not (null _recordStore))
                (progn
                (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_persistanceStrings) 'f_CLOSING_RECORDSTORE) this (slot-value (slot-value this 'f_commonStrings) 'f_delete))
                (jm_closeRecordStore_0 _recordStore))))))))

    
(unless (fboundp 'jm_getRecordId_1) (defgeneric jm_getRecordId_1 (this p1)))
(defmethod jm_getRecordId_1 ((this BasicPersitance) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRecordId_2 (slot-value this 'f_platformRecordIdUtil) _abeClientInformation (slot-value this 'f_recordId))))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicPersitance))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_valueList)))))

    
(unless (fboundp 'jm_getIds_0) (defgeneric jm_getIds_0 (this)))
(defmethod jm_getIds_0 ((this BasicPersitance))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_idList)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this BasicPersitance))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_valueList))
        (jm_clear_0 (slot-value this 'f_idList)))))



