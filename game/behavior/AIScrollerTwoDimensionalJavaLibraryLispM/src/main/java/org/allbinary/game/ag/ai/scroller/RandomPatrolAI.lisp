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

(defclass RandomPatrolAI (BasePatrolAI)
  ((f_changedDirection :initform nil)))

    
(defun RandomPatrolAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'RandomPatrolAI)))
    (setf (slot-value this 'f_changedDirection) t)
  (let ()
    (block jreturn
        nil
        (jm_updateRandomDistance_0 this)))
    this))

    
(unless (fboundp 'jm_updateRandomDistance_0) (defgeneric jm_updateRandomDistance_0 (this)))
(defmethod jm_updateRandomDistance_0 ((this RandomPatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_currentDistance) (jm_getAbsoluteNextInt_1 (MyRandomFactory.jm_getInstance_0) (jm_intValue_0 (slot-value this 'f_maxDistance)))))))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this RandomPatrolAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (jm_update_0 this)
        (jm_processKeyAI_1 this (slot-value this 'f_keyDirection))
        (if (slot-value this 'f_changedDirection)
            (progn
            (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1))
            (jm_updateRandomDistance_0 this)
            (setf (slot-value this 'f_changedDirection) nil))))))

    
(unless (fboundp 'jm_nextDirection_0) (defgeneric jm_nextDirection_0 (this)))
(defmethod jm_nextDirection_0 ((this RandomPatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (setf (slot-value this 'f_changedDirection) t))))



