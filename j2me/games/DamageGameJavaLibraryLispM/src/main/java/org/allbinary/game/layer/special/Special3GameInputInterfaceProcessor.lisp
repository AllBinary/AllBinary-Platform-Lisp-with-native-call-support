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
;;;; package org.allbinary.game.layer.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Special3GameInputInterfaceProcessor (SpecialGameInputInterfaceProcessor)
  ())

    
(defun Special3GameInputInterfaceProcessor.jnew_1 (_collidableDestroyableDamageableLayer)
  (declare (ignorable _collidableDestroyableDamageableLayer))
  (let ((this (make-instance 'Special3GameInputInterfaceProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processEvent_2) (defgeneric jm_processEvent_2 (this p1 p2)))
(defmethod jm_processEvent_2 ((this Special3GameInputInterfaceProcessor) _allbinaryLayerManager _gameKeyEvent)
  (declare (ignorable this _allbinaryLayerManager _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_special3_2 (slot-value this 'f_specialGameInputInterface) _allbinaryLayerManager _gameKeyEvent))))



