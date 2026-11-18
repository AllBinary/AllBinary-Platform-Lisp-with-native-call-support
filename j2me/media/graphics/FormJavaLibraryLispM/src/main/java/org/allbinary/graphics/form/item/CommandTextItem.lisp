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
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommandTextItem (ABTextItem)
  ((f_command :initform nil)))

    
(defun CommandTextItem.jnew_5 (_command _layout _altText _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _command _layout _altText _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CommandTextItem)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_command) _command)))
    this))

    
(unless (fboundp 'jm_isFocusable_0) (defgeneric jm_isFocusable_0 (this)))
(defmethod jm_isFocusable_0 ((this CommandTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_getCommand_0) (defgeneric jm_getCommand_0 (this)))
(defmethod jm_getCommand_0 ((this CommandTextItem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_command)))))



