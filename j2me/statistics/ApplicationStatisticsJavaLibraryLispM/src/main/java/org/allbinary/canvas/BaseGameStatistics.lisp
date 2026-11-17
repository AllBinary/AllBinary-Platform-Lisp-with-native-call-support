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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseGameStatistics (JObject)
  ((f_timeDelayHelper :initform nil)
   (f_updateDelayHelper :initform nil)
   (f_totalRefreshes :initform 0)
   (f_totalFrames :initform 0)
   (f_gameTickTimeDelayHelper :initform nil)
   (f_DEFAULT_SCALE_FACTOR :initform 0)
   (f_NOT :initform nil)
   (f_EMPTY_STRING :initform nil)
   (f_STRING_ARRAY :initform nil)
   (f_SPACE_CHAR :initform 0)
   (f_PLUS_CHAR :initform 0)
   (f_X_CHAR :initform 0)
   (f_CHAR_ARRAY :initform nil)
   (f_primitiveLongSingleton :initform nil)))

    
(defun BaseGameStatistics.jnew_0 ()
  (let ((this (make-instance 'BaseGameStatistics)))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 (Integer.jstatic_MAX_VALUE)))
    (setf (slot-value this 'f_updateDelayHelper) (TimeDelayHelper.jnew_1 2000))
    
    
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (setf (slot-value this 'f_DEFAULT_SCALE_FACTOR) (slot-value (ScaleFactorFactory.jm_getInstance_0) 'f_DEFAULT_SCALE_FACTOR))
    (setf (slot-value this 'f_NOT) "Not enough Time to Calculate")
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_STRING_ARRAY) (vector " Total Time: " (slot-value this 'f_EMPTY_STRING) " Total Frames: " (slot-value this 'f_EMPTY_STRING) " Frames/10 Sec: " (slot-value this 'f_EMPTY_STRING) " Total Paints: " (slot-value this 'f_EMPTY_STRING) " Paints/10 Sec: " (slot-value this 'f_EMPTY_STRING)))
    (setf (slot-value this 'f_SPACE_CHAR) (char-code #\ ))
    (setf (slot-value this 'f_PLUS_CHAR) (char-code #\+))
    (setf (slot-value this 'f_X_CHAR) (char-code #\X))
    (setf (slot-value this 'f_CHAR_ARRAY) (vector (vector (char-code #\F) (char-code #\r) (char-code #\a) (char-code #\m) (char-code #\e) (char-code #\s) (char-code #\/) (char-code #\1) (char-code #\0) (char-code #\ ) (char-code #\S) (char-code #\e) (char-code #\c) (char-code #\:)) (vector (char-code #\X) (char-code #\X)) (vector (char-code #\P) (char-code #\a) (char-code #\i) (char-code #\n) (char-code #\t) (char-code #\s) (char-code #\/) (char-code #\1) (char-code #\0) (char-code #\ ) (char-code #\S) (char-code #\e) (char-code #\c) (char-code #\:)) (vector (char-code #\X) (char-code #\X))))
    (setf (slot-value this 'f_primitiveLongSingleton) (PrimitiveLongSingleton.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setStartTimeTNT_0 (slot-value this 'f_timeDelayHelper))
        (setf (slot-value this 'f_totalRefreshes) 0)
        (setf (slot-value this 'f_totalFrames) 0))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this BaseGameStatistics) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_nextFrame_0) (defgeneric jm_nextFrame_0 (this)))
(defmethod jm_nextFrame_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalFrames) (JR.i64 (+ (slot-value this 'f_totalFrames) 1))))))

    
(unless (fboundp 'jm_nextRefresh_0) (defgeneric jm_nextRefresh_0 (this)))
(defmethod jm_nextRefresh_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_totalRefreshes) (JR.i64 (+ (slot-value this 'f_totalRefreshes) 1))))))

    
(unless (fboundp 'jm_getRefreshRate_0) (defgeneric jm_getRefreshRate_0 (this)))
(defmethod jm_getRefreshRate_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let (_elapsed _time)
  (declare (ignorable _elapsed _time))
    (block jreturn
        (setf _elapsed (jm_getElapsed_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))
        (if (> _elapsed 1)
            (progn
            (setf _time (JR.i16 (JR.i32 (JR.ldiv (slot-value this 'f_totalRefreshes) (ash _elapsed (- (logand (slot-value this 'f_DEFAULT_SCALE_FACTOR) 63)))))))
            (return-from jreturn _time))
            (progn
            (return-from jreturn 0))))))

    
(unless (fboundp 'jm_getTimeDelayHelper_0) (defgeneric jm_getTimeDelayHelper_0 (this)))
(defmethod jm_getTimeDelayHelper_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_timeDelayHelper)))))

    
(unless (fboundp 'jm_to2DCharArray_0) (defgeneric jm_to2DCharArray_0 (this)))
(defmethod jm_to2DCharArray_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let (_totalTime _framesPerSec _tens _removeTens _refreshesPerSec)
  (declare (ignorable _totalTime _framesPerSec _tens _removeTens _refreshesPerSec))
    (block jreturn
        (setf _totalTime (jm_getElapsed_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))
        (setf _totalTime (ash _totalTime (- (logand (slot-value this 'f_DEFAULT_SCALE_FACTOR) 63))))
        (if (and (> _totalTime 0) (jm_isTime_1 (slot-value this 'f_updateDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))
            (progn
            (setf _framesPerSec (JR.i32 (JR.ldiv (slot-value this 'f_totalFrames) _totalTime)))
            (if (< _framesPerSec 10)
                (progn
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 0) (slot-value this 'f_SPACE_CHAR))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 1) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) _framesPerSec)))
                (if (< _framesPerSec 100)
                (progn
                (setf _tens (JR.idiv _framesPerSec 10))
                (setf _removeTens (JR.i32 (* _tens 10)))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 0) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) _tens))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 1) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) (JR.i32 (- _framesPerSec _removeTens)))))
                (progn
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 0) (slot-value this 'f_PLUS_CHAR))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 1) 1) (slot-value this 'f_PLUS_CHAR)))))
            (setf _refreshesPerSec (JR.i32 (JR.ldiv (slot-value this 'f_totalRefreshes) _totalTime)))
            (if (< _refreshesPerSec 10)
                (progn
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 0) (slot-value this 'f_X_CHAR))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 1) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) _refreshesPerSec)))
                (if (< _refreshesPerSec 100)
                (progn
                (setf _tens (JR.idiv _refreshesPerSec 10))
                (setf _removeTens (JR.i32 (* _tens 10)))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 0) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) (JR.idiv _refreshesPerSec 10)))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 1) (aref (slot-value (slot-value this 'f_primitiveLongSingleton) 'f_NUMBER_CHAR_ARRAY) (JR.i32 (- _refreshesPerSec _removeTens)))))
                (progn
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 0) (slot-value this 'f_PLUS_CHAR))
                (setf (aref (aref (slot-value this 'f_CHAR_ARRAY) 3) 1) (slot-value this 'f_PLUS_CHAR)))))))
        (return-from jreturn (slot-value this 'f_CHAR_ARRAY)))))

    
(unless (fboundp 'jm_toStringArray_0) (defgeneric jm_toStringArray_0 (this)))
(defmethod jm_toStringArray_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let (_totalTime _string)
  (declare (ignorable _totalTime _string))
    (block jreturn
        (setf _totalTime (jm_getElapsed_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))
        (setf _totalTime (JR.ldiv _totalTime 10000))
        (if (> _totalTime 0)
            (progn
            (setf (aref (slot-value this 'f_STRING_ARRAY) 1) (JR.str _totalTime))
            (setf (aref (slot-value this 'f_STRING_ARRAY) 3) (JR.str (slot-value this 'f_totalFrames)))
            (setf (aref (slot-value this 'f_STRING_ARRAY) 5) (JR.str (JR.ldiv (slot-value this 'f_totalFrames) _totalTime)))
            (setf (aref (slot-value this 'f_STRING_ARRAY) 7) (JR.str (slot-value this 'f_totalRefreshes)))
            (setf (aref (slot-value this 'f_STRING_ARRAY) 9) (JR.str (JR.ldiv (slot-value this 'f_totalRefreshes) _totalTime))))
            (progn
            (setf _string (slot-value this 'f_EMPTY_STRING))
            (setf (aref (slot-value this 'f_STRING_ARRAY) 1) _string)
            (setf (aref (slot-value this 'f_STRING_ARRAY) 3) _string)
            (setf (aref (slot-value this 'f_STRING_ARRAY) 5) _string)
            (setf (aref (slot-value this 'f_STRING_ARRAY) 7) _string)
            (setf (aref (slot-value this 'f_STRING_ARRAY) 9) _string)))
        (return-from jreturn (slot-value this 'f_STRING_ARRAY)))))

    
(unless (fboundp 'jm_toStringAt_1) (defgeneric jm_toStringAt_1 (this p1)))
(defmethod jm_toStringAt_1 ((this BaseGameStatistics) _totalTime)
  (declare (ignorable this _totalTime))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (aref (slot-value this 'f_STRING_ARRAY) 0))
        (jm_appendlong_1 _stringBuffer _totalTime)
        (jm_append_1 _stringBuffer (aref (slot-value this 'f_STRING_ARRAY) 2))
        (jm_appendlong_1 _stringBuffer (slot-value this 'f_totalFrames))
        (jm_append_1 _stringBuffer (aref (slot-value this 'f_STRING_ARRAY) 4))
        (jm_appendlong_1 _stringBuffer (JR.ldiv (slot-value this 'f_totalFrames) _totalTime))
        (if (> (slot-value this 'f_totalRefreshes) 0)
            (progn
            (jm_append_1 _stringBuffer (aref (slot-value this 'f_STRING_ARRAY) 6))
            (jm_appendlong_1 _stringBuffer (slot-value this 'f_totalRefreshes))
            (jm_append_1 _stringBuffer (aref (slot-value this 'f_STRING_ARRAY) 8))
            (jm_appendlong_1 _stringBuffer (JR.ldiv (slot-value this 'f_totalRefreshes) _totalTime))
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BaseGameStatistics))
  (declare (ignorable this))
  (let (_totalTime)
  (declare (ignorable _totalTime))
    (block jreturn
        (setf _totalTime (jm_getElapsed_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime)))
        (setf _totalTime (JR.ldiv _totalTime 1000))
        (if (> _totalTime 0)
            (progn
            (return-from jreturn (jm_toStringAt_1 this _totalTime)))
            (progn
            (return-from jreturn (slot-value this 'f_NOT)))))))



