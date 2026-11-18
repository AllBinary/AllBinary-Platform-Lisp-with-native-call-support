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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonsMappingPaintable (Paintable)
  ((f_logUtil :initform nil)
   (f_foregroundColor :initform 0)
   (f_paintableTable :initform nil)
   (f_touchButtonLocationHelper :initform nil)))

    
(defun TouchButtonsMappingPaintable.jnew_1 (_basicColor)
  (declare (ignorable _basicColor))
  (let ((this (make-instance 'TouchButtonsMappingPaintable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_paintableTable) (JR.newArray nil 0 0))
    (setf (slot-value this 'f_touchButtonLocationHelper) (TouchButtonLocationHelper.jnew_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_foregroundColor) (jm_intValue_0 _basicColor))
        (jm_init_0 this)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this TouchButtonsMappingPaintable))
  (declare (ignorable this))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf (slot-value this 'f_paintableTable) (jm_createPaintableTable_0 this)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this "updateRectangle" _e))))))

    
(unless (fboundp 'jm_createPaintableTable_0) (defgeneric jm_createPaintableTable_0 (this)))
(defmethod jm_createPaintableTable_0 ((this TouchButtonsMappingPaintable))
  (declare (ignorable this))
  (let (_totalColumns _totalRows _paintableTable _cellPositionFactory _commonButtons _rowIndex _index)
  (declare (ignorable _totalColumns _totalRows _paintableTable _cellPositionFactory _commonButtons _rowIndex _index))
    (block jreturn
        (setf _totalColumns (jm_getTotalColumns_0 (slot-value this 'f_touchButtonLocationHelper)))
        (setf _totalRows (jm_getTotalRows_0 (slot-value this 'f_touchButtonLocationHelper)))
        (setf _paintableTable (JR.newArray nil _totalColumns _totalRows))
        (setf _cellPositionFactory (CellPositionFactory.jm_getInstance_0))
        (setf _commonButtons (CommonButtons.jm_getInstance_0))
        (progn
            (setf _index (JR.i32 (- _totalColumns 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (progn
                (setf _rowIndex (JR.i32 (- _totalRows 1)))
                (block jbreak (loop while (>= _rowIndex 0) do
                    (block jcontinue
                (setf (aref (aref (slot-value this 'f_paintableTable) _index) _rowIndex) (TouchButton.jm_createButton_6 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_NONE) (TouchButtonBlankResource.jm_getInstance_0) (slot-value _commonButtons 'f_NORMAL_BUTTON) (jm_getInstanceColRow_2 _cellPositionFactory _index _rowIndex) (jm_getColumnsRemainderHalf_0 (slot-value this 'f_touchButtonLocationHelper)) (jm_getRowsRemainderHalf_0 (slot-value this 'f_touchButtonLocationHelper)))))
                    (setf _rowIndex (JR.i32 (- _rowIndex 1)))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn _paintableTable))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TouchButtonsMappingPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_totalColumns _totalRows _rowIndex _index)
  (declare (ignorable _totalColumns _totalRows _rowIndex _index))
    (block jreturn
        (setf _totalColumns (jm_getTotalColumns_0 (slot-value this 'f_touchButtonLocationHelper)))
        (setf _totalRows (jm_getTotalRows_0 (slot-value this 'f_touchButtonLocationHelper)))
        (progn
            (setf _index (JR.i32 (- _totalColumns 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (progn
                (setf _rowIndex (JR.i32 (- _totalRows 1)))
                (block jbreak (loop while (>= _rowIndex 0) do
                    (block jcontinue
                (jm_paint_1 (aref (aref (slot-value this 'f_paintableTable) _index) _rowIndex) _graphics))
                    (setf _rowIndex (JR.i32 (- _rowIndex 1)))))))
                (setf _index (JR.i32 (- _index 1)))))))))



