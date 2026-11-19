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
;;;; package org.allbinary.input.motion.gesture

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MotionGestureRecognizer (JObject)
  ((f_logUtil :initform nil)
   (f_j2seMath :initform nil)
   (f_origin :initform nil)
   (f_previous :initform nil)
   (f_intermediate :initform nil)
   (f_line :initform nil)
   (f_motionGesturesHandler :initform nil)
   (f_movedMotionGesturesHandler :initform nil)
   (f_scrolledMotionGesturesHandler :initform nil)
   (f_motionEventCircularPool :initform nil)))

    
(defun MotionGestureRecognizer.jnew_1 (_id)
  (declare (ignorable _id))
  (let ((this (make-instance 'MotionGestureRecognizer)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_j2seMath) (J2SEMath.jm_getInstance_0))
    (setf (slot-value this 'f_origin) (slot-value (PointFactory.jm_getInstance_0) 'f_ZERO_ZERO))
    (setf (slot-value this 'f_previous) (slot-value this 'f_origin))
    (setf (slot-value this 'f_intermediate) (slot-value this 'f_origin))
    (setf (slot-value this 'f_line) (Line.jnew_2 (slot-value this 'f_origin) (slot-value this 'f_origin)))
    
    
    
    
  (let (_motionGesturesHandler _movedMotionGesturesHandler _scrolledMotionGesturesHandler _commonStrings)
  (declare (ignorable _motionGesturesHandler _movedMotionGesturesHandler _scrolledMotionGesturesHandler _commonStrings))
    (block jreturn
        (setf (slot-value this 'f_motionEventCircularPool) (MotionEventCircularPool.jm_createPool_1 _id))
        (setf _motionGesturesHandler (BasicEventHandler.jnew_0))
        (setf _movedMotionGesturesHandler _motionGesturesHandler)
        (setf _scrolledMotionGesturesHandler _motionGesturesHandler)
        (handler-case (progn
            (setf _motionGesturesHandler (BasicMotionGesturesHandler.jm_getInstance_0))
            (setf _movedMotionGesturesHandler (MovedMotionGesturesHandler.jm_getInstance_0))
            (setf _scrolledMotionGesturesHandler (ScrolledMotionGesturesHandler.jm_getInstance_0)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))
        (setf (slot-value this 'f_motionGesturesHandler) _motionGesturesHandler)
        (setf (slot-value this 'f_movedMotionGesturesHandler) _movedMotionGesturesHandler)
        (setf (slot-value this 'f_scrolledMotionGesturesHandler) _scrolledMotionGesturesHandler)))
    this))

    
(unless (fboundp 'jm_processPressedMotionEvent_3) (defgeneric jm_processPressedMotionEvent_3 (this p1 p2 p3)))
(defmethod jm_processPressedMotionEvent_3 ((this MotionGestureRecognizer) _current _deviceId _button)
  (declare (ignorable this _current _deviceId _button))
  (let (_event)
  (declare (ignorable _event))
    (block jreturn
        (setf (slot-value this 'f_intermediate) (slot-value this 'f_origin))
        (setf (slot-value this 'f_previous) (slot-value this 'f_origin))
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_PRESSED)))
        (jm_setPreviousPoint_1 _event (slot-value this 'f_previous))
        (jm_setCurrentPoint_1 _event _current)
        (jm_fireEvent_1 (slot-value this 'f_motionGesturesHandler) _event)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_processReleasedMotionEvent_3) (defgeneric jm_processReleasedMotionEvent_3 (this p1 p2 p3)))
(defmethod jm_processReleasedMotionEvent_3 ((this MotionGestureRecognizer) _current _deviceId _button)
  (declare (ignorable this _current _deviceId _button))
  (let (_event)
  (declare (ignorable _event))
    (block jreturn
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_RELEASED)))
        (jm_setPreviousPoint_1 _event (slot-value this 'f_previous))
        (jm_setCurrentPoint_1 _event _current)
        (jm_fireEvent_1 (slot-value this 'f_motionGesturesHandler) _event)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_processDraggedMotionEvent_3) (defgeneric jm_processDraggedMotionEvent_3 (this p1 p2 p3)))
(defmethod jm_processDraggedMotionEvent_3 ((this MotionGestureRecognizer) _current _deviceId _buttonMask)
  (declare (ignorable this _current _deviceId _buttonMask))
  (let (_minimumMotionGesture _gradient _absGradient _conf _touchMotionGestureFactory _newMotionGesture _diagonalToleranceHigher _diagonalToleranceLower _event)
  (declare (ignorable _minimumMotionGesture _gradient _absGradient _conf _touchMotionGestureFactory _newMotionGesture _diagonalToleranceHigher _diagonalToleranceLower _event))
    (block jreturn
        (if (or (eq (slot-value this 'f_previous) (slot-value this 'f_origin)) (eq (slot-value this 'f_intermediate) (slot-value this 'f_origin)))
            (progn
            (setf (slot-value this 'f_previous) _current)
            (setf (slot-value this 'f_intermediate) _current)
            (return-from jreturn)))
        (jm_setP1_1 (slot-value this 'f_line) (slot-value this 'f_previous))
        (jm_setP2_1 (slot-value this 'f_line) _current)
        (setf _minimumMotionGesture (jm_getMinimumMotionGesture_0 (MotionGestureConfigurationFactory.jm_getInstance_0)))
        (if (and (< (jm_abs_1 (slot-value this 'f_j2seMath) (coerce (jm_getDeltaX_0 (slot-value this 'f_line)) 'single-float)) _minimumMotionGesture) (< (jm_abs_1 (slot-value this 'f_j2seMath) (coerce (jm_getDeltaY_0 (slot-value this 'f_line)) 'single-float)) _minimumMotionGesture))
            (progn
            (setf (slot-value this 'f_intermediate) _current)
            (return-from jreturn)))
        (setf _gradient (jm_getGradient_0 (slot-value this 'f_line)))
        (setf _absGradient (coerce (jm_abs_1 (slot-value this 'f_j2seMath) (coerce _gradient 'single-float)) 'double-float))
        (setf _conf (MotionGestureConfigurationFactory.jm_getInstance_0))
        (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_NO_MOTION))
        (setf _diagonalToleranceHigher 12.0d0)
        (setf _diagonalToleranceLower 12.0d0)
        (if (jm_isDiagonalMotionGestureAllowed_0 _conf)
            (progn
            (setf _diagonalToleranceHigher (coerce (JR.i32 (- 90 (jm_getDiagonalTolerance_0 _conf))) 'double-float))
            (setf _diagonalToleranceLower (coerce (jm_getDiagonalTolerance_0 _conf) 'double-float))))
        (if (> _absGradient (tan (JR.toRadians _diagonalToleranceHigher)))
            (progn
            (if (> (jm_getDeltaY_0 (slot-value this 'f_line)) 0)
                (progn
                (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_UP)))
                (progn
                (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_DOWN)))))
            (progn
            (if (< _absGradient (tan (JR.toRadians _diagonalToleranceLower)))
                (progn
                (if (> (jm_getDeltaX_0 (slot-value this 'f_line)) 0)
                    (progn
                    (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_LEFT)))
                    (progn
                    (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_RIGHT)))))
                (progn
                (if (> _gradient 0.0d0)
                    (progn
                    (if (> (jm_getDeltaX_0 (slot-value this 'f_line)) 0)
                        (progn
                        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_DIAGONAL_UP_LEFT)))
                        (progn
                        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_DIAGONAL_DOWN_RIGHT)))))
                    (progn
                    (if (> (jm_getDeltaX_0 (slot-value this 'f_line)) 0)
                        (progn
                        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_DIAGONAL_DOWN_LEFT)))
                        (progn
                        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_DIAGONAL_UP_RIGHT))))))))))
        (setf (slot-value this 'f_previous) _current)
        (setf (slot-value this 'f_intermediate) _current)
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) _newMotionGesture))
        (jm_setPreviousPoint_1 _event (slot-value this 'f_previous))
        (jm_setCurrentPoint_1 _event _current)
        (jm_fireEvent_1 (slot-value this 'f_motionGesturesHandler) _event)
        (return-from jreturn))))

    
(unless (fboundp 'jm_processMovedMotionEvent_3) (defgeneric jm_processMovedMotionEvent_3 (this p1 p2 p3)))
(defmethod jm_processMovedMotionEvent_3 ((this MotionGestureRecognizer) _current _deviceId _button)
  (declare (ignorable this _current _deviceId _button))
  (let (_event)
  (declare (ignorable _event))
    (block jreturn
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) (slot-value (TouchMotionGestureFactory.jm_getInstance_0) 'f_NO_MOTION)))
        (jm_setPreviousPoint_1 _event (slot-value this 'f_previous))
        (jm_setCurrentPoint_1 _event _current)
        (jm_fireEvent_1 (slot-value this 'f_movedMotionGesturesHandler) _event)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_processScrolledMotionEvent_3) (defgeneric jm_processScrolledMotionEvent_3 (this p1 p2 p3)))
(defmethod jm_processScrolledMotionEvent_3 ((this MotionGestureRecognizer) _current _deviceId _button)
  (declare (ignorable this _current _deviceId _button))
  (let (_touchMotionGestureFactory _newMotionGesture _event)
  (declare (ignorable _touchMotionGestureFactory _newMotionGesture _event))
    (block jreturn
        (setf _touchMotionGestureFactory (TouchMotionGestureFactory.jm_getInstance_0))
        (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_NO_MOTION))
        (if (> _button 0)
            (progn
            (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_SCROLL_UP)))
            (if (< _button 0)
            (progn
            (setf _newMotionGesture (slot-value _touchMotionGestureFactory 'f_SCROLL_DOWN)))))
        (setf _event (jm_getInstance_1 (slot-value this 'f_motionEventCircularPool) _newMotionGesture))
        (jm_setPreviousPoint_1 _event (slot-value this 'f_previous))
        (jm_setCurrentPoint_1 _event _current)
        (jm_fireEvent_1 (slot-value this 'f_scrolledMotionGesturesHandler) _event)
        (return-from jreturn t))))

    
(unless (fboundp 'jm_getMotionGesturesHandler_0) (defgeneric jm_getMotionGesturesHandler_0 (this)))
(defmethod jm_getMotionGesturesHandler_0 ((this MotionGestureRecognizer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_motionGesturesHandler)))))



