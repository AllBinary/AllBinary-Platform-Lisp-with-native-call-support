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

(defclass TerrainPatrolAI (PacePatrolAI)
  ((f_terrainEventListener :initform nil)
   (f_DOWN :initform nil)
   (f_CLIFF :initform nil)))

    
(defun TerrainPatrolAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'TerrainPatrolAI)))
    (setf (slot-value this 'f_terrainEventListener) (TerrainEventListener.jnew_0))
    (setf (slot-value this 'f_DOWN) (slot-value (AngleFactory.jm_getInstance_0) 'f_DOWN))
    (setf (slot-value this 'f_CLIFF) (BasicTerrainInfo.jnew_1 (slot-value this 'f_DOWN)))
  (let ()
    (block jreturn
        nil
        (jm_addListener_1 (TerrainEventHandler.jm_getInstance_1 _ownerLayerInterface) (slot-value this 'f_terrainEventListener))
        (jm_onTerrainEvent_1 (slot-value this 'f_terrainEventListener) (jm_getNext_1 (TerrainEventCircularStaticPool.jm_getInstance_0) (slot-value this 'f_CLIFF)))))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this TerrainPatrolAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_changeDirectionIfCliffReached_0 this))))

    
(unless (fboundp 'jm_changeDirectionIfCliffReached_0) (defgeneric jm_changeDirectionIfCliffReached_0 (this)))
(defmethod jm_changeDirectionIfCliffReached_0 ((this TerrainPatrolAI))
  (declare (ignorable this))
  (let (_list _size _terrainEvent _basicTerrainInfo _angle _index)
  (declare (ignorable _list _size _terrainEvent _basicTerrainInfo _angle _index))
    (block jreturn
        (setf _list (jm_getList_0 (slot-value this 'f_terrainEventListener)))
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _terrainEvent (jm_removeAt_1 _list _index))
            (setf _basicTerrainInfo (jm_getBasicTerrainInfo_0 _terrainEvent))
            (setf _angle (jm_getAngle_0 _basicTerrainInfo))
            (if (eq _angle (slot-value this 'f_DOWN))
                (progn
                (jm_nextDirection_0 this)
                (if (not (slot-value this 'f_isFollowLimitedByTerrain))
                    (progn
                    (jm_putF_3 (slot-value this 'f_logUtil) "Following Limited" this "onTerrainEvent")
                    (setf (slot-value this 'f_isFollowLimitedByTerrain) t))))))
                (setf _index (JR.i32 (+ _index 1)))))))))



