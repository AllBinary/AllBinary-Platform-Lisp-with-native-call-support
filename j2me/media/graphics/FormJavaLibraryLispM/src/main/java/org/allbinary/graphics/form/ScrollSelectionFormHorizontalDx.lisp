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

(defclass ScrollSelectionFormHorizontalDx (ItemIndexDx)
  ((f_scrollSelectionForm :initform nil)))

    
(defun ScrollSelectionFormHorizontalDx.jnew_1 (_scrollSelectionForm)
  (declare (ignorable _scrollSelectionForm))
  (let ((this (make-instance 'ScrollSelectionFormHorizontalDx)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scrollSelectionForm) _scrollSelectionForm)))
    this))

    
(unless (fboundp 'jm_getDx_4) (defgeneric jm_getDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getDx_4 ((this ScrollSelectionFormHorizontalDx) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSelectedIndexForPointHorizontalDx_4 (slot-value this 'f_scrollSelectionForm) _index _item _dx _dy)))))



