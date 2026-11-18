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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputProcessor (JObject)
  ((f_gameInputStrings :initform nil)))

(defun InputProcessor.jnew_0 ()
  (let ((this (make-instance 'InputProcessor)))
    (setf (slot-value this 'f_gameInputStrings) (GameInputStrings.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this InputProcessor) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_keyReleasedByDevice_3) (defgeneric jm_keyReleasedByDevice_3 (this p1 p2 p3)))
(defmethod jm_keyReleasedByDevice_3 ((this InputProcessor) _canvas _keyCode _deviceId)
  (declare (ignorable this _canvas _keyCode _deviceId))
  (let ()
    (block jreturn nil)))



