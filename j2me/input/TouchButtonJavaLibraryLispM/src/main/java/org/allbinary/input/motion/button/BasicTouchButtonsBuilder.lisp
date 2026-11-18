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

(defclass BasicTouchButtonsBuilder (BaseTouchInput)
  ((f_logUtil :initform nil)))

(defun BasicTouchButtonsBuilder.jnew_0 ()
  (let ((this (make-instance 'BasicTouchButtonsBuilder)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicTouchButtonsBuilder))
  (declare (ignorable this))
  (let (_list _commonButtons _touchButtonLocationHelper _basicTouchButtonCellPositionFactory _UP _DOWN _LEFT _RIGHT)
  (declare (ignorable _list _commonButtons _touchButtonLocationHelper _basicTouchButtonCellPositionFactory _UP _DOWN _LEFT _RIGHT))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
            (setf _list (BasicArrayListD.jnew_0))
            (setf _commonButtons (CommonButtons.jm_getInstance_0))
            (setf _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
            (setf _basicTouchButtonCellPositionFactory (BasicTouchButtonCellPositionFactory.jnew_0))
            (setf _UP (TouchButton.jm_createButton_6 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_UP) (TouchButtonUpResource.jm_getInstance_0) (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_SECOND_FROM_BOTTOM_LEFT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _DOWN (TouchButton.jm_createButton_6 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_DOWN) (TouchButtonDownResource.jm_getInstance_0) (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_LEFT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _LEFT (TouchButton.jm_createButton_6 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_SPECIAL_BUTTON_FOUR) (TouchButtonTurnLeftResource.jm_getInstance_0) (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_SECOND_FROM_RIGHT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _RIGHT (TouchButton.jm_createButton_6 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_SPECIAL_BUTTON_THREE) (TouchButtonTurnRightResource.jm_getInstance_0) (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_RIGHT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (jm_add_1 _list _UP)
            (jm_add_1 _list _LEFT)
            (jm_add_1 _list _RIGHT)
            (jm_add_1 _list _DOWN)
            (return-from jreturn _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_LIST) _e)
            (return-from jreturn (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0))))))))



