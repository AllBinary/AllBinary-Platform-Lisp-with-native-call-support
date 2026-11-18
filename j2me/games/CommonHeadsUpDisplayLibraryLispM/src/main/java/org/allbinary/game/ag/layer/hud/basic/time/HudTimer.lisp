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
;;;; package org.allbinary.game.ag.layer.hud.basic.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HudTimer (JObject)
  ((f_startTime :initform 0)
   (f_hundredthTime :initform 0)
   (f_maxTime :initform 0)
   (f_modifier :initform 0)
   (f_hundrethsString :initform nil)
   (f_totalDigits :initform 0)
   (f_primitiveLongUtil :initform nil)
   (f_MAX :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)))

    
(defun HudTimer.jnew_1 (_maxTime)
  (declare (ignorable _maxTime))
  (let ((this (make-instance 'HudTimer)))
    (setf (slot-value this 'f_startTime) (JR.i32 (- 1)))
    
    
    
    (setf (slot-value this 'f_hundrethsString) (slot-value (PrimitiveLongSingleton.jm_getInstance_0) 'f_ZERO))
    (setf (slot-value this 'f_totalDigits) 1)
    
    (setf (slot-value this 'f_MAX) (vector (char-code #\L) (char-code #\O) (char-code #\L)))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_primitiveLongUtil) (PrimitiveLongUtil.jm_createPowerOfTen_1 _maxTime))
        (setf (slot-value this 'f_maxTime) _maxTime)))
    this))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this HudTimer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_hundredthTime) 0)
        (setf (slot-value this 'f_startTime) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this HudTimer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hundredthTime)))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this HudTimer))
  (declare (ignorable this))
  (let (_lastLowerTime _currentTime)
  (declare (ignorable _lastLowerTime _currentTime))
    (block jreturn
        (setf _lastLowerTime (slot-value this 'f_hundredthTime))
        (setf _currentTime (JR.i64 (- (JR.i64 (+ (slot-value this 'f_modifier) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))) (slot-value this 'f_startTime))))
        (if (< _currentTime 0)
            (progn
            (setf _currentTime 0)))
        (setf (slot-value this 'f_hundredthTime) (JR.ldiv _currentTime 100))
        (if (>= (slot-value this 'f_hundredthTime) (slot-value this 'f_maxTime))
            (progn
            (if (> (slot-value this 'f_startTime) 0)
                (progn
                (setf (slot-value this 'f_hundrethsString) (slot-value this 'f_MAX)))))
            (if (/= _lastLowerTime (slot-value this 'f_hundredthTime))
            (progn
            (setf (slot-value this 'f_hundrethsString) (jm_getCharArray_1 (slot-value this 'f_primitiveLongUtil) (JR.i32 (slot-value this 'f_hundredthTime))))
            (setf (slot-value this 'f_totalDigits) (jm_getCurrentTotalDigits_0 (slot-value this 'f_primitiveLongUtil)))))))))

    
(unless (fboundp 'jm_reduce_1) (defgeneric jm_reduce_1 (this p1)))
(defmethod jm_reduce_1 ((this HudTimer) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_modifier) (JR.i64 (- (slot-value this 'f_modifier) _value))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this HudTimer) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_modifier) (JR.i64 (+ (slot-value this 'f_modifier) _value))))))

    
(unless (fboundp 'jm_getTimeChars_0) (defgeneric jm_getTimeChars_0 (this)))
(defmethod jm_getTimeChars_0 ((this HudTimer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hundrethsString)))))

    
(unless (fboundp 'jm_getCurrentTotalDigits_0) (defgeneric jm_getCurrentTotalDigits_0 (this)))
(defmethod jm_getCurrentTotalDigits_0 ((this HudTimer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalDigits)))))



