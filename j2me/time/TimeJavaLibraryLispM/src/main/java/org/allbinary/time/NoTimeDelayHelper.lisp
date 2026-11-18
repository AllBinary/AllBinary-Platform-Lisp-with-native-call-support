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

(defclass NoTimeDelayHelper (TimeDelayHelper)
  ())

(defvar NoTimeDelayHelper.jcell_SINGLETON :jnone)
(defun NoTimeDelayHelper.jstatic_SINGLETON ()
  (when (eq NoTimeDelayHelper.jcell_SINGLETON :jnone) (setf NoTimeDelayHelper.jcell_SINGLETON (NoTimeDelayHelper.jnew_0)))
  NoTimeDelayHelper.jcell_SINGLETON)
(defun (setf NoTimeDelayHelper.jstatic_SINGLETON) (value) (setf NoTimeDelayHelper.jcell_SINGLETON value))

    
(defun NoTimeDelayHelper.jnew_0 ()
  (let ((this (make-instance 'NoTimeDelayHelper)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_isTimeTNT_0) (defgeneric jm_isTimeTNT_0 (this)))
(defmethod jm_isTimeTNT_0 ((this NoTimeDelayHelper))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isTimeSinceTNT_1) (defgeneric jm_isTimeSinceTNT_1 (this p1)))
(defmethod jm_isTimeSinceTNT_1 ((this NoTimeDelayHelper) _delay)
  (declare (ignorable this _delay))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isTime_1) (defgeneric jm_isTime_1 (this p1)))
(defmethod jm_isTime_1 ((this NoTimeDelayHelper) _currentTime)
  (declare (ignorable this _currentTime))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isTimeSince_2) (defgeneric jm_isTimeSince_2 (this p1 p2)))
(defmethod jm_isTimeSince_2 ((this NoTimeDelayHelper) _delay _currentTime)
  (declare (ignorable this _delay _currentTime))
  (let ()
    (block jreturn
        (return-from jreturn t))))



