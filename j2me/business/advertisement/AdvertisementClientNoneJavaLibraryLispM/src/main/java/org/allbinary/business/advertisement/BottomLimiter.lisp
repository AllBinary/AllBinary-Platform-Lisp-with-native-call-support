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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BottomLimiter (JObject)
  ((f_bottom :initform 0)
   (f_deltaY :initform 0)
   (f_lower :initform 0)
   (f_higher :initform 0)))

(defvar BottomLimiter.jcell_instance :jnone)
(defun BottomLimiter.jstatic_instance ()
  (when (eq BottomLimiter.jcell_instance :jnone) (setf BottomLimiter.jcell_instance (BottomLimiter.jnew_0)))
  BottomLimiter.jcell_instance)
(defun (setf BottomLimiter.jstatic_instance) (value) (setf BottomLimiter.jcell_instance value))

    
(defun BottomLimiter.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BottomLimiter.jstatic_instance)))))

    
(defun BottomLimiter.jnew_0 ()
  (let ((this (make-instance 'BottomLimiter)))
    
    
    
    
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this BottomLimiter) _lower _higher)
  (declare (ignorable this _lower _higher))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lower) _lower)
        (setf (slot-value this 'f_higher) _higher))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this BottomLimiter))
  (declare (ignorable this))
  (let (_displayInfo _gameAdState)
  (declare (ignorable _displayInfo _gameAdState))
    (block jreturn
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _gameAdState (jm_getCurrentInstance_0 (GameAdStateFactory.jm_getInstance_0)))
        (if (jm_isShowingAt_0 _gameAdState)
            (progn
            (setf (slot-value this 'f_deltaY) (slot-value this 'f_higher)))
            (progn
            (setf (slot-value this 'f_deltaY) (slot-value this 'f_lower))))
        (setf (slot-value this 'f_bottom) (JR.i32 (- (jm_getLastHeight_0 _displayInfo) (slot-value this 'f_deltaY)))))))

    
(unless (fboundp 'jm_getDeltaY_0) (defgeneric jm_getDeltaY_0 (this)))
(defmethod jm_getDeltaY_0 ((this BottomLimiter))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_deltaY)))))

    
(unless (fboundp 'jm_getBottom_0) (defgeneric jm_getBottom_0 (this)))
(defmethod jm_getBottom_0 ((this BottomLimiter))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_bottom)))))



