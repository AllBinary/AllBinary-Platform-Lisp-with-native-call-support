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

(defclass AngleIncrementInfoFactory (JObject)
  ((f_angleIncrementInfo :initform nil)))

(defvar AngleIncrementInfoFactory.jcell_instance :jnone)
(defun AngleIncrementInfoFactory.jstatic_instance ()
  (when (eq AngleIncrementInfoFactory.jcell_instance :jnone) (setf AngleIncrementInfoFactory.jcell_instance (AngleIncrementInfoFactory.jnew_0)))
  AngleIncrementInfoFactory.jcell_instance)
(defun (setf AngleIncrementInfoFactory.jstatic_instance) (value) (setf AngleIncrementInfoFactory.jcell_instance value))

(defun AngleIncrementInfoFactory.jnew_0 ()
  (let ((this (make-instance 'AngleIncrementInfoFactory)))
    (setf (slot-value this 'f_angleIncrementInfo) (JR.newArray nil (slot-value (AngleFactory.jm_getInstance_0) 'f_TOTAL_ANGLE)))
    this))

    
(defun AngleIncrementInfoFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (AngleIncrementInfoFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getAt_1) (defgeneric jm_getAt_1 (this p1)))
(defmethod jm_getAt_1 ((this AngleIncrementInfoFactory) _angleIncrement)
  (declare (ignorable this _angleIncrement))
  (let (_halfAngleIncrement _angleIncrementInfo _angleIncrementInfoCanBeNull)
  (declare (ignorable _halfAngleIncrement _angleIncrementInfo _angleIncrementInfoCanBeNull))
    (block jreturn
        (setf _halfAngleIncrement (ash _angleIncrement (- (logand 1 31))))
        (setf _angleIncrementInfo nil)
        (setf _angleIncrementInfoCanBeNull (aref (slot-value this 'f_angleIncrementInfo) _halfAngleIncrement))
        (if (null _angleIncrementInfoCanBeNull)
            (progn
            (setf _angleIncrementInfo (AngleIncrementInfo.jnew_1 _angleIncrement))
            (setf (aref (slot-value this 'f_angleIncrementInfo) _halfAngleIncrement) _angleIncrementInfo)
            (return-from jreturn _angleIncrementInfo))
            (progn
            (setf _angleIncrementInfo _angleIncrementInfoCanBeNull)))
        (return-from jreturn _angleIncrementInfo))))



