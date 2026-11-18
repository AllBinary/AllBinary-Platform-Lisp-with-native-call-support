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
;;;; package org.allbinary.logic.system.security.crypt.jcehelper

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicCrypt (JObject)
  ((f_byteUtil :initform nil)
   (f_key :initform nil)))

    
(defun BasicCrypt.jnew_1 (_keyAsString)
  (declare (ignorable _keyAsString))
  (let ((this (make-instance 'BasicCrypt)))
    (setf (slot-value this 'f_byteUtil) (ByteUtil.jm_getInstance_0))
    
  (let (_key _commonStrings)
  (declare (ignorable _key _commonStrings))
    (block jreturn
        (setf _key (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY))
        (handler-case (progn
            (setf _key (jm_getByteArray_1 (TsUtil.jm_getInstance_0) _keyAsString)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) this "AbCrypt(alg,key)" _e)))
        (setf (slot-value this 'f_key) _key)))
    this))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this BasicCrypt) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (jm_mutilate_1 this _array)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this BasicCrypt) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (jm_mutilate_1 this _array)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))))

    
(unless (fboundp 'jm_mutilate_1) (defgeneric jm_mutilate_1 (this p1)))
(defmethod jm_mutilate_1 ((this BasicCrypt) _array)
  (declare (ignorable this _array))
  (let (_value _index)
  (declare (ignorable _value _index))
    (block jreturn
        (setf _value 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length (slot-value this 'f_key))) do
                (block jcontinue
            (setf _value (aref (slot-value this 'f_key) _index))
            (setf _array (jm_xor_2 (slot-value this 'f_byteUtil) _array _value)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _array))))



