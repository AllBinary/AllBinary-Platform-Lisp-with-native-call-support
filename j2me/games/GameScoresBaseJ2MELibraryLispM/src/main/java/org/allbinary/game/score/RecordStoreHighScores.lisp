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

(defclass RecordStoreHighScores (HighScores)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_platformRecordIdUtil :initform nil)
   (f_tsUtil :initform nil)
   (f_RECORD_ID :initform nil)
   (f_MAXHIGHSCORES :initform 0)
   (f_gameInfo :initform nil)
   (f_abeClientInformation :initform nil)
   (f_recordComparatorInterface :initform nil)))

(defvar RecordStoreHighScores.jcell_hashTable :jnone)
(defun RecordStoreHighScores.jstatic_hashTable ()
  (when (eq RecordStoreHighScores.jcell_hashTable :jnone) (setf RecordStoreHighScores.jcell_hashTable (jm_createHashtable_0 (StdUtil.jm_getInstance_0))))
  RecordStoreHighScores.jcell_hashTable)
(defun (setf RecordStoreHighScores.jstatic_hashTable) (value) (setf RecordStoreHighScores.jcell_hashTable value))

    
(defun RecordStoreHighScores.jnew_6 (_abeClientInformation _gameInfo _name _heading _columnTwoHeading _recordComparatorInterface)
  (declare (ignorable _abeClientInformation _gameInfo _name _heading _columnTwoHeading _recordComparatorInterface))
  (let ((this (make-instance 'RecordStoreHighScores)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_platformRecordIdUtil) (PlatformRecordIdUtil.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_RECORD_ID) "_HS")
    (setf (slot-value this 'f_MAXHIGHSCORES) 100)
    
    
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_abeClientInformation) _abeClientInformation)
        (setf (slot-value this 'f_gameInfo) _gameInfo)
        (setf (slot-value this 'f_recordComparatorInterface) _recordComparatorInterface)
        (jm_load_0 this)))
    this))

    
(defun RecordStoreHighScores.jm_getInstance_6 (_abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface)
  (declare (ignorable _abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface))
  (let (_highScoresCanBeNull _highScores)
  (declare (ignorable _highScoresCanBeNull _highScores))
    (block jreturn
        (setf _highScoresCanBeNull (jm_get_1 (RecordStoreHighScores.jstatic_hashTable) _highScoreName))
        (if (null _highScoresCanBeNull)
            (progn
            (setf _highScores (RecordStoreHighScores.jnew_6 _abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface))
            (jm_put_2 (RecordStoreHighScores.jstatic_hashTable) (jm_getName_0 _highScores) _highScores)
            (return-from jreturn _highScores)))
        (return-from jreturn _highScoresCanBeNull))))

    
(unless (fboundp 'jm_getRecordId_1) (defgeneric jm_getRecordId_1 (this p1)))
(defmethod jm_getRecordId_1 ((this RecordStoreHighScores) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRecordId_2 (slot-value this 'f_platformRecordIdUtil) _abeClientInformation (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonSeps.jm_getInstance_0) 'f_UNDERSCORE)) (jm_getName_0 this)) (slot-value this 'f_RECORD_ID))))))))

    
(unless (fboundp 'jm_addHighScore_1) (defgeneric jm_addHighScore_1 (this p1)))
(defmethod jm_addHighScore_1 ((this RecordStoreHighScores) _newHighScore)
  (declare (ignorable this _newHighScore))
  (let (_recordStore _highScoreBytes _recordId)
  (declare (ignorable _recordStore _highScoreBytes _recordId))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) "Adding HighScore: ") (jm_getScore_0 _newHighScore))) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))
            (if (jm_isTooManyHighScores_0 this)
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "Removing Lowest Score" this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))
                (jm_removeLowestHighScore_0 this)))
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this (slot-value this 'f_abeClientInformation)) t))
            (setf _highScoreBytes (jm_getAsBytes_0 _newHighScore))
            (setf _recordId (jm_addRecord_3 _recordStore _highScoreBytes 0 (length _highScoreBytes)))
            (jm_load_0 this))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD) _e)))
            (progn
            (handler-case (progn
                (if (not (null _recordStore))
                    (progn
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))
                    (jm_closeRecordStore_0 _recordStore))))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD) _e))))))))

    
