;;;; Generated Code Do Not Modify
;;;; package org.allbinary.time

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass StupidTimer (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_nullUtil :initform nil)
   (f_threadObjectUtil :initform nil)))

(defun StupidTimer.jnew_0 ()
  (let ((this (make-instance 'StupidTimer)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_nullUtil) (NullUtil.jm_getInstance_0))
    (setf (slot-value this 'f_threadObjectUtil) (ThreadObjectUtil.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_visitBool_1) (defgeneric jm_visitBool_1 (this p1)))
(defmethod jm_visitBool_1 ((this StupidTimer) _visitorInterface)
  (declare (ignorable this _visitorInterface))
  (let (_result _result2)
  (declare (ignorable _result _result2))
    (block jreturn
        (setf _result (jm_visit_1 _visitorInterface (slot-value (slot-value this 'f_nullUtil) 'f_NULL_OBJECT)))
        (setf _result2 (jm_booleanValue_0 _result))
        (return-from jreturn _result2))))

    
(unless (fboundp 'jm_visit_2) (defgeneric jm_visit_2 (this p1 p2)))
(defmethod jm_visit_2 ((this StupidTimer) _visitorInterface _timeDelayHelper)
  (declare (ignorable this _visitorInterface _timeDelayHelper))
  (let (_tookTooLong _WAITING_FOR _index)
  (declare (ignorable _tookTooLong _WAITING_FOR _index))
    (block jreturn
        (setf _tookTooLong nil)
        (setf _WAITING_FOR "Waiting for: ")
        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _WAITING_FOR) (jm_toString_1 (StringUtil.jm_getInstance_0) _visitorInterface))) this (slot-value (slot-value this 'f_commonStrings) 'f_VISIT))
        (setf _index 0)
        (block jbreak (loop while (jm_visitBool_1 this _visitorInterface) do
                (block jcontinue
            (if (= (rem _index 10) 0)
                (progn
                (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) _WAITING_FOR) _index)) this (slot-value (slot-value this 'f_commonStrings) 'f_VISIT))))
            (setf _index (JR.i32 (+ _index 1)))
            (progn
                (jm_waitObjectFor_2 (slot-value this 'f_threadObjectUtil) this 1800))
            (if (jm_isTimeTNT_0 _timeDelayHelper)
                (progn
                (setf _tookTooLong t)
                (return-from jbreak))))))
        (if _tookTooLong
            (progn
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_VISIT) (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Took Too Long: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _visitorInterface))))))
            (progn
            (PreLogUtil.jm_put_3 (jm_toString_0 _timeDelayHelper) this (slot-value (slot-value this 'f_commonStrings) 'f_VISIT)))))))

    
(unless (fboundp 'jm_stopWaiting_0) (defgeneric jm_stopWaiting_0 (this)))
(defmethod jm_stopWaiting_0 ((this StupidTimer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (jm_notifyObject_1 (slot-value this 'f_threadObjectUtil) this)))))



