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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputProbability (JObject)
  ((f_likelyhoodIntegerArray :initform nil)
   (f_repeatLikelyhoodIntegerArray :initform nil)
   (f_max :initform 0)
   (f_timeDelayHelper :initform nil)))

(defvar InputProbability.jcell_INPUT_PROBABILITY :jnone)
(defun InputProbability.jstatic_INPUT_PROBABILITY ()
  (when (eq InputProbability.jcell_INPUT_PROBABILITY :jnone) (setf InputProbability.jcell_INPUT_PROBABILITY (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 0)))
  InputProbability.jcell_INPUT_PROBABILITY)
(defun (setf InputProbability.jstatic_INPUT_PROBABILITY) (value) (setf InputProbability.jcell_INPUT_PROBABILITY value))

    
(defun InputProbability.jnew_4 (_likelyhoodIntegerArray _repeatLikelyhoodIntegerArray _max _timeDelayHelper)
  (declare (ignorable _likelyhoodIntegerArray _repeatLikelyhoodIntegerArray _max _timeDelayHelper))
  (let ((this (make-instance 'InputProbability)))
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_likelyhoodIntegerArray) _likelyhoodIntegerArray)
        (setf (slot-value this 'f_repeatLikelyhoodIntegerArray) _repeatLikelyhoodIntegerArray)
        (setf (slot-value this 'f_max) _max)
        (setf (slot-value this 'f_timeDelayHelper) _timeDelayHelper)))
    this))

    
(unless (fboundp 'jm_getLikelyhoodIntegerArray_0) (defgeneric jm_getLikelyhoodIntegerArray_0 (this)))
(defmethod jm_getLikelyhoodIntegerArray_0 ((this InputProbability))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_likelyhoodIntegerArray)))))

    
(unless (fboundp 'jm_getRepeatLikelyhoodIntegerArray_0) (defgeneric jm_getRepeatLikelyhoodIntegerArray_0 (this)))
(defmethod jm_getRepeatLikelyhoodIntegerArray_0 ((this InputProbability))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_repeatLikelyhoodIntegerArray)))))

    
(unless (fboundp 'jm_getMax_0) (defgeneric jm_getMax_0 (this)))
(defmethod jm_getMax_0 ((this InputProbability))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_max)))))

    
(unless (fboundp 'jm_getTimeDelayHelper_0) (defgeneric jm_getTimeDelayHelper_0 (this)))
(defmethod jm_getTimeDelayHelper_0 ((this InputProbability))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_timeDelayHelper)))))

    
(unless (fboundp 'jm_toHashtable_0) (defgeneric jm_toHashtable_0 (this)))
(defmethod jm_toHashtable_0 ((this InputProbability))
  (declare (ignorable this))
  (let (_hashtable)
  (declare (ignorable _hashtable))
    (block jreturn
        (setf _hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
        (jm_put_2 _hashtable (InputProbability.jstatic_INPUT_PROBABILITY) this)
        (return-from jreturn _hashtable))))



