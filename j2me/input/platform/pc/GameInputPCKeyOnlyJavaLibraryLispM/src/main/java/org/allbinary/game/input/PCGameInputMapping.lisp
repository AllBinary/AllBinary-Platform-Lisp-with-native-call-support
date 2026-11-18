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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PCGameInputMapping (PersistentInputMapping)
  ())

    
(defun PCGameInputMapping.jnew_0 ()
  (let ((this (make-instance 'PCGameInputMapping)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this PCGameInputMapping) _abeClientInformation)
  (declare (ignorable this _abeClientInformation))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
        (PCKeyFactory.jm_getInstance_0)
        (call-next-method this _abeClientInformation)
        (if (or (eq (jm_getTotalMapped_0 this) 0) (jm_isDefaultNew_0 this))
            (progn
            (jm_addMapping_1 (jm_getInputMapping_0 this) (jm_getDefault_0 this))
            (jm_save_1 this _abeClientInformation))))))

    
(unless (fboundp 'jm_isDelete_1) (defgeneric jm_isDelete_1 (this p1)))
(defmethod jm_isDelete_1 ((this PCGameInputMapping) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (if (eq _input (slot-value (PCKeyFactory.jm_getInstance_0) 'f_DEL))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isSystemInput_1) (defgeneric jm_isSystemInput_1 (this p1)))
(defmethod jm_isSystemInput_1 ((this PCGameInputMapping) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



