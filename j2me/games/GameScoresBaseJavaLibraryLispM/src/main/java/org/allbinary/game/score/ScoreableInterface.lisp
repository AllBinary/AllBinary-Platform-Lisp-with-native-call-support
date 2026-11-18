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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScoreableInterface (JObject)
  ())

(defun ScoreableInterface.jnew_0 ()
  (let ((this (make-instance 'ScoreableInterface)))
    this))

    
(unless (fboundp 'jm_getPoints_0) (defgeneric jm_getPoints_0 (this)))
(defmethod jm_getPoints_0 ((this ScoreableInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPoints")))

    
(unless (fboundp 'jm_addPoints_1) (defgeneric jm_addPoints_1 (this p1)))
(defmethod jm_addPoints_1 ((this ScoreableInterface) _points)
  (declare (ignorable this _points))
  (error (JR.newException "AbstractMethodError" "addPoints")))

    
(unless (fboundp 'jm_removePoints_1) (defgeneric jm_removePoints_1 (this p1)))
(defmethod jm_removePoints_1 ((this ScoreableInterface) _points)
  (declare (ignorable this _points))
  (error (JR.newException "AbstractMethodError" "removePoints")))



