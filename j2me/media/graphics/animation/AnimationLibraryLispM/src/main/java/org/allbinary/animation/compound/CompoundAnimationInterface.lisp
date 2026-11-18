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
;;;; package org.allbinary.animation.compound

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CompoundAnimationInterface (JObject)
  ())

(defun CompoundAnimationInterface.jnew_0 ()
  (let ((this (make-instance 'CompoundAnimationInterface)))
    this))

    
(unless (fboundp 'jm_nextAnimation_0) (defgeneric jm_nextAnimation_0 (this)))
(defmethod jm_nextAnimation_0 ((this CompoundAnimationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "nextAnimation")))

    
(unless (fboundp 'jm_previousAnimation_0) (defgeneric jm_previousAnimation_0 (this)))
(defmethod jm_previousAnimation_0 ((this CompoundAnimationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "previousAnimation")))

    
(unless (fboundp 'jm_setAnimation_1) (defgeneric jm_setAnimation_1 (this p1)))
(defmethod jm_setAnimation_1 ((this CompoundAnimationInterface) _index)
  (declare (ignorable this _index))
  (error (JR.newException "AbstractMethodError" "setAnimation")))

    
(unless (fboundp 'jm_getCurrentAnimation_0) (defgeneric jm_getCurrentAnimation_0 (this)))
(defmethod jm_getCurrentAnimation_0 ((this CompoundAnimationInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getCurrentAnimation")))



