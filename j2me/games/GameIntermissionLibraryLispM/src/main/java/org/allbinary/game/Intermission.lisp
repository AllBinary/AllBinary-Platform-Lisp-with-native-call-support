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
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Intermission (JObject)
  ((f_enabled :initform nil)
   (f_timeElapsedHelper :initform nil)
   (f_intermissionEnableListener :initform nil)))

    
(defun Intermission.jnew_0 ()
  (let ((this (make-instance 'Intermission)))
    
    (setf (slot-value this 'f_timeElapsedHelper) (TimeDelayHelper.jnew_1 0))
    (setf (slot-value this 'f_intermissionEnableListener) (NullIntermissionEnableListener.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setListener_1) (defgeneric jm_setListener_1 (this p1)))
(defmethod jm_setListener_1 ((this Intermission) _enableListener)
  (declare (ignorable this _enableListener))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_intermissionEnableListener) _enableListener))))

    
(unless (fboundp 'jm_getTimeDelayHelper_0) (defgeneric jm_getTimeDelayHelper_0 (this)))
(defmethod jm_getTimeDelayHelper_0 ((this Intermission))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_timeElapsedHelper)))))

    
(unless (fboundp 'jm_setEnabled_1) (defgeneric jm_setEnabled_1 (this p1)))
(defmethod jm_setEnabled_1 ((this Intermission) _enabled)
  (declare (ignorable this _enabled))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_enabled) _enabled)
        (if (jm_isEnabled_0 this)
            (progn
            (jm_setStartTimeTNT_0 (jm_getTimeDelayHelper_0 this))))
        (jm_notifyIntermission_1 (slot-value this 'f_intermissionEnableListener) _enabled))))

    
(unless (fboundp 'jm_isEnabled_0) (defgeneric jm_isEnabled_0 (this)))
(defmethod jm_isEnabled_0 ((this Intermission))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_enabled)))))



