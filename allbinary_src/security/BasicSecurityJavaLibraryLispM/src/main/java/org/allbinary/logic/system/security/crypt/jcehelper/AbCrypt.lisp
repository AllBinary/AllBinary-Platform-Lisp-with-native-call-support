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

(defclass AbCrypt (JObject)
  ((f_tsUtil :initform nil)
   (f_secretComposite :initform nil)
   (f_algorithm :initform nil)))

    
(defun AbCrypt.jnew_1 (_algorithm)
  (declare (ignorable _algorithm))
  (let ((this (make-instance 'AbCrypt)))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_secretComposite) (BaseSecretComposite.jstatic_NULL_SECRET_COMPOSITE))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_algorithm) _algorithm)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this AbCrypt) _keyAsString)
  (declare (ignorable this _keyAsString))
  (let (_commonStrings _key _keySpec _keyFactory _secretKey _cipher)
  (declare (ignorable _commonStrings _key _keySpec _keyFactory _secretKey _cipher))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (handler-case (progn
            (handler-case (progn
                (Security.jm_addProvider_1 (BouncyCastleProvider.jnew_0)))
                (error (_e) (declare (ignorable _e))
                (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_INIT) _e)))
            (setf _key (jm_getByteArray_1 (slot-value this 'f_tsUtil) _keyAsString))
            (setf _keySpec (jm_getInstance_2 (KeySpecFactory.jm_getInstance_0) (slot-value this 'f_algorithm) _key))
            (setf _keyFactory (SecretKeyFactory.jm_getInstance_1 (slot-value this 'f_algorithm)))
            (setf _secretKey (jm_generateSecret_1 _keyFactory _keySpec))
            (setf _cipher (Cipher.jm_getInstance_1 (slot-value this 'f_algorithm)))
            (setf (slot-value this 'f_secretComposite) (SecretComposite.jnew_3 _secretKey _cipher _key)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "init Failed" this (slot-value _commonStrings 'f_INIT) _e))))))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this AbCrypt) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (jm_encrypt_1 (slot-value this 'f_secretComposite) _array)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "Encrypt Failed" this "encrypt" _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this AbCrypt) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (jm_decrypt_1 (slot-value this 'f_secretComposite) _array)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 "decrypt Failed" this "decrypt" _e)
            (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_BYTE_ARRAY)))))))



