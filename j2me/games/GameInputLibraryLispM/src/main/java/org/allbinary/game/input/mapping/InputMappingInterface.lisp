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
;;;; package org.allbinary.game.input.mapping

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputMappingInterface (JObject)
  ())

(defun InputMappingInterface.jnew_0 ()
  (let ((this (make-instance 'InputMappingInterface)))
    this))

    
(unless (fboundp 'jm_processInputMapping_2) (defgeneric jm_processInputMapping_2 (this p1 p2)))
(defmethod jm_processInputMapping_2 ((this InputMappingInterface) _gameKey _input)
  (declare (ignorable this _gameKey _input))
  (error (JR.newException "AbstractMethodError" "processInputMapping")))



