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

(defclass KeySpecFactory (JObject)
  ((f_DES :initform nil)
   (f_DESEDE :initform nil)
   (f_BLOWFISH :initform nil)))

(defvar KeySpecFactory.jcell_instance :jnone)
(defun KeySpecFactory.jstatic_instance ()
  (when (eq KeySpecFactory.jcell_instance :jnone) (setf KeySpecFactory.jcell_instance (KeySpecFactory.jnew_0)))
  KeySpecFactory.jcell_instance)
(defun (setf KeySpecFactory.jstatic_instance) (value) (setf KeySpecFactory.jcell_instance value))

    
(defun KeySpecFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (KeySpecFactory.jstatic_instance)))))

    
(defun KeySpecFactory.jnew_0 ()
  (let ((this (make-instance 'KeySpecFactory)))
    (setf (slot-value this 'f_DES) "DES")
    (setf (slot-value this 'f_DESEDE) "DESede")
    (setf (slot-value this 'f_BLOWFISH) "Blowfish")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this KeySpecFactory) _algorithm _keyData)
  (declare (ignorable this _algorithm _keyData))
  (let (_tsUtil _commonStrings)
  (declare (ignorable _tsUtil _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _tsUtil (TsUtil.jm_getInstance_0))
            (if (eq (jm_compareTo_2 _tsUtil _algorithm (slot-value this 'f_DES)) 0)
                (progn
                (return-from jreturn (DESKeySpec.jnew_1 _keyData)))
                (if (eq (jm_compareTo_2 _tsUtil _algorithm (slot-value this 'f_DESEDE)) 0)
                (progn
                (return-from jreturn (DESedeKeySpec.jnew_1 _keyData)))
                (progn
                (error (JR.newException "RuntimeException"))))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (PreLogUtil.jm_putOE_4 (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)
            (error (JR.newException "RuntimeException")))))))



