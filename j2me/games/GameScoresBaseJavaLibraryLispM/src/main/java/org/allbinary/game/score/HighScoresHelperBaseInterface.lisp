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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoresHelperBaseInterface (JObject)
  ())

(defun HighScoresHelperBaseInterface.jnew_0 ()
  (let ((this (make-instance 'HighScoresHelperBaseInterface)))
    this))

    
(unless (fboundp 'jm_setSelectedHighScores_1) (defgeneric jm_setSelectedHighScores_1 (this p1)))
(defmethod jm_setSelectedHighScores_1 ((this HighScoresHelperBaseInterface) _selectedHighScores)
  (declare (ignorable this _selectedHighScores))
  (error (JR.newException "AbstractMethodError" "setSelectedHighScores")))

    
(unless (fboundp 'jm_getHighScoresArray_0) (defgeneric jm_getHighScoresArray_0 (this)))
(defmethod jm_getHighScoresArray_0 ((this HighScoresHelperBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHighScoresArray")))

    
(unless (fboundp 'jm_getSelectedHighScores_0) (defgeneric jm_getSelectedHighScores_0 (this)))
(defmethod jm_getSelectedHighScores_0 ((this HighScoresHelperBaseInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getSelectedHighScores")))



