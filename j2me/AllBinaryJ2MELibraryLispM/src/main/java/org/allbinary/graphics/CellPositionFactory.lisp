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

(defclass CellPositionFactory (JObject)
  ((f_logUtil :initform nil)
   (f_NONE :initform nil)
   (f_cellPositionArray :initform nil)
   (f_columns :initform 0)
   (f_rows :initform 0)))

(defvar CellPositionFactory.jcell_SINGLETON :jnone)
(defun CellPositionFactory.jstatic_SINGLETON ()
  (when (eq CellPositionFactory.jcell_SINGLETON :jnone) (setf CellPositionFactory.jcell_SINGLETON (CellPositionFactory.jnew_0)))
  CellPositionFactory.jcell_SINGLETON)
(defun (setf CellPositionFactory.jstatic_SINGLETON) (value) (setf CellPositionFactory.jcell_SINGLETON value))

    
(defun CellPositionFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CellPositionFactory.jstatic_SINGLETON)))))

    
(defun CellPositionFactory.jnew_0 ()
  (let ((this (make-instance 'CellPositionFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_NONE) (CellPosition.jnew_4 (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1)) (JR.i32 (- 1))))
    (setf (slot-value this 'f_cellPositionArray) (JR.newArray nil 0 0))
    
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this CellPositionFactory) _columns _rows)
  (declare (ignorable this _columns _rows))
  (let (_commonStrings _stringBuffer _row _column)
  (declare (ignorable _commonStrings _stringBuffer _row _column))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Init: columns: ")
        (jm_appendint_1 _stringBuffer _columns)
        (jm_append_1 _stringBuffer " rows: ")
        (jm_appendint_1 _stringBuffer _rows)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_INIT))
        (setf (slot-value this 'f_cellPositionArray) (JR.newArray nil _columns _rows))
        (setf (slot-value this 'f_columns) _columns)
        (setf (slot-value this 'f_rows) _rows)
        (progn
            (setf _column 0)
            (block jbreak (loop while (< _column _columns) do
                (block jcontinue
            (progn
                (setf _row 0)
                (block jbreak (loop while (< _row _rows) do
                    (block jcontinue
                (jm_createInstance_2 this _column _row))
                    (setf _row (JR.i32 (+ _row 1)))))))
                (setf _column (JR.i32 (+ _column 1)))))))))

    
(unless (fboundp 'jm_getInstanceColRow_2) (defgeneric jm_getInstanceColRow_2 (this p1 p2)))
(defmethod jm_getInstanceColRow_2 ((this CellPositionFactory) _i_column _i_row)
  (declare (ignorable this _i_column _i_row))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (return-from jreturn (aref (aref (slot-value this 'f_cellPositionArray) _i_column) _i_row)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "columns: ") (jm_getColumns_0 this)) " rows: ") (jm_getRows_0 this)) " col: ") _i_column) " row: ") _i_row)) this (slot-value _commonStrings 'f_GET_INSTANCE) _e)
            (return-from jreturn (slot-value this 'f_NONE)))))))

    
(unless (fboundp 'jm_createInstance_2) (defgeneric jm_createInstance_2 (this p1 p2)))
(defmethod jm_createInstance_2 ((this CellPositionFactory) _i_column _i_row)
  (declare (ignorable this _i_column _i_row))
  (let (_cellPositionCanBeNull)
  (declare (ignorable _cellPositionCanBeNull))
    (block jreturn
        (setf _cellPositionCanBeNull (aref (aref (slot-value this 'f_cellPositionArray) _i_column) _i_row))
        (if (null _cellPositionCanBeNull)
            (progn
            (setf _cellPositionCanBeNull (CellPosition.jnew_4 _i_column _i_row (slot-value this 'f_columns) (slot-value this 'f_rows)))
            (setf (aref (aref (slot-value this 'f_cellPositionArray) _i_column) _i_row) _cellPositionCanBeNull)))
        (return-from jreturn _cellPositionCanBeNull))))

    
(unless (fboundp 'jm_getColumns_0) (defgeneric jm_getColumns_0 (this)))
(defmethod jm_getColumns_0 ((this CellPositionFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_columns)))))

    
(unless (fboundp 'jm_getRows_0) (defgeneric jm_getRows_0 (this)))
(defmethod jm_getRows_0 ((this CellPositionFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rows)))))



