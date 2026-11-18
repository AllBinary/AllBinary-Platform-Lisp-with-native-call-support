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

(defclass BasicNeededTouchButtonsBuilder (BaseTouchInput)
  ((f_logUtil :initform nil)))

(defun BasicNeededTouchButtonsBuilder.jnew_0 ()
  (let ((this (make-instance 'BasicNeededTouchButtonsBuilder)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicNeededTouchButtonsBuilder))
  (declare (ignorable this))
  (let (_list _touchButtonLocationHelper _basicTouchButtonCellPositionFactory _commonButtons _animationInterface _UP _DOWN _LEFT _RIGHT)
  (declare (ignorable _list _touchButtonLocationHelper _basicTouchButtonCellPositionFactory _commonButtons _animationInterface _UP _DOWN _LEFT _RIGHT))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
            (setf _list (BasicArrayListD.jnew_0))
            (setf _touchButtonLocationHelper (TouchButtonLocationHelper.jnew_0))
            (setf _basicTouchButtonCellPositionFactory (BasicTouchButtonCellPositionFactory.jnew_0))
            (setf _commonButtons (CommonButtons.jm_getInstance_0))
            (setf _animationInterface (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
            (setf _UP (TouchButton.jnew_7 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_UP) _animationInterface _animationInterface (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_SECOND_FROM_BOTTOM_LEFT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _DOWN (TouchButton.jnew_7 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_DOWN) _animationInterface _animationInterface (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_LEFT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _LEFT (TouchButton.jnew_7 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_LEFT) _animationInterface _animationInterface (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_SECOND_FROM_RIGHT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (setf _RIGHT (TouchButton.jnew_7 (slot-value (BasicTouchInputFactory.jm_getInstance_0) 'f_RIGHT) _animationInterface _animationInterface (slot-value _commonButtons 'f_NORMAL_BUTTON) (slot-value _basicTouchButtonCellPositionFactory 'f_BOTTOM_RIGHT) (jm_getColumnsRemainderHalf_0 _touchButtonLocationHelper) (jm_getRowsRemainderHalf_0 _touchButtonLocationHelper)))
            (jm_add_1 _list _UP)
            (jm_add_1 _list _DOWN)
            (jm_add_1 _list _LEFT)
            (jm_add_1 _list _RIGHT)
            (return-from jreturn _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_LIST) _e)
            (return-from jreturn (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0))))))))



