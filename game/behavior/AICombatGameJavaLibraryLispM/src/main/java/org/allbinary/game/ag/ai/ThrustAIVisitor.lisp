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

(defclass ThrustAIVisitor (Visitor)
  ((f_logUtil :initform nil)
   (f_TRUE :initform nil)))

    
(defun ThrustAIVisitor.jnew_0 ()
  (let ((this (make-instance 'ThrustAIVisitor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_TRUE) (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this ThrustAIVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let (_basicAI _commonStrings)
  (declare (ignorable _basicAI _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _basicAI _anyType)
            (jm_processKeyAI_1 _basicAI (Canvas.jstatic_UP)))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_VISIT) _e)))
        (return-from jreturn (slot-value this 'f_TRUE)))))



