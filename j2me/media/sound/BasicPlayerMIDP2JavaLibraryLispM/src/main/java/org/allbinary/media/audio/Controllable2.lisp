;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Controllable2 (JObject)
  ())

(defun Controllable2.jnew_0 ()
  (let ((this (make-instance 'Controllable2)))
    this))

    
(unless (fboundp 'jm_setVolume_2) (defgeneric jm_setVolume_2 (this p1 p2)))
(defmethod jm_setVolume_2 ((this Controllable2) _leftVolume _rightVolume)
  (declare (ignorable this _leftVolume _rightVolume))
  (error (JR.newException "AbstractMethodError" "setVolume")))



