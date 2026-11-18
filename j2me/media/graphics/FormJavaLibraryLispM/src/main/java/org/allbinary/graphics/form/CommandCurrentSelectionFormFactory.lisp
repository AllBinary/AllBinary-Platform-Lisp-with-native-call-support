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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommandCurrentSelectionFormFactory (JObject)
  ())

(defun CommandCurrentSelectionFormFactory.jnew_0 ()
  (let ((this (make-instance 'CommandCurrentSelectionFormFactory)))
    this))

    
(defun CommandCurrentSelectionFormFactory.jm_getInstance_8 (_title _items _rectangle _formType _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _rectangle _formType _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
  (let (_scrollSelectionForm)
  (declare (ignorable _scrollSelectionForm))
    (block jreturn
        (if (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (TouchFeatureFactory.jm_getInstance_0) 'f_TOUCH_ENABLED))
            (progn
            (setf _scrollSelectionForm (CommandCurrentSelectionForm.jnew_6 _title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
            (jm_init_2 _scrollSelectionForm _rectangle _formType)
            (return-from jreturn _scrollSelectionForm))
            (progn
            (return-from jreturn (ScrollSelectionFormNoneFactory.jm_getInstance_0)))))))



