;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass KeyInterface (JObject)
  ())

(defun KeyInterface.jnew_0 ()
  (let ((this (make-instance 'KeyInterface)))
    this))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this KeyInterface) _keyCode)
  (declare (ignorable this _keyCode))
  (error (JR.newException "AbstractMethodError" "keyPressed")))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this KeyInterface) _keyCode)
  (declare (ignorable this _keyCode))
  (error (JR.newException "AbstractMethodError" "keyReleased")))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this KeyInterface) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (error (JR.newException "AbstractMethodError" "keyPressedByDevice")))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this KeyInterface) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (error (JR.newException "AbstractMethodError" "keyReleasedByDevice")))



