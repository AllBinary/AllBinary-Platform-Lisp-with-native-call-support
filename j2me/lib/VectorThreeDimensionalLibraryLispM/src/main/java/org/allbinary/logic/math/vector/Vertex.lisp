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
;;;; package org.allbinary.logic.math.vector

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Vertex (JObject)
  ((f_x :initform nil)
   (f_y :initform nil)
   (f_z :initform nil)))

    
(defun Vertex.jnew_0 ()
  (let ((this (make-instance 'Vertex)))
    (setf (slot-value this 'f_x) (BasicDecimal.jnew_1 0))
    (setf (slot-value this 'f_y) (BasicDecimal.jnew_1 0))
    (setf (slot-value this 'f_z) (BasicDecimal.jnew_1 0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Vertex))
  (declare (ignorable this))
  (let (_stringBuffer _positionStrings)
  (declare (ignorable _stringBuffer _positionStrings))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _positionStrings (PositionStrings.jm_getInstance_0))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_X_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_x)))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Y_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_y)))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Z_LABEL))
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_z)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



