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
;;;; package org.allbinary.logic.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SmallIntegerSingletonFactory (JObject)
  ((f_NEGATIVE_MAX :initform 0)
   (f_POSITIVE_MAX :initform 0)
   (f_INTEGER_ARRAY :initform nil)
   (f_STRING_ARRAY :initform nil)
   (f_MIN :initform 0)
   (f_lastMin :initform 0)
   (f_lastNegativeMin :initform 0)))

(defvar SmallIntegerSingletonFactory.jcell_instance :jnone)
(defun SmallIntegerSingletonFactory.jstatic_instance ()
  (when (eq SmallIntegerSingletonFactory.jcell_instance :jnone) (setf SmallIntegerSingletonFactory.jcell_instance (SmallIntegerSingletonFactory.jnew_0)))
  SmallIntegerSingletonFactory.jcell_instance)
(defun (setf SmallIntegerSingletonFactory.jstatic_instance) (value) (setf SmallIntegerSingletonFactory.jcell_instance value))

    
(defun SmallIntegerSingletonFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SmallIntegerSingletonFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getMin_0) (defgeneric jm_getMin_0 (this)))
(defmethod jm_getMin_0 ((this SmallIntegerSingletonFactory))
  (declare (ignorable this))
  (let (_minAllowed _logUtil)
  (declare (ignorable _minAllowed _logUtil))
    (block jreturn
        (setf _minAllowed (jm_getMinAllowed_0 this))
        (if (<= (slot-value this 'f_MIN) _minAllowed)
            (progn
            (if (J2MEUtil.jm_isJ2ME_0)
                (progn
                nil)
                (if (AndroidUtil.jm_isAndroid_0)
                (progn
                (setf _logUtil (LogUtil.jm_getInstance_0))
                (jm_putF_3 _logUtil (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Android InputFactory was initialized before GameMidlet: ") (slot-value this 'f_MIN))) this "getMin")
                (jm_initWithRange_2 this #x291 6))
                (progn
                (setf _logUtil (LogUtil.jm_getInstance_0))
                (jm_putF_3 _logUtil (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ") (slot-value this 'f_MIN))) this "getMin")
                (jm_initWithRange_2 this #x2D0 6))))))
        (if (<= (slot-value this 'f_MIN) _minAllowed)
            (progn
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (jm_put_4 _logUtil "This means you loaded the InputFactory before determining the platform input size requirements." this "getMin" (JR.newException "Exception"))))
        (return-from jreturn (slot-value this 'f_MIN)))))

    
(unless (fboundp 'jm_getMinAllowed_0) (defgeneric jm_getMinAllowed_0 (this)))
(defmethod jm_getMinAllowed_0 ((this SmallIntegerSingletonFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (J2MEUtil.jm_isJ2ME_0)
            (progn
            (return-from jreturn 0))
            (progn
            (if (AndroidUtil.jm_isAndroid_0)
                (progn
                (return-from jreturn #x101))
                (progn
                (return-from jreturn 23))))))))

    
(unless (fboundp 'jm_initWithRange_2) (defgeneric jm_initWithRange_2 (this p1 p2)))
(defmethod jm_initWithRange_2 ((this SmallIntegerSingletonFactory) _value _negativeValue)
  (declare (ignorable this _value _negativeValue))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- _value 1)))
            (block jbreak (loop while (>= _index (slot-value this 'f_lastMin)) do
                (block jcontinue
            (setf (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX)))) _index))
                (setf _index (JR.i32 (- _index 1))))))
        (progn
            (setf _index (JR.i32 (- _negativeValue 1)))
            (block jbreak (loop while (>= _index (slot-value this 'f_lastNegativeMin)) do
                (block jcontinue
            (setf (aref (slot-value this 'f_INTEGER_ARRAY) _index) (JR.i32 (- _index))))
                (setf _index (JR.i32 (- _index 1))))))
        (if (< (slot-value this 'f_lastMin) _value)
            (progn
            (setf (slot-value this 'f_lastMin) _value)
            (setf (slot-value this 'f_MIN) _value)))
        (if (< (slot-value this 'f_lastNegativeMin) _negativeValue)
            (progn
            (setf (slot-value this 'f_lastNegativeMin) _negativeValue))))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this SmallIntegerSingletonFactory))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (or (< (slot-value this 'f_lastMin) (slot-value this 'f_POSITIVE_MAX)) (< (slot-value this 'f_lastNegativeMin) (slot-value this 'f_NEGATIVE_MAX)))
            (progn
            (progn
                (setf _index (JR.i32 (- (slot-value this 'f_POSITIVE_MAX) 1)))
                (block jbreak (loop while (>= _index (slot-value this 'f_lastMin)) do
                    (block jcontinue
                (setf (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX)))) _index))
                    (setf _index (JR.i32 (- _index 1))))))
            (progn
                (setf _index (JR.i32 (- (slot-value this 'f_NEGATIVE_MAX) 1)))
                (block jbreak (loop while (>= _index (slot-value this 'f_lastNegativeMin)) do
                    (block jcontinue
                (setf (aref (slot-value this 'f_INTEGER_ARRAY) _index) (JR.i32 (- _index))))
                    (setf _index (JR.i32 (- _index 1))))))
            (setf (slot-value this 'f_lastMin) (slot-value this 'f_POSITIVE_MAX))
            (setf (slot-value this 'f_MIN) (slot-value this 'f_lastMin))
            (setf (slot-value this 'f_lastNegativeMin) (slot-value this 'f_NEGATIVE_MAX)))))))

    
(defun SmallIntegerSingletonFactory.jnew_0 ()
  (let ((this (make-instance 'SmallIntegerSingletonFactory)))
    (setf (slot-value this 'f_NEGATIVE_MAX) 500)
    (setf (slot-value this 'f_POSITIVE_MAX) #x2D1)
    (setf (slot-value this 'f_INTEGER_ARRAY) (JR.newArray nil (JR.i32 (+ (slot-value this 'f_NEGATIVE_MAX) (slot-value this 'f_POSITIVE_MAX)))))
    (setf (slot-value this 'f_STRING_ARRAY) (JR.newArray nil (JR.i32 (+ (slot-value this 'f_NEGATIVE_MAX) (slot-value this 'f_POSITIVE_MAX)))))
    (setf (slot-value this 'f_MIN) 0)
    (setf (slot-value this 'f_lastMin) 0)
    (setf (slot-value this 'f_lastNegativeMin) 0)
  (let ()
    (block jreturn
        (jm_initWithRange_2 this 23 0)))
    this))

    
(unless (fboundp 'jm_getAt_1) (defgeneric jm_getAt_1 (this p1)))
(defmethod jm_getAt_1 ((this SmallIntegerSingletonFactory) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX))))))))

    
(unless (fboundp 'jm_getAtNoThrow_1) (defgeneric jm_getAtNoThrow_1 (this p1)))
(defmethod jm_getAtNoThrow_1 ((this SmallIntegerSingletonFactory) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (if (> (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX))) (JR.i32 (- (length (slot-value this 'f_INTEGER_ARRAY)) 1)))
            (progn
            (return-from jreturn (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ (JR.i32 (- 1)) (slot-value this 'f_NEGATIVE_MAX)))))))
        (return-from jreturn (aref (slot-value this 'f_INTEGER_ARRAY) (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX))))))))

    
(unless (fboundp 'jm_createInstance_1) (defgeneric jm_createInstance_1 (this p1)))
(defmethod jm_createInstance_1 ((this SmallIntegerSingletonFactory) _index)
  (declare (ignorable this _index))
  (let (_integer)
  (declare (ignorable _integer))
    (block jreturn
        (setf _integer (jm_getAt_1 this _index))
        (if (null _integer)
            (progn
            (setf _integer _index)))
        (return-from jreturn _integer))))

    
(unless (fboundp 'jm_getString_1) (defgeneric jm_getString_1 (this p1)))
(defmethod jm_getString_1 ((this SmallIntegerSingletonFactory) _index)
  (declare (ignorable this _index))
  (let (_i)
  (declare (ignorable _i))
    (block jreturn
        (setf _i (JR.i32 (+ _index (slot-value this 'f_NEGATIVE_MAX))))
        (if (null (aref (slot-value this 'f_STRING_ARRAY) _i))
            (progn
            (setf (aref (slot-value this 'f_STRING_ARRAY) _i) (JR.toString (aref (slot-value this 'f_INTEGER_ARRAY) _i)))))
        (return-from jreturn (aref (slot-value this 'f_STRING_ARRAY) _i)))))



