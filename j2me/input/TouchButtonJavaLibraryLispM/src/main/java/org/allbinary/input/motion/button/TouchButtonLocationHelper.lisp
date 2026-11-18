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

(defclass TouchButtonLocationHelper (JObject)
  ((f_totalColumns :initform 0)
   (f_totalRows :initform 0)
   (f_columnsRemainder :initform 0)
   (f_rowsRemainder :initform 0)
   (f_columnsRemainderHalf :initform 0)
   (f_rowsRemainderHalf :initform 0)))

    
(defun TouchButtonLocationHelper.jnew_0 ()
  (let ((this (make-instance 'TouchButtonLocationHelper)))
    
    
    
    
    
    
  (let (_buttonSize _displayInfo)
  (declare (ignorable _buttonSize _displayInfo))
    (block jreturn
        (setf _buttonSize (slot-value (CommonButtons.jm_getInstance_0) 'f_STANDARD_BUTTON_SIZE))
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf (slot-value this 'f_totalColumns) (round (/ (coerce (jm_getLastWidth_0 _displayInfo) 'single-float) (coerce _buttonSize 'single-float))))
        (setf (slot-value this 'f_totalRows) (round (/ (coerce (jm_getLastHeight_0 _displayInfo) 'single-float) (coerce _buttonSize 'single-float))))
        (setf (slot-value this 'f_columnsRemainder) (rem (jm_getLastWidth_0 _displayInfo) _buttonSize))
        (setf (slot-value this 'f_columnsRemainderHalf) (ash (slot-value this 'f_columnsRemainder) (- (logand 1 31))))
        (setf (slot-value this 'f_rowsRemainder) (rem (jm_getLastHeight_0 _displayInfo) _buttonSize))
        (setf (slot-value this 'f_rowsRemainderHalf) (ash (slot-value this 'f_rowsRemainder) (- (logand 1 31))))))
    this))

    
(unless (fboundp 'jm_getTotalColumns_0) (defgeneric jm_getTotalColumns_0 (this)))
(defmethod jm_getTotalColumns_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalColumns)))))

    
(unless (fboundp 'jm_getTotalRows_0) (defgeneric jm_getTotalRows_0 (this)))
(defmethod jm_getTotalRows_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalRows)))))

    
(unless (fboundp 'jm_getColumnsRemainder_0) (defgeneric jm_getColumnsRemainder_0 (this)))
(defmethod jm_getColumnsRemainder_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_columnsRemainder)))))

    
(unless (fboundp 'jm_getRowsRemainder_0) (defgeneric jm_getRowsRemainder_0 (this)))
(defmethod jm_getRowsRemainder_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rowsRemainder)))))

    
(unless (fboundp 'jm_getColumnsRemainderHalf_0) (defgeneric jm_getColumnsRemainderHalf_0 (this)))
(defmethod jm_getColumnsRemainderHalf_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_columnsRemainderHalf)))))

    
(unless (fboundp 'jm_getRowsRemainderHalf_0) (defgeneric jm_getRowsRemainderHalf_0 (this)))
(defmethod jm_getRowsRemainderHalf_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rowsRemainderHalf)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TouchButtonLocationHelper))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "totalColumns: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_totalColumns))
        (jm_append_1 _stringBuffer " totalRows: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_totalRows))
        (jm_append_1 _stringBuffer " columnsRemainder: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_columnsRemainder))
        (jm_append_1 _stringBuffer " rowsRemainder: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_rowsRemainder))
        (jm_append_1 _stringBuffer " columnsRemainderHalf: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_columnsRemainderHalf))
        (jm_append_1 _stringBuffer " rowsRemainderHalf: ")
        (jm_appendint_1 _stringBuffer (slot-value this 'f_rowsRemainderHalf))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



