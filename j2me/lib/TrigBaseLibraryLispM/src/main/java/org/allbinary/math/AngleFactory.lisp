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
;;;; package org.allbinary.math

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AngleFactory (JObject)
  ((f_logUtil :initform nil)
   (f_TOTAL_ANGLE :initform 0)
   (f_QUARTER_TOTAL_ANGLE :initform 0)
   (f_angleArray :initform nil)
   (f_NEGATIVE_ONE :initform 0)
   (f_NOT_ANGLE :initform nil)
   (f_DOWN :initform nil)
   (f_UP :initform nil)
   (f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_frameUtil :initform nil)))

(defvar AngleFactory.jcell_instance :jnone)
(defun AngleFactory.jstatic_instance ()
  (when (eq AngleFactory.jcell_instance :jnone) (setf AngleFactory.jcell_instance (AngleFactory.jnew_0)))
  AngleFactory.jcell_instance)

    
(defun AngleFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AngleFactory.jstatic_instance)))))

    
(defun AngleFactory.jnew_0 ()
  (let ((this (make-instance 'AngleFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_TOTAL_ANGLE) 360)
    (setf (slot-value this 'f_QUARTER_TOTAL_ANGLE) 90)
    (setf (slot-value this 'f_angleArray) (JR.newArray nil (slot-value this 'f_TOTAL_ANGLE)))
    (setf (slot-value this 'f_NEGATIVE_ONE) (JR.i16 (JR.i32 (- 1))))
    (setf (slot-value this 'f_NOT_ANGLE) (NamedAngle.jnew_2 (slot-value this 'f_NEGATIVE_ONE) (slot-value (CommonStrings.jm_getInstance_0) 'f_EMPTY)))
    
    
    
    
    (setf (slot-value this 'f_frameUtil) (FrameUtil.jm_getInstance_0))
  (let (_commonPhoneStrings _total _index)
  (declare (ignorable _commonPhoneStrings _total _index))
    (block jreturn
        (setf _commonPhoneStrings (CommonPhoneStrings.jm_getInstance_0))
        (setf _total (JR.i16 (length (slot-value this 'f_angleArray))))
        (setf (slot-value this 'f_UP) (NamedAngle.jnew_2 (JR.i16 0) (slot-value _commonPhoneStrings 'f_UP)))
        (setf (aref (slot-value this 'f_angleArray) 0) (slot-value this 'f_UP))
        (progn
            (setf _index 1)
            (block jbreak (loop while (< _index 90) do
                (block jcontinue
            (setf (aref (slot-value this 'f_angleArray) _index) (Angle.jnew_1 (JR.i16 _index))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_RIGHT) (NamedAngle.jnew_2 (JR.i16 90) (slot-value _commonPhoneStrings 'f_RIGHT)))
        (setf (aref (slot-value this 'f_angleArray) 90) (slot-value this 'f_RIGHT))
        (progn
            (setf _index 91)
            (block jbreak (loop while (< _index 180) do
                (block jcontinue
            (setf (aref (slot-value this 'f_angleArray) _index) (Angle.jnew_1 (JR.i16 _index))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_DOWN) (NamedAngle.jnew_2 (JR.i16 180) (slot-value _commonPhoneStrings 'f_DOWN)))
        (setf (aref (slot-value this 'f_angleArray) 180) (slot-value this 'f_DOWN))
        (progn
            (setf _index 181)
            (block jbreak (loop while (< _index 270) do
                (block jcontinue
            (setf (aref (slot-value this 'f_angleArray) _index) (Angle.jnew_1 (JR.i16 _index))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_LEFT) (NamedAngle.jnew_2 (JR.i16 270) (slot-value _commonPhoneStrings 'f_LEFT)))
        (setf (aref (slot-value this 'f_angleArray) 270) (slot-value this 'f_LEFT))
        (progn
            (setf _index 271)
            (block jbreak (loop while (< _index _total) do
                (block jcontinue
            (setf (aref (slot-value this 'f_angleArray) _index) (Angle.jnew_1 (JR.i16 _index))))
                (setf _index (JR.i32 (+ _index 1))))))))
    this))

    
(unless (fboundp 'jm_getAt_1) (defgeneric jm_getAt_1 (this p1)))
(defmethod jm_getAt_1 ((this AngleFactory) _index)
  (declare (ignorable this _index))
  (let (_adjustedIndex)
  (declare (ignorable _adjustedIndex))
    (block jreturn
        (setf _adjustedIndex (jm_adjustAngleToFrameAngle_1 (slot-value this 'f_frameUtil) _index))
        (return-from jreturn (aref (slot-value this 'f_angleArray) _adjustedIndex)))))

    
(unless (fboundp 'jm_getClosestDirection_1) (defgeneric jm_getClosestDirection_1 (this p1)))
(defmethod jm_getClosestDirection_1 ((this AngleFactory) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (if (or (and (>= _angle 315) (< _angle 360)) (and (>= _angle 0) (< _angle 45)))
            (progn
            (return-from jreturn (slot-value this 'f_UP)))
            (if (and (>= _angle 45) (< _angle 135))
            (progn
            (return-from jreturn (slot-value this 'f_RIGHT)))
            (if (and (>= _angle 135) (< _angle 225))
            (progn
            (return-from jreturn (slot-value this 'f_DOWN)))
            (if (and (>= _angle 225) (< _angle 315))
            (progn
            (return-from jreturn (slot-value this 'f_LEFT)))))))
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getGeneralDirection_0) (defgeneric jm_getGeneralDirection_0 (this)))
(defmethod jm_getGeneralDirection_0 ((this AngleFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_NOT_ANGLE)))))

    
(defun AngleFactory.jm_main_1 (_args)
  (declare (ignorable _args))
  (let (_stringMaker _angleFactory _index)
  (declare (ignorable _stringMaker _angleFactory _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _angleFactory (AngleFactory.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index 360) do
                (block jcontinue
            (jm_append_1 (jm_appendshort_1 (jm_append_1 (jm_appendint_1 _stringMaker _index) (slot-value (CommonSeps.jm_getInstance_0) 'f_FORWARD_SLASH)) (JR.i16 (jm_getValue_0 (jm_getClosestDirection_1 _angleFactory _index)))) (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_putF_3 (LogUtil.jm_getInstance_0) (jm_toString_0 _stringMaker) "main" "main"))))



