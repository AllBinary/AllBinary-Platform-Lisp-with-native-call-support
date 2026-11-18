;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.logic.io.file

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SimpleFileUtil (JObject)
  ((f_logUtil :initform nil)
   (f_NULL_WRITER :initform nil)
   (f_NULL_READER :initform nil)
   (f_commonStrings :initform nil)
   (f_nullUtil :initform nil)
   (f_streamUtil :initform nil)))

(defvar SimpleFileUtil.jcell_instance :jnone)
(defun SimpleFileUtil.jstatic_instance ()
  (when (eq SimpleFileUtil.jcell_instance :jnone) (setf SimpleFileUtil.jcell_instance (SimpleFileUtil.jnew_0)))
  SimpleFileUtil.jcell_instance)
(defun (setf SimpleFileUtil.jstatic_instance) (value) (setf SimpleFileUtil.jcell_instance value))

(defun SimpleFileUtil.jnew_0 ()
  (let ((this (make-instance 'SimpleFileUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_NULL_WRITER) (SimpleFileUtil.jm_nullWriter_0))
    (setf (slot-value this 'f_NULL_READER) (SimpleFileUtil.jm_nullReader_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_nullUtil) (NullUtil.jm_getInstance_0))
    (setf (slot-value this 'f_streamUtil) (StreamUtil.jm_getInstance_0))
    this))

    
(defun SimpleFileUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SimpleFileUtil.jstatic_instance)))))

    
(defun SimpleFileUtil.jm_nullOutputStream_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullOutputStream.jstatic_NULL_OUTPUT_STREAM)))))

    
(defun SimpleFileUtil.jm_nullWriter_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullWriter.jstatic_NULL_WRITER)))))

    
(defun SimpleFileUtil.jm_nullReader_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NullReader.jstatic_NULL_READER)))))

    
(unless (fboundp 'jm_loadFileAsList_3) (defgeneric jm_loadFileAsList_3 (this p1 p2 p3)))
(defmethod jm_loadFileAsList_3 ((this SimpleFileUtil) _inputStream _max _byteArray1)
  (declare (ignorable this _inputStream _max _byteArray1))
  (let ()
    (block jreturn
        (return-from jreturn (jm_loadFileAsListReturnLine_4 this _inputStream _max _byteArray1 0)))))

    
(unless (fboundp 'jm_loadFileAsListReturnLine_4) (defgeneric jm_loadFileAsListReturnLine_4 (this p1 p2 p3 p4)))
(defmethod jm_loadFileAsListReturnLine_4 ((this SimpleFileUtil) _inputStream _max _byteArray1 _includeReturnLine)
  (declare (ignorable this _inputStream _max _byteArray1 _includeReturnLine))
  (let (_stringList _byteArray _outputStream2 _size _index _startIndex _returnLine _s)
  (declare (ignorable _stringList _byteArray _outputStream2 _size _index _startIndex _returnLine _s))
    (block jreturn
        (setf _stringList (BasicArrayListD.jnew_0))
        (if (null _inputStream)
            (progn
            (return-from jreturn _stringList)))
        (setf _byteArray (slot-value (slot-value this 'f_nullUtil) 'f_NULL_BYTE_ARRAY))
        (handler-case (progn
            (setf _outputStream2 (ByteArrayOutputStream.jnew_1 _max))
            (setf _byteArray (jm_getByteArray_3 (slot-value this 'f_streamUtil) _inputStream _outputStream2 _byteArray1))
            (jm_close_1 (slot-value this 'f_streamUtil) _inputStream))
            (error (_e) (declare (ignorable _e))
            (jm_close_1 (slot-value this 'f_streamUtil) _inputStream)
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD) _e)))
        (if (null _byteArray)
            (progn
            (return-from jreturn _stringList)))
        (setf _size (length _byteArray))
        (setf _index 0)
        (setf _startIndex 0)
        (setf _returnLine 0)
        (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _startIndex _index)
            (block jbreak (loop while (and (< _index (JR.i32 (- _size 1))) (/= (aref _byteArray _index) (JR.i8 10))) do
                    (block jcontinue
                (setf _index (JR.i32 (+ _index 1))))))
            (if (= _includeReturnLine 0)
                (progn
                (if (and (> _index 0) (= (aref _byteArray (JR.i32 (- _index 1))) (JR.i8 13)))
                    (progn
                    (setf _returnLine 1))
                    (progn
                    (setf _returnLine 0)))))
            (setf _s (JR.fromChars _byteArray _startIndex (JR.i32 (- (JR.i32 (- (JR.i32 (+ _index _includeReturnLine)) _returnLine)) _startIndex))))
            (jm_add_1 _stringList _s)
            (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _stringList))))

    
(unless (fboundp 'jm_createStringFromArrayOfStrings_1) (defgeneric jm_createStringFromArrayOfStrings_1 (this p1)))
(defmethod jm_createStringFromArrayOfStrings_1 ((this SimpleFileUtil) _stringArray)
  (declare (ignorable this _stringArray))
  (let (_stringMaker _size _index)
  (declare (ignorable _stringMaker _size _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _size (length _stringArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_append_1 _stringMaker (aref _stringArray _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringMaker)))))



