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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StoreAppClientInformation (AbeClientInformation)
  ((f_longArrayIdentifier :initform nil)))

    
(defun StoreAppClientInformation.jnew_5 (_name _version _specialName _shortName _longArrayIdentifier)
  (declare (ignorable _name _version _specialName _shortName _longArrayIdentifier))
  (let ((this (make-instance 'StoreAppClientInformation)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_longArrayIdentifier) _longArrayIdentifier)))
    this))

    
(unless (fboundp 'jm_getLongArrayIdentifier_0) (defgeneric jm_getLongArrayIdentifier_0 (this)))
(defmethod jm_getLongArrayIdentifier_0 ((this StoreAppClientInformation))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_longArrayIdentifier)))))



