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
;;;; package org.allbinary.logic.system.security.crypt.jcehelper

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SecretComposite (BaseSecretComposite)
  ((f_byteUtil :initform nil)
   (f_cipher :initform nil)
   (f_secretKey :initform nil)
   (f_key :initform nil)))

    
(defun SecretComposite.jnew_3 (_secretKey _cipher _key)
  (declare (ignorable _secretKey _cipher _key))
  (let ((this (make-instance 'SecretComposite)))
    (setf (slot-value this 'f_byteUtil) (ByteUtil.jm_getInstance_0))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_secretKey) _secretKey)
        (setf (slot-value this 'f_cipher) _cipher)
        (setf (slot-value this 'f_key) _key)))
    this))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this SecretComposite) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (setf _array (jm_mutilate_1 this _array))
        (jm_init_2 (slot-value this 'f_cipher) (Cipher.jstatic_ENCRYPT_MODE) (slot-value this 'f_secretKey))
        (return-from jreturn (jm_doFinal_1 (slot-value this 'f_cipher) _array)))))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this SecretComposite) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (jm_init_2 (slot-value this 'f_cipher) (Cipher.jstatic_DECRYPT_MODE) (slot-value this 'f_secretKey))
        (return-from jreturn (jm_mutilate_1 this (jm_doFinal_1 (slot-value this 'f_cipher) _array))))))

    
(unless (fboundp 'jm_mutilate_1) (defgeneric jm_mutilate_1 (this p1)))
(defmethod jm_mutilate_1 ((this SecretComposite) _array)
  (declare (ignorable this _array))
  (let (_value _index)
  (declare (ignorable _value _index))
    (block jreturn
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length (slot-value this 'f_key))) do
                (block jcontinue
            (setf _value (aref (slot-value this 'f_key) _index))
            (if (and (< _value 8) (> _value 0))
                (progn
                (setf _array (jm_xorByte_2 (slot-value this 'f_byteUtil) _array _value)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _array))))



