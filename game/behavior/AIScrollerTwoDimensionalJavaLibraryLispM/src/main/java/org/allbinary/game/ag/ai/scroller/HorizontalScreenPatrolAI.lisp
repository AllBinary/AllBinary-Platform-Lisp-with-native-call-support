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

(defclass HorizontalScreenPatrolAI (BasicAI)
  ((f_keyDirection :initform 0)
   (f_displayInfoSingleton :initform nil)
   (f_firingX :initform 0)
   (f_firedIndex :initform 0)
   (f_MAX_FIRE :initform 0)
   (f_timeDelayHelper :initform nil)
   (f_secondaryPlayerQueue :initform nil)
   (f_sound :initform nil)))

(defvar HorizontalScreenPatrolAI.jcell_SOUND :jnone)
(defun HorizontalScreenPatrolAI.jstatic_SOUND ()
  (when (eq HorizontalScreenPatrolAI.jcell_SOUND :jnone) (setf HorizontalScreenPatrolAI.jcell_SOUND (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) 433)))
  HorizontalScreenPatrolAI.jcell_SOUND)
(defun (setf HorizontalScreenPatrolAI.jstatic_SOUND) (value) (setf HorizontalScreenPatrolAI.jcell_SOUND value))

    
(defun HorizontalScreenPatrolAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'HorizontalScreenPatrolAI)))
    (setf (slot-value this 'f_keyDirection) (Canvas.jstatic_LEFT))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_firingX) (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)))
    (setf (slot-value this 'f_firedIndex) 0)
    (setf (slot-value this 'f_MAX_FIRE) 28)
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 240))
    (setf (slot-value this 'f_secondaryPlayerQueue) (SecondaryPlayerQueueFactory.jm_getInstance_0))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_sound) (jm_get_1 _hashtable (HorizontalScreenPatrolAI.jstatic_SOUND)))
        (if (null (slot-value this 'f_sound))
            (progn
            (error (JR.newException "Exception" "No Sound Provided!!"))))))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this HorizontalScreenPatrolAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_layerInterface _currentOwnerLayerX _y _gameLayerManager _FIRE)
  (declare (ignorable _layerInterface _currentOwnerLayerX _y _gameLayerManager _FIRE))
    (block jreturn
        (jm_processKeyAI_1 this (slot-value this 'f_keyDirection))
        (if (jm_isTimeTNT_0 (slot-value this 'f_timeDelayHelper))
            (progn
            (setf _layerInterface (jm_getOwnerLayerInterface_0 this))
            (setf _currentOwnerLayerX (jm_getXP_0 _layerInterface))
            (if (< _currentOwnerLayerX (JR.i32 (- (jm_getWidth_0 _layerInterface))))
                (progn
                (setf _y (jm_getAbsoluteNextIntAllowZero_1 (MyRandomFactory.jm_getInstance_0) 50))
                (jm_setPosition_3 _layerInterface (JR.i32 (+ (JR.i32 (+ (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)) (jm_getWidth_0 _layerInterface))) 50)) _y (jm_getZP_0 _layerInterface))
                (setf (slot-value this 'f_firedIndex) 0)
                (setf (slot-value this 'f_firingX) (JR.i32 (+ (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton)) (jm_getNextInt_1 (MyRandomFactory.jm_getInstance_0) (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfoSingleton))))))
                (jm_add_1 (slot-value this 'f_secondaryPlayerQueue) (slot-value this 'f_sound))))
            (if (and (< _currentOwnerLayerX (slot-value this 'f_firingX)) (> _currentOwnerLayerX (JR.i32 (- (jm_getWidth_0 _layerInterface)))))
                (progn
                (jm_processKeyAI_1 this (Canvas.jstatic_KEY_NUM1))
                (setf _gameLayerManager _allBinaryLayerManager)
                (setf _FIRE (ash (JR.i32 (+ (jm_getCurrentLevel_0 (jm_getGameInfo_0 _gameLayerManager)) 12)) (- (logand 2 31))))
                (if (> _FIRE (slot-value this 'f_MAX_FIRE))
                    (progn
                    (setf _FIRE (slot-value this 'f_MAX_FIRE))))
                (if (> (slot-value this 'f_firedIndex) _FIRE)
                    (progn
                    (setf (slot-value this 'f_firedIndex) 0)
                    (setf (slot-value this 'f_firingX) (Integer.jstatic_MIN_VALUE))))
                (setf (slot-value this 'f_firedIndex) (JR.i32 (+ (slot-value this 'f_firedIndex) 1))))))))))

    
(unless (fboundp 'jm_nextDirection_0) (defgeneric jm_nextDirection_0 (this)))
(defmethod jm_nextDirection_0 ((this HorizontalScreenPatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



