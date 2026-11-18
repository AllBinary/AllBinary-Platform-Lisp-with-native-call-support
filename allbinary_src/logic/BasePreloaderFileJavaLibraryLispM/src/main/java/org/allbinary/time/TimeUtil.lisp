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

(defclass TimeUtil (JObject)
  ())

(defvar TimeUtil.jcell_instance :jnone)
(defun TimeUtil.jstatic_instance ()
  (when (eq TimeUtil.jcell_instance :jnone) (setf TimeUtil.jcell_instance (TimeUtil.jnew_0)))
  TimeUtil.jcell_instance)
(defun (setf TimeUtil.jstatic_instance) (value) (setf TimeUtil.jcell_instance value))

(defvar TimeUtil.jcell_calendar :jnone)
(defun TimeUtil.jstatic_calendar ()
  (when (eq TimeUtil.jcell_calendar :jnone) (setf TimeUtil.jcell_calendar (Calendar.jm_getInstance_0)))
  TimeUtil.jcell_calendar)
(defun (setf TimeUtil.jstatic_calendar) (value) (setf TimeUtil.jcell_calendar value))

(defun TimeUtil.jnew_0 ()
  (let ((this (make-instance 'TimeUtil)))
    this))

    
(defun TimeUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TimeUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_setCalendar_5) (defgeneric jm_setCalendar_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_setCalendar_5 ((this TimeUtil) _calendar _yearString _monthString _dayString _hourString)
  (declare (ignorable this _calendar _yearString _monthString _dayString _hourString))
  (let (_year _month _day _hour)
  (declare (ignorable _year _month _day _hour))
    (block jreturn
        (setf _year (jm_intValue_0 _yearString))
        (setf _month (jm_intValue_0 _monthString))
        (setf _day (jm_intValue_0 _dayString))
        (setf _hour (jm_intValue_0 _hourString))
        (jm_set_5 _calendar _year _month _day _hour 0))))

    
(unless (fboundp 'jm_setCalendarWithTime_7) (defgeneric jm_setCalendarWithTime_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_setCalendarWithTime_7 ((this TimeUtil) _calendar _yearString _monthString _dayString _hourString _minuteString _secondString)
  (declare (ignorable this _calendar _yearString _monthString _dayString _hourString _minuteString _secondString))
  (let (_year _month _day _hour _minute _second)
  (declare (ignorable _year _month _day _hour _minute _second))
    (block jreturn
        (setf _year (jm_intValue_0 _yearString))
        (setf _month (jm_intValue_0 _monthString))
        (setf _day (jm_intValue_0 _dayString))
        (setf _hour (jm_intValue_0 _hourString))
        (setf _minute (jm_intValue_0 _minuteString))
        (setf _second (jm_intValue_0 _secondString))
        (jm_set_6 _calendar _year _month _day _hour _minute _second))))

    
(unless (fboundp 'jm_setExpirationCalendar_7) (defgeneric jm_setExpirationCalendar_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_setExpirationCalendar_7 ((this TimeUtil) _calendar _yearsString _monthsString _daysString _hoursString _minutesString _secondsString)
  (declare (ignorable this _calendar _yearsString _monthsString _daysString _hoursString _minutesString _secondsString))
  (let (_year _month _day _hour _minute _second)
  (declare (ignorable _year _month _day _hour _minute _second))
    (block jreturn
        (setf _year (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_YEAR)) (jm_intValue_0 _yearsString))))
        (setf _month (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_MONTH)) (jm_intValue_0 _monthsString))))
        (setf _day (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_DAY_OF_MONTH)) (jm_intValue_0 _daysString))))
        (setf _hour (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_HOUR)) (jm_intValue_0 _hoursString))))
        (setf _minute (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_MINUTE)) (jm_intValue_0 _minutesString))))
        (setf _second (JR.i32 (+ (jm_get_1 _calendar (Calendar.jstatic_SECOND)) (jm_intValue_0 _secondsString))))
        (jm_set_6 _calendar _year _month _day _hour _minute _second))))

    
(unless (fboundp 'jm_getTotalTime_6) (defgeneric jm_getTotalTime_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_getTotalTime_6 ((this TimeUtil) _yearString _monthString _dayString _hourString _minuteString _secondString)
  (declare (ignorable this _yearString _monthString _dayString _hourString _minuteString _secondString))
  (let (_time _timeDelta)
  (declare (ignorable _time _timeDelta))
    (block jreturn
        (setf _time (jm_getTimeInMillis_0 (TimeUtil.jstatic_calendar)))
        (jm_setExpirationCalendar_7 this (TimeUtil.jstatic_calendar) _yearString _monthString _dayString _hourString _minuteString _secondString)
        (setf _timeDelta (jm_getTimeInMillis_0 (TimeUtil.jstatic_calendar)))
        (return-from jreturn (JR.i64 (- _timeDelta _time))))))