(unless (fboundp 'jm_removeLowestHighScore_0) (defgeneric jm_removeLowestHighScore_0 (this)))
(defmethod jm_removeLowestHighScore_0 ((this RecordStoreHighScores))
  (declare (ignorable this))
  (let (_recordStore _recordEnum _scoreComparator _bestHighScore _recordAsBytes _byteArrayInputStream _inputStream _id _name _nextScore _nextCurrentHighScore)
  (declare (ignorable _recordStore _recordEnum _scoreComparator _bestHighScore _recordAsBytes _byteArrayInputStream _inputStream _id _name _nextScore _nextCurrentHighScore))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this (slot-value this 'f_abeClientInformation)) t))
            (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
            (setf _scoreComparator (slot-value this 'f_recordComparatorInterface))
            (setf _bestHighScore (HighScore.jnew_4 (JR.i32 (- 1)) "none" (GameInfo.jstatic_NONE) (jm_getBestScore_0 _scoreComparator)))
            (setf _recordAsBytes nil)
            (setf _byteArrayInputStream nil)
            (setf _inputStream nil)
            (block jbreak (loop while (jm_hasNextElement_0 _recordEnum) do
                    (block jcontinue
                (setf _id (jm_nextRecordId_0 _recordEnum))
                (setf _recordAsBytes (jm_getRecord_2 (slot-value this 'f_tsUtil) _recordStore _id))
                (if (not (null _recordAsBytes))
                    (progn
                    (setf _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (setf _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (setf _name (jm_readUTF_0 _inputStream))
                    (setf _nextScore (jm_readLong_0 _inputStream))
                    (setf _nextCurrentHighScore (HighScore.jnew_4 _id _name (GameInfo.jstatic_NONE) _nextScore))
                    (if (eq (jm_compare_2 (slot-value this 'f_recordComparatorInterface) (jm_getAsBytes_0 _nextCurrentHighScore) (jm_getAsBytes_0 _bestHighScore)) (RecordComparator.jstatic_FOLLOWS))
                        (progn
                        (setf _bestHighScore _nextCurrentHighScore))))))))
            (if (not (eq (jm_getId_0 _bestHighScore) (JR.i32 (- 1))))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) "Removing Lowest HighScore: ") (jm_getScore_0 _bestHighScore))) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))
                (jm_deleteRecord_1 _recordStore (jm_getId_0 _bestHighScore)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "removeLowestHighScore" _e)))
            (progn
            (handler-case (progn
                (if (not (null _recordStore))
                    (progn
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this "removeLowestHighScore")
                    (jm_closeRecordStore_0 _recordStore))))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "removeLowestHighScore" _e))))))))

    
(unless (fboundp 'jm_load_0) (defgeneric jm_load_0 (this)))
(defmethod jm_load_0 ((this RecordStoreHighScores))
  (declare (ignorable this))
  (let (_recordStore _recordEnum _recordAsBytes _byteArrayInputStream _inputStream _id _name _score _newHighScore _list _size _lastIndex _highScore _index)
  (declare (ignorable _recordStore _recordEnum _recordAsBytes _byteArrayInputStream _inputStream _id _name _score _newHighScore _list _size _lastIndex _highScore _index))
    (block jreturn
        (setf _recordStore (NullRecordStore.jstatic_NULL_RECORD_STORE))
        (unwind-protect (handler-case (progn
            (setf _recordStore (RecordStore.jm_openRecordStore_2 (jm_getRecordId_1 this (slot-value this 'f_abeClientInformation)) t))
            (jm_setList_1 this (BasicArrayListD.jnew_0))
            (setf _recordEnum (jm_enumerateRecords_3 _recordStore (NullRecordFilter.jstatic_NULL_RECORD_FILTER) (NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR) t))
            (setf _recordAsBytes nil)
            (setf _byteArrayInputStream nil)
            (setf _inputStream nil)
            (block jbreak (loop while (jm_hasNextElement_0 _recordEnum) do
                    (block jcontinue
                (setf _id (jm_nextRecordId_0 _recordEnum))
                (setf _recordAsBytes (jm_getRecord_2 (slot-value this 'f_tsUtil) _recordStore _id))
                (if (not (null _recordAsBytes))
                    (progn
                    (setf _byteArrayInputStream (ByteArrayInputStream.jnew_1 _recordAsBytes))
                    (setf _inputStream (DataInputStream.jnew_1 _byteArrayInputStream))
                    (handler-case (progn
                        (setf _name (jm_readUTF_0 _inputStream))
                        (setf _score (jm_readLong_0 _inputStream))
                        (setf _newHighScore (HighScore.jnew_4 _id _name (GameInfo.jstatic_NONE) _score))
                        (setf _list (jm_getList_0 this))
                        (setf _size (jm_size_0 _list))
                        (setf _lastIndex _size)
                        (progn
                            (setf _index 0)
                            (block jbreak (loop while (< _index _size) do
                                (block jcontinue
                            (setf _highScore (aref (slot-value _list 'f_objectArray) _index))
                            (if (eq (jm_compare_2 (slot-value this 'f_recordComparatorInterface) (jm_getAsBytes_0 _newHighScore) (jm_getAsBytes_0 _highScore)) (RecordComparator.jstatic_PRECEDES))
                                (progn
                                (setf _lastIndex _index)
                                (return-from jbreak))))
                                (setf _index (JR.i32 (+ _index 1))))))
                        (jm_addAt_2 _list _lastIndex _newHighScore))
                        (error (_e) (declare (ignorable _e))
                        (jm_put_4 (slot-value this 'f_logUtil) "EOF" this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD) _e)
                        (error _e)))))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) "No High Scores" this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD) _e)))
            (progn
            (handler-case (progn
                (if (not (null _recordStore))
                    (progn
                    (PreLogUtil.jm_put_3 "Closing RecordStore" this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD))
                    (jm_closeRecordStore_0 _recordStore))))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_LOAD) _e))))))))

    
(unless (fboundp 'jm_isTooManyHighScores_0) (defgeneric jm_isTooManyHighScores_0 (this)))
(defmethod jm_isTooManyHighScores_0 ((this RecordStoreHighScores))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (and (not (null (jm_getList_0 this))) (< (jm_size_0 (jm_getList_0 this)) (slot-value this 'f_MAXHIGHSCORES)))
            (progn
            (return-from jreturn nil))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "HighScores RecordStore Max Reached: ") (slot-value this 'f_MAXHIGHSCORES))) this "isTooManyHighScores")
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_isBestScore_1) (defgeneric jm_isBestScore_1 (this p1)))
(defmethod jm_isBestScore_1 ((this RecordStoreHighScores) _newHighScore)
  (declare (ignorable this _newHighScore))
  (let (_list _size _highScore _index)
  (declare (ignorable _list _size _highScore _index))
    (block jreturn
        (handler-case (progn
            (if (not (jm_isTooManyHighScores_0 this))
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) "Slot Available for a High Score" this "isBestScore")
                (return-from jreturn t))
                (progn
                (setf _list (jm_getList_0 this))
                (setf _size (jm_size_0 _list))
                (progn
                    (setf _index 0)
                    (block jbreak (loop while (< _index _size) do
                        (block jcontinue
                    (setf _highScore (aref (slot-value _list 'f_objectArray) _index))
                    (if (eq (jm_compare_2 (slot-value this 'f_recordComparatorInterface) (jm_getAsBytes_0 _newHighScore) (jm_getAsBytes_0 _highScore)) (RecordComparator.jstatic_FOLLOWS))
                        (progn
                        (jm_putF_3 (slot-value this 'f_logUtil) "Obtained a High Score" this "isBestScore")
                        (return-from jreturn t))))
                        (setf _index (JR.i32 (+ _index 1))))))))
            (jm_putF_3 (slot-value this 'f_logUtil) "Not a High Score" this "isBestScore")
            (return-from jreturn nil))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD) _e)
            (error _e))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this RecordStoreHighScores))
  (declare (ignorable this))
  (let (_stringBuffer _list _size _highScore _index)
  (declare (ignorable _stringBuffer _list _size _highScore _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (call-next-method this))
        (setf _list (jm_getList_0 this))
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _highScore (aref (slot-value _list 'f_objectArray) _index))
            (jm_append_1 _stringBuffer (jm_getScoreString_0 _highScore))
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_COMMA_SEP)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



