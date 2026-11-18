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
;;;; package org.allbinary.game.ag.ai.scroller

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TimedFireAI (BasicAI)
  ((f_maxFireDelayTimeHelper :initform nil)
   (f_delay :initform 0)))

(defvar TimedFireAI.jcell_TIME :jnone)
(defun TimedFireAI.jstatic_TIME ()
  (when (eq TimedFireAI.jcell_TIME :jnone) (setf TimedFireAI.jcell_TIME (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 1)))
  TimedFireAI.jcell_TIME)
(defun (setf TimedFireAI.jstatic_TIME) (value) (setf TimedFireAI.jcell_TIME value))

    
(defun TimedFireAI.jnew_3 (_delay _ownerLayerInterface _gameInput)
  (declare (ignorable _delay _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'TimedFireAI)))
    (setf (slot-value this 'f_maxFireDelayTimeHelper) (TimeDelayHelper.jnew_1 0))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_delay) _delay)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this TimedFireAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_timeFiredInterface)
  (declare (ignorable _timeFiredInterface))
    (block jreturn
        (setf _timeFiredInterface (jm_getOwnerLayerInterface_0 this))
        (if (and (jm_isTime_1 (slot-value this 'f_maxFireDelayTimeHelper) (slot-value (GameTickTimeDelayHelperFactory.jm_getInstance_0) 'f_startTime)) (< (JR.i32 (+ (jm_getLastFireTime_0 _timeFiredInterface) (slot-value (slot-value this 'f_maxFireDelayTimeHelper) 'f_delay))) (jm_getStartTime_0 (slot-value this 'f_maxFireDelayTimeHelper))))
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1))
            (setf (slot-value (slot-value this 'f_maxFireDelayTimeHelper) 'f_delay) (slot-value this 'f_delay)))))))



