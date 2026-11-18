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
;;;; package org.allbinary.game.layer.hud.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameNotificationEvent (AllBinaryEventObject)
  ((f_string :initform nil)
   (f_seconds :initform nil)
   (f_basicColor :initform nil)
   (f_removeable :initform nil)))

    
(defun GameNotificationEvent.jnew_5 (_anyType _string _seconds _basicColor _permanent)
  (declare (ignorable _anyType _string _seconds _basicColor _permanent))
  (let ((this (make-instance 'GameNotificationEvent)))
    (setf (slot-value this 'f_string) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    
    (setf (slot-value this 'f_basicColor) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK))
    
  (let ()
    (block jreturn
        nil
        (jm_setString_1 this _string)
        (setf (slot-value this 'f_seconds) _seconds)
        (jm_setBasicColorP_1 this _basicColor)
        (setf (slot-value this 'f_removeable) _permanent)))
    this))

    
(unless (fboundp 'jm_getString_0) (defgeneric jm_getString_0 (this)))
(defmethod jm_getString_0 ((this GameNotificationEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_string)))))

    
(unless (fboundp 'jm_getSeconds_0) (defgeneric jm_getSeconds_0 (this)))
(defmethod jm_getSeconds_0 ((this GameNotificationEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_seconds)))))

    
(unless (fboundp 'jm_getBasicColorP_0) (defgeneric jm_getBasicColorP_0 (this)))
(defmethod jm_getBasicColorP_0 ((this GameNotificationEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicColor)))))

    
(unless (fboundp 'jm_getPermanent_0) (defgeneric jm_getPermanent_0 (this)))
(defmethod jm_getPermanent_0 ((this GameNotificationEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_removeable)))))

    
(unless (fboundp 'jm_setString_1) (defgeneric jm_setString_1 (this p1)))
(defmethod jm_setString_1 ((this GameNotificationEvent) _string)
  (declare (ignorable this _string))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_string) _string))))

    
(unless (fboundp 'jm_setBasicColorP_1) (defgeneric jm_setBasicColorP_1 (this p1)))
(defmethod jm_setBasicColorP_1 ((this GameNotificationEvent) _basicColor)
  (declare (ignorable this _basicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicColor) _basicColor))))



