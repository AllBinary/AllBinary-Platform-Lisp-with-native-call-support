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
;;;; package org.allbinary.init.crypt.jcehelper

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicCryptUtil (JObject)
  ((f_logUtil :initform nil)
   (f_tsUtil :initform nil)
   (f_XML_START :initform nil)))

(defvar BasicCryptUtil.jcell_instance :jnone)
(defun BasicCryptUtil.jstatic_instance ()
  (when (eq BasicCryptUtil.jcell_instance :jnone) (setf BasicCryptUtil.jcell_instance (BasicCryptUtil.jnew_0)))
  BasicCryptUtil.jcell_instance)
(defun (setf BasicCryptUtil.jstatic_instance) (value) (setf BasicCryptUtil.jcell_instance value))

(defun BasicCryptUtil.jnew_0 ()
  (let ((this (make-instance 'BasicCryptUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    (setf (slot-value this 'f_XML_START) "<?xml")
    this))

    
(defun BasicCryptUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicCryptUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getDecryptedInputStream_2) (defgeneric jm_getDecryptedInputStream_2 (this p1 p2)))
(defmethod jm_getDecryptedInputStream_2 ((this BasicCryptUtil) _inputStream _cryptInterface)
  (declare (ignorable this _inputStream _cryptInterface))
  (let (_buffer _ch _decrypted _decryptedString _index)
  (declare (ignorable _buffer _ch _decrypted _decryptedString _index))
    (block jreturn
        (setf _buffer (ByteArrayOutputStream.jnew_0))
        (setf _ch 0)
        (block jbreak (loop while t do
                (block jcontinue
            (setf _ch (jm_read_0 _inputStream))
            (if (= _ch (JR.i32 (- 1)))
                (progn
                (return-from jbreak)))
            (jm_write_1 _buffer _ch))))
        (setf _decrypted (jm_decrypt_1 _cryptInterface (jm_toByteArray_0 _buffer)))
        (setf _decryptedString _decrypted)
        (setf _index (JR.indexOf _decryptedString (slot-value this 'f_XML_START)))
        (if (> _index 0)
            (progn
            (setf _decryptedString (JR.substring _decryptedString _index))))
        (return-from jreturn (ByteArrayInputStream.jnew_1 (jm_getByteArray_1 (slot-value this 'f_tsUtil) _decryptedString))))))



