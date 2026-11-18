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

(defclass CryptInterface (JObject)
  ())

(defun CryptInterface.jnew_0 ()
  (let ((this (make-instance 'CryptInterface)))
    this))

    
(unless (fboundp 'jm_encrypt_1) (defgeneric jm_encrypt_1 (this p1)))
(defmethod jm_encrypt_1 ((this CryptInterface) _array)
  (declare (ignorable this _array))
  (error (JR.newException "AbstractMethodError" "encrypt")))

    
(unless (fboundp 'jm_decrypt_1) (defgeneric jm_decrypt_1 (this p1)))
(defmethod jm_decrypt_1 ((this CryptInterface) _array)
  (declare (ignorable this _array))
  (error (JR.newException "AbstractMethodError" "decrypt")))



