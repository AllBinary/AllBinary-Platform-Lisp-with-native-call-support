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
;;;; package org.allbinary.logic.system.security.crypt

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DatabaseEncoder (JObject)
  ())

    
(defun DatabaseEncoder.jnew_0 ()
  (let ((this (make-instance 'DatabaseEncoder)))
  (let ()
    (block jreturn nil))
    this))

    
(defun DatabaseEncoder.jm_encode_1 (_value)
  (declare (ignorable _value))
  (let (_array _stringBuffer _index _commonStrings)
  (declare (ignorable _array _stringBuffer _index _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _array _value)
            (setf _stringBuffer (StringMaker.jnew_0))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (length _array)) do
                    (block jcontinue
                (jm_append_1 _stringBuffer (jm_toString_0 (aref _array _index)))
                (if (< _index (JR.i32 (- (length _array) 1)))
                    (progn
                    (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (return-from jreturn (jm_toString_0 _stringBuffer)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) "DatabaseEncoder" "decode" _e)
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))

    
(defun DatabaseEncoder.jm_decode_1 (_value)
  (declare (ignorable _value))
  (let (_tokenizer _vector _size _decode _byteOfData _index _commonStrings)
  (declare (ignorable _tokenizer _vector _size _decode _byteOfData _index _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _tokenizer (Tokenizer.jnew_1 (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)))
            (setf _vector (jm_getTokensFromString_2 _tokenizer _value (BasicArrayListD.jnew_0)))
            (setf _size (jm_size_0 _vector))
            (setf _decode (JR.newArray 0 _size))
            (setf _byteOfData nil)
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _byteOfData (aref (slot-value _vector 'f_objectArray) _index))
                (setf (aref _decode _index) (Byte.jm_parseByte_1 _byteOfData)))
                    (setf _index (JR.i32 (+ _index 1))))))
            (return-from jreturn _decode))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putSE_4 (slot-value _commonStrings 'f_EXCEPTION) "DatabaseEncoder" "decode" _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))))



