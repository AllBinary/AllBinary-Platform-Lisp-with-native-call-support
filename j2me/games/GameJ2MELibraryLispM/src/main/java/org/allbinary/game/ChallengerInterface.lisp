;;;; 
;;;; To change this license header, choose License Headers in Project Properties. 
;;;; To change this template file, choose Tools | Templates 
;;;; and open the template in the editor.  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ChallengerInterface (JObject)
  ())

(defun ChallengerInterface.jnew_0 ()
  (let ((this (make-instance 'ChallengerInterface)))
    this))

    
(unless (fboundp 'jm_setWinner_1) (defgeneric jm_setWinner_1 (this p1)))
(defmethod jm_setWinner_1 ((this ChallengerInterface) _isWinner)
  (declare (ignorable this _isWinner))
  (error (JR.newException "AbstractMethodError" "setWinner")))



