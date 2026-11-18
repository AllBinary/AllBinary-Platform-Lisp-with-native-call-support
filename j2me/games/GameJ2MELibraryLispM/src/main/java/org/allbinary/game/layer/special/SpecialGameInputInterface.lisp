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

(defclass SpecialGameInputInterface (JObject)
  ())

(defun SpecialGameInputInterface.jnew_0 ()
  (let ((this (make-instance 'SpecialGameInputInterface)))
    this))

    
(unless (fboundp 'jm_up_0) (defgeneric jm_up_0 (this)))
(defmethod jm_up_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "up")))

    
(unless (fboundp 'jm_down_0) (defgeneric jm_down_0 (this)))
(defmethod jm_down_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "down")))

    
(unless (fboundp 'jm_right_0) (defgeneric jm_right_0 (this)))
(defmethod jm_right_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "right")))

    
(unless (fboundp 'jm_left_0) (defgeneric jm_left_0 (this)))
(defmethod jm_left_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "left")))

    
(unless (fboundp 'jm_strafeLeft_0) (defgeneric jm_strafeLeft_0 (this)))
(defmethod jm_strafeLeft_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "strafeLeft")))

    
(unless (fboundp 'jm_strafeRight_0) (defgeneric jm_strafeRight_0 (this)))
(defmethod jm_strafeRight_0 ((this SpecialGameInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "strafeRight")))

    
(unless (fboundp 'jm_fire_2) (defgeneric jm_fire_2 (this p1 p2)))
(defmethod jm_fire_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "fire")))

    
(unless (fboundp 'jm_special1_2) (defgeneric jm_special1_2 (this p1 p2)))
(defmethod jm_special1_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "special1")))

    
(unless (fboundp 'jm_special2_2) (defgeneric jm_special2_2 (this p1 p2)))
(defmethod jm_special2_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "special2")))

    
(unless (fboundp 'jm_special3_2) (defgeneric jm_special3_2 (this p1 p2)))
(defmethod jm_special3_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "special3")))

    
(unless (fboundp 'jm_special4_2) (defgeneric jm_special4_2 (this p1 p2)))
(defmethod jm_special4_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "special4")))

    
(unless (fboundp 'jm_special5_2) (defgeneric jm_special5_2 (this p1 p2)))
(defmethod jm_special5_2 ((this SpecialGameInputInterface) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (error (JR.newException "AbstractMethodError" "special5")))



