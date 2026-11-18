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

(defclass BasicTouchButtonCellPositionFactory (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_TOP_RIGHT :initform nil)
   (f_TOP_LEFT :initform nil)
   (f_SECOND_FROM_TOP_LEFT :initform nil)
   (f_SECOND_FROM_TOP_RIGHT :initform nil)
   (f_TOP_SECOND_FROM_LEFT :initform nil)
   (f_TOP_SECOND_FROM_RIGHT :initform nil)
   (f_BOTTOM_RIGHT :initform nil)
   (f_BOTTOM_SECOND_FROM_RIGHT :initform nil)
   (f_SECOND_FROM_BOTTOM_RIGHT :initform nil)
   (f_THIRD_FROM_BOTTOM_RIGHT :initform nil)
   (f_FOURTH_FROM_BOTTOM_RIGHT :initform nil)
   (f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT :initform nil)
   (f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT :initform nil)
   (f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT :initform nil)
   (f_BOTTOM_THIRD_FROM_RIGHT :initform nil)
   (f_BOTTOM_FOURTH_FROM_RIGHT :initform nil)
   (f_BOTTOM_SECOND_FROM_LEFT :initform nil)
   (f_SECOND_FROM_BOTTOM_LEFT :initform nil)
   (f_THIRD_FROM_BOTTOM_LEFT :initform nil)
   (f_BOTTOM_LEFT :initform nil)
   (f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT :initform nil)))

    
(defun BasicTouchButtonCellPositionFactory.jnew_0 ()
  (let ((this (make-instance 'BasicTouchButtonCellPositionFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  (let (_touchButtonLocationHelper _cellPositionFactory)
  (declare (ignorable _touchButtonLocationHelper _cellPositionFactory))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
        (setf _cellPositionFactory (CellPositionFactory.jm_getInstance_0))
        (jm_init_2 _cellPositionFactory (jm_getTotalColumns_0 _touchButtonLocationHelper) (jm_getTotalRows_0 _touchButtonLocationHelper))
        (setf (slot-value this 'f_TOP_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 0 0))
        (setf (slot-value this 'f_TOP_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) 0))
        (setf (slot-value this 'f_BOTTOM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 0 (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
        (setf (slot-value this 'f_BOTTOM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
        (setf (slot-value this 'f_BOTTOM_SECOND_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 2)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
        (setf (slot-value this 'f_SECOND_FROM_BOTTOM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
        (setf (slot-value this 'f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 2)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
        (setf (slot-value this 'f_BOTTOM_SECOND_FROM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 1 (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
        (setf (slot-value this 'f_SECOND_FROM_BOTTOM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 0 (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
        (setf (slot-value this 'f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 1 (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
        (if (> (jm_getTotalRows_0 _touchButtonLocationHelper) 2)
            (progn
            (setf (slot-value this 'f_SECOND_FROM_TOP_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 0 1))
            (setf (slot-value this 'f_SECOND_FROM_TOP_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) 1)))
            (progn
            (setf (slot-value this 'f_SECOND_FROM_TOP_LEFT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_SECOND_FROM_TOP_RIGHT) (slot-value _cellPositionFactory 'f_NONE))))
        (if (>= (jm_getTotalRows_0 _touchButtonLocationHelper) 4)
            (progn
            (setf (slot-value this 'f_THIRD_FROM_BOTTOM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 3))))
            (setf (slot-value this 'f_FOURTH_FROM_BOTTOM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 1)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 4))))
            (setf (slot-value this 'f_THIRD_FROM_BOTTOM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 0 (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 3)))))
            (progn
            (setf (slot-value this 'f_THIRD_FROM_BOTTOM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_FOURTH_FROM_BOTTOM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_THIRD_FROM_BOTTOM_LEFT) (slot-value _cellPositionFactory 'f_NONE))))
        (if (>= (jm_getTotalColumns_0 _touchButtonLocationHelper) 4)
            (progn
            (setf (slot-value this 'f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 3)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
            (setf (slot-value this 'f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 4)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 2))))
            (setf (slot-value this 'f_BOTTOM_THIRD_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 3)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
            (setf (slot-value this 'f_BOTTOM_FOURTH_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 4)) (JR.i32 (- (jm_getTotalRows_0 _touchButtonLocationHelper) 1))))
            (setf (slot-value this 'f_TOP_SECOND_FROM_LEFT) (jm_getInstanceColRow_2 _cellPositionFactory 1 0))
            (setf (slot-value this 'f_TOP_SECOND_FROM_RIGHT) (jm_getInstanceColRow_2 _cellPositionFactory (JR.i32 (- (jm_getTotalColumns_0 _touchButtonLocationHelper) 2)) 0)))
            (progn
            (setf (slot-value this 'f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_BOTTOM_THIRD_FROM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_BOTTOM_FOURTH_FROM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_TOP_SECOND_FROM_LEFT) (slot-value _cellPositionFactory 'f_NONE))
            (setf (slot-value this 'f_TOP_SECOND_FROM_RIGHT) (slot-value _cellPositionFactory 'f_NONE))))))
    this))



