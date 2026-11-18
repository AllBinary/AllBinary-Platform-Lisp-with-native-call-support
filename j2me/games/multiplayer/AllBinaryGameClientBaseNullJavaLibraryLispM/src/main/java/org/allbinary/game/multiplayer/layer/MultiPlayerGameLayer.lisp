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
;;;; package org.allbinary.game.multiplayer.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MultiPlayerGameLayer (CollidableDestroyableDamageableLayer)
  ())

    
(defun MultiPlayerGameLayer.jnew_5 (_remoteInfo _groupInterface _name _layerInfo _viewPosition)
  (declare (ignorable _remoteInfo _groupInterface _name _layerInfo _viewPosition))
  (let ((this (make-instance 'MultiPlayerGameLayer)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getMultiplayerBehavior_0) (defgeneric jm_getMultiplayerBehavior_0 (this)))
(defmethod jm_getMultiplayerBehavior_0 ((this MultiPlayerGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (MultiplayerBehavior.jstatic_NULL_MULTIPLAYER_BEHAVIOR)))))

    
(unless (fboundp 'jm_setPingInfo_1) (defgeneric jm_setPingInfo_1 (this p1)))
(defmethod jm_setPingInfo_1 ((this MultiPlayerGameLayer) _show)
  (declare (ignorable this _show))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setFiring_1) (defgeneric jm_setFiring_1 (this p1)))
(defmethod jm_setFiring_1 ((this MultiPlayerGameLayer) _firing)
  (declare (ignorable this _firing))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getFiring_0) (defgeneric jm_getFiring_0 (this)))
(defmethod jm_getFiring_0 ((this MultiPlayerGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



