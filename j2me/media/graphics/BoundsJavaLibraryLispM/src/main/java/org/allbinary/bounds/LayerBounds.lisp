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
;;;; package org.allbinary.bounds

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerBounds (JObject)
  ((f_logUtil :initform nil)
   (f_rectangle :initform nil)))

    
(defun LayerBounds.jnew_1 (_rectangle)
  (declare (ignorable _rectangle))
  (let ((this (make-instance 'LayerBounds)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rectangle) _rectangle)))
    this))

    
(unless (fboundp 'jm_getRectangleP_0) (defgeneric jm_getRectangleP_0 (this)))
(defmethod jm_getRectangleP_0 ((this LayerBounds))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rectangle)))))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this LayerBounds) _boundsVisitorInterface)
  (declare (ignorable this _boundsVisitorInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this LayerBounds) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onBoundsChangeEvent_1) (defgeneric jm_onBoundsChangeEvent_1 (this p1)))
(defmethod jm_onBoundsChangeEvent_1 ((this LayerBounds) _boundsChangeEvent)
  (declare (ignorable this _boundsChangeEvent))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_rectangle) (jm_getRectangle_0 _boundsChangeEvent)))))



