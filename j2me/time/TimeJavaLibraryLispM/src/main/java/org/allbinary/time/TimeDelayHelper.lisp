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
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TimeDelayHelper (JObject)
  ((f_startTime :initform 0)
   (f_elapsedTimeAtPause :initform 0)
   (f_delay :initform 0)))

    
(defun TimeDelayHelper.jnew_1 (_delay)
  (declare (ignorable _delay))
  (let ((this (make-instance 'TimeDelayHelper)))
    (setf (slot-value this 'f_startTime) (JR.i32 (- 1)))
    (setf (slot-value this 'f_elapsedTimeAtPause) (Long.jstatic_MIN_VALUE))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_delay) _delay)
        (jm_setStartTimeTNT_0 this)))
    this))

    
(unless (fboundp 'jm_isTimeTNT_0) (defgeneric jm_isTimeTNT_0 (this)))
(defmethod jm_isTimeTNT_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let (_currentTime)
  (declare (ignorable _currentTime))
    (block jreturn
        (setf _currentTime (JR.currentTimeMillis))
        (if (> (JR.i64 (- _currentTime (slot-value this 'f_startTime))) (slot-value this 'f_delay))
            (progn
            (setf (slot-value this 'f_startTime) _currentTime)
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isTimeSinceTNT_1) (defgeneric jm_isTimeSinceTNT_1 (this p1)))
(defmethod jm_isTimeSinceTNT_1 ((this TimeDelayHelper) _delay)
  (declare (ignorable this _delay))
  (let (_currentTime)
  (declare (ignorable _currentTime))
    (block jreturn
        (setf _currentTime (JR.currentTimeMillis))
        (if (> (JR.i64 (- _currentTime (slot-value this 'f_startTime))) _delay)
            (progn
            (setf (slot-value this 'f_startTime) _currentTime)
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isTime_1) (defgeneric jm_isTime_1 (this p1)))
(defmethod jm_isTime_1 ((this TimeDelayHelper) _currentTime)
  (declare (ignorable this _currentTime))
  (let ()
    (block jreturn
        (if (> (JR.i64 (- _currentTime (slot-value this 'f_startTime))) (slot-value this 'f_delay))
            (progn
            (setf (slot-value this 'f_startTime) _currentTime)
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isTimeWithoutReset_1) (defgeneric jm_isTimeWithoutReset_1 (this p1)))
(defmethod jm_isTimeWithoutReset_1 ((this TimeDelayHelper) _currentTime)
  (declare (ignorable this _currentTime))
  (let ()
    (block jreturn
        (if (> (JR.i64 (- _currentTime (slot-value this 'f_startTime))) (slot-value this 'f_delay))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isTimeSince_2) (defgeneric jm_isTimeSince_2 (this p1 p2)))
(defmethod jm_isTimeSince_2 ((this TimeDelayHelper) _delay _currentTime)
  (declare (ignorable this _delay _currentTime))
  (let ()
    (block jreturn
        (if (> (JR.i64 (- _currentTime (slot-value this 'f_startTime))) (slot-value this 'f_delay))
            (progn
            (setf (slot-value this 'f_startTime) _currentTime)
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getElapsedTNT_0) (defgeneric jm_getElapsedTNT_0 (this)))
(defmethod jm_getElapsedTNT_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i64 (- (JR.currentTimeMillis) (slot-value this 'f_startTime)))))))

    
(unless (fboundp 'jm_getElapsed_1) (defgeneric jm_getElapsed_1 (this p1)))
(defmethod jm_getElapsed_1 ((this TimeDelayHelper) _currentTime)
  (declare (ignorable this _currentTime))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i64 (- _currentTime (slot-value this 'f_startTime)))))))

    
(unless (fboundp 'jm_isElapsed_2) (defgeneric jm_isElapsed_2 (this p1 p2)))
(defmethod jm_isElapsed_2 ((this TimeDelayHelper) _currentTime _time)
  (declare (ignorable this _currentTime _time))
  (let ()
    (block jreturn
        (if (> (jm_getElapsed_1 this _currentTime) _time)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isElapsedTNT_1) (defgeneric jm_isElapsedTNT_1 (this p1)))
(defmethod jm_isElapsedTNT_1 ((this TimeDelayHelper) _time)
  (declare (ignorable this _time))
  (let ()
    (block jreturn
        (if (> (jm_getElapsedTNT_0 this) _time)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_setStartTime_1) (defgeneric jm_setStartTime_1 (this p1)))
(defmethod jm_setStartTime_1 ((this TimeDelayHelper) _startTime)
  (declare (ignorable this _startTime))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startTime) _startTime))))

    
(unless (fboundp 'jm_getStartTime_0) (defgeneric jm_getStartTime_0 (this)))
(defmethod jm_getStartTime_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startTime)))))

    
(unless (fboundp 'jm_setStartTimeTNT_0) (defgeneric jm_setStartTimeTNT_0 (this)))
(defmethod jm_setStartTimeTNT_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startTime) (JR.currentTimeMillis)))))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_elapsedTimeAtPause) (jm_getElapsedTNT_0 this))
        (setf (slot-value this 'f_startTime) (Long.jstatic_MAX_VALUE)))))

    
(unless (fboundp 'jm_resume_0) (defgeneric jm_resume_0 (this)))
(defmethod jm_resume_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (/= (slot-value this 'f_elapsedTimeAtPause) (Long.jstatic_MIN_VALUE))
            (progn
            (setf (slot-value this 'f_startTime) (JR.i64 (+ (JR.currentTimeMillis) (slot-value this 'f_elapsedTimeAtPause))))
            (setf (slot-value this 'f_elapsedTimeAtPause) (Long.jstatic_MIN_VALUE))
            (jm_setStartTimeTNT_0 this)
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toStringAt_1) (defgeneric jm_toStringAt_1 (this p1)))
(defmethod jm_toStringAt_1 ((this TimeDelayHelper) _currentTime)
  (declare (ignorable this _currentTime))
  (let (_elapsed _commonLabels _elapsedAsString)
  (declare (ignorable _elapsed _commonLabels _elapsedAsString))
    (block jreturn
        (setf _elapsed (jm_getElapsed_1 this _currentTime))
        (if (> _elapsed 0)
            (progn
            (setf _commonLabels (CommonLabels.jm_getInstance_0))
            (setf _elapsedAsString (JR.str _elapsed))
            (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) (slot-value _commonLabels 'f_START)) (slot-value this 'f_startTime)) (slot-value _commonLabels 'f_CURRENT)) _currentTime) (slot-value _commonLabels 'f_ELAPSED)) _elapsedAsString))))
            (progn
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TimeDelayHelper))
  (declare (ignorable this))
  (let (_currentTime _elapsed _commonLabels _elapsedAsString)
  (declare (ignorable _currentTime _elapsed _commonLabels _elapsedAsString))
    (block jreturn
        (setf _currentTime (JR.currentTimeMillis))
        (setf _elapsed (jm_getElapsed_1 this _currentTime))
        (if (> _elapsed 0)
            (progn
            (setf _commonLabels (CommonLabels.jm_getInstance_0))
            (setf _elapsedAsString (JR.str _elapsed))
            (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 (jm_appendlong_1 (jm_append_1 (StringMaker.jnew_0) (slot-value _commonLabels 'f_START)) (slot-value this 'f_startTime)) (slot-value _commonLabels 'f_CURRENT)) _currentTime) (slot-value _commonLabels 'f_ELAPSED)) _elapsedAsString))))
            (progn
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))))



