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

(defclass SpecialAnalogDownGameInputProcessor (SpecialGameInputProcessor)
  ())

    
(defun SpecialAnalogDownGameInputProcessor.jnew_1 (_collidableDestroyableDamageableLayer)
  (declare (ignorable _collidableDestroyableDamageableLayer))
  (let ((this (make-instance 'SpecialAnalogDownGameInputProcessor)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_processAnalog_3) (defgeneric jm_processAnalog_3 (this p1 p2 p3)))
(defmethod jm_processAnalog_3 ((this SpecialAnalogDownGameInputProcessor) _allbinaryLayerManager _gameKeyEvent _yAnalogValue)
  (declare (ignorable this _allbinaryLayerManager _gameKeyEvent _yAnalogValue))
  (let ()
    (block jreturn
        (jm_downAnalog_1 (slot-value this 'f_collidableDestroyableDamageableLayer) _yAnalogValue))))



