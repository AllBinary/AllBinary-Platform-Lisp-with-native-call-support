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

(defclass HighScoresInterface (JObject)
  ())

(defun HighScoresInterface.jnew_0 ()
  (let ((this (make-instance 'HighScoresInterface)))
    this))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this HighScoresInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getList")))

    
(unless (fboundp 'jm_addHighScore_1) (defgeneric jm_addHighScore_1 (this p1)))
(defmethod jm_addHighScore_1 ((this HighScoresInterface) _newHighScore)
  (declare (ignorable this _newHighScore))
  (error (JR.newException "AbstractMethodError" "addHighScore")))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this HighScoresInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getTotal")))

    
(unless (fboundp 'jm_isBestScore_1) (defgeneric jm_isBestScore_1 (this p1)))
(defmethod jm_isBestScore_1 ((this HighScoresInterface) _newHighScore)
  (declare (ignorable this _newHighScore))
  (error (JR.newException "AbstractMethodError" "isBestScore")))



