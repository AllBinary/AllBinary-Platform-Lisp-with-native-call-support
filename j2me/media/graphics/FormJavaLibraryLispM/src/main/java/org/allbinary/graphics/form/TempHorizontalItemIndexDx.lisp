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

(defclass TempHorizontalItemIndexDx (ItemIndexDx)
  ((f_scrollCurrentSelectionForm :initform nil)))

    
(defun TempHorizontalItemIndexDx.jnew_1 (_scrollCurrentSelectionForm)
  (declare (ignorable _scrollCurrentSelectionForm))
  (let ((this (make-instance 'TempHorizontalItemIndexDx)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scrollCurrentSelectionForm) _scrollCurrentSelectionForm)))
    this))

    
(unless (fboundp 'jm_getDx_4) (defgeneric jm_getDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getDx_4 ((this TempHorizontalItemIndexDx) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getXTempHorizontalForm_4 (slot-value this 'f_scrollCurrentSelectionForm) _index _item _dx _dy)))))



