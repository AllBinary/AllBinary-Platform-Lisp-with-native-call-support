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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CellPosition (V)
  ((f_id :initform 0)
   (f_column :initform 0)
   (f_row :initform 0)))

    
(defun CellPosition.jnew_4 (_column _row _columns _rows)
  (declare (ignorable _column _row _columns _rows))
  (let ((this (make-instance 'CellPosition)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_column) _column)
        (setf (slot-value this 'f_row) _row)
        (setf (slot-value this 'f_id) (JR.i32 (+ (JR.i32 (* _row _columns)) _column)))))
    this))

    
(unless (fboundp 'jm_getColumn_0) (defgeneric jm_getColumn_0 (this)))
(defmethod jm_getColumn_0 ((this CellPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_column)))))

    
(unless (fboundp 'jm_getRow_0) (defgeneric jm_getRow_0 (this)))
(defmethod jm_getRow_0 ((this CellPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_row)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CellPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (CellPosition.jm_toStringColRow_2 (jm_getColumn_0 this) (jm_getRow_0 this))))))

    
(defun CellPosition.jm_toStringCellPosition_1 (_basicGeographicMapCellPosition)
  (declare (ignorable _basicGeographicMapCellPosition))
  (let ()
    (block jreturn
        (return-from jreturn (CellPosition.jm_toStringColRow_2 (jm_getColumn_0 _basicGeographicMapCellPosition) (jm_getRow_0 _basicGeographicMapCellPosition))))))

    
(defun CellPosition.jm_toStringColRow_2 (_i_column _i_row)
  (declare (ignorable _i_column _i_row))
  (let (_stringBuffer _commonSeps)
  (declare (ignorable _stringBuffer _commonSeps))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_PARENTHESIS_OPEN))
        (jm_appendint_1 _stringBuffer _i_column)
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA))
        (jm_appendint_1 _stringBuffer _i_row)
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_PARENTHESIS_CLOSE))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this CellPosition))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_id)))))



