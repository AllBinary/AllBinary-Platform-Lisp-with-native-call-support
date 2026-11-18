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
;;;; package org.allbinary.game.configuration.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameFeatureEvent (AllBinaryEventObject)
  ((f_whatChanged :initform nil)))

    
(defun GameFeatureEvent.jnew_2 (_anyType _whatChanged)
  (declare (ignorable _anyType _whatChanged))
  (let ((this (make-instance 'GameFeatureEvent)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_whatChanged) _whatChanged)))
    this))

    
(unless (fboundp 'jm_getWhatChanged_0) (defgeneric jm_getWhatChanged_0 (this)))
(defmethod jm_getWhatChanged_0 ((this GameFeatureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_whatChanged)))))

    
(unless (fboundp 'jm_getGameOption_0) (defgeneric jm_getGameOption_0 (this)))
(defmethod jm_getGameOption_0 ((this GameFeatureEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSource_0 this)))))



