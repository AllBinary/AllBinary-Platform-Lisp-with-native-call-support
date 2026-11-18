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
;;;; package org.allbinary.direction

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DirectionFactory (JObject)
  ((f_NAME :initform nil)
   (f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_DOWN :initform nil)
   (f_UP :initform nil)
   (f_UP_LEFT :initform nil)
   (f_UP_RIGHT :initform nil)
   (f_DOWN_LEFT :initform nil)
   (f_DOWN_RIGHT :initform nil)
   (f_NOT_BORDERED_WITH :initform nil)
   (f_NO_DIRECTION :initform nil)
   (f_TOP :initform nil)
   (f_BOTTOM :initform nil)
   (f_ALL_DIRECTION :initform nil)))

(defvar DirectionFactory.jcell_instance :jnone)
(defun DirectionFactory.jstatic_instance ()
  (when (eq DirectionFactory.jcell_instance :jnone) (setf DirectionFactory.jcell_instance (DirectionFactory.jnew_0)))
  DirectionFactory.jcell_instance)
(defun (setf DirectionFactory.jstatic_instance) (value) (setf DirectionFactory.jcell_instance value))

    
(defun DirectionFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DirectionFactory.jstatic_instance)))))

    
(defun DirectionFactory.jnew_0 ()
  (let ((this (make-instance 'DirectionFactory)))
    (setf (slot-value this 'f_NAME) "DIRECTION")
    (setf (slot-value this 'f_LEFT) (Direction.jnew_4 (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_LEFT) "WEST" 0 1))
    (setf (slot-value this 'f_RIGHT) (Direction.jnew_4 (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_RIGHT) "EAST" 1 0))
    (setf (slot-value this 'f_DOWN) (Direction.jnew_4 (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_DOWN) "SOUTH" 2 0))
    (setf (slot-value this 'f_UP) (Direction.jnew_4 (slot-value (CommonPhoneStrings.jm_getInstance_0) 'f_UP) "NORTH" 3 0))
    
    
    
    
    (setf (slot-value this 'f_NOT_BORDERED_WITH) (Direction.jnew_4 "NOT_BORDERED_WITH" "NOT_BORDERED_WITH" 8 0))
    (setf (slot-value this 'f_NO_DIRECTION) (Direction.jnew_4 "NO_DIRECTION" "NO_DIRECTION" 9 0))
    (setf (slot-value this 'f_TOP) (Direction.jnew_4 "TOP" "TOP" 10 0))
    (setf (slot-value this 'f_BOTTOM) (Direction.jnew_4 "BOTTOM" "BOTTOM" 11 0))
    (setf (slot-value this 'f_ALL_DIRECTION) (Direction.jnew_4 "ALL_DIRECTION" "ALL_DIRECTION" 12 0))
  (let (_stringBuffer _commonSeps)
  (declare (ignorable _stringBuffer _commonSeps))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf (slot-value this 'f_UP_LEFT) (Direction.jnew_4 "UP LEFT" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuffer (jm_getOtherName_0 (slot-value this 'f_UP))) (slot-value _commonSeps 'f_SPACE)) (jm_getOtherName_0 (slot-value this 'f_LEFT)))) 4 0))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf (slot-value this 'f_UP_RIGHT) (Direction.jnew_4 "UP RIGHT" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuffer (jm_getOtherName_0 (slot-value this 'f_UP))) (slot-value _commonSeps 'f_SPACE)) (jm_getOtherName_0 (slot-value this 'f_RIGHT)))) 5 0))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf (slot-value this 'f_DOWN_LEFT) (Direction.jnew_4 "DOWN LEFT" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuffer (jm_getOtherName_0 (slot-value this 'f_DOWN))) (slot-value _commonSeps 'f_SPACE)) (jm_getOtherName_0 (slot-value this 'f_LEFT)))) 6 0))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (setf (slot-value this 'f_DOWN_RIGHT) (Direction.jnew_4 "DOWN RIGHT" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuffer (jm_getOtherName_0 (slot-value this 'f_DOWN))) (slot-value _commonSeps 'f_SPACE)) (jm_getOtherName_0 (slot-value this 'f_RIGHT)))) 7 0))))
    this))



