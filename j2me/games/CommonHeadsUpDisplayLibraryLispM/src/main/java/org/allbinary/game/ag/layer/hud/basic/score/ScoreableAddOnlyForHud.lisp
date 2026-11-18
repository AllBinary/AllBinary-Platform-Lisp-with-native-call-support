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
;;;; package org.allbinary.game.ag.layer.hud.basic.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScoreableAddOnlyForHud (Scoreable)
  ((f_scoreHudWidget :initform nil)))

    
(defun ScoreableAddOnlyForHud.jnew_1 (_scoreVectorGraphic)
  (declare (ignorable _scoreVectorGraphic))
  (let ((this (make-instance 'ScoreableAddOnlyForHud)))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_scoreHudWidget) _scoreVectorGraphic)
        (jm_set_1 (jm_getScoreHudWidget_0 this) 0)))
    this))

    
(unless (fboundp 'jm_removePoints_1) (defgeneric jm_removePoints_1 (this p1)))
(defmethod jm_removePoints_1 ((this ScoreableAddOnlyForHud) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addPoints_1) (defgeneric jm_addPoints_1 (this p1)))
(defmethod jm_addPoints_1 ((this ScoreableAddOnlyForHud) _points)
  (declare (ignorable this _points))
  (let ()
    (block jreturn
        (call-next-method this _points)
        (jm_add_1 (jm_getScoreHudWidget_0 this) _points))))

    
(unless (fboundp 'jm_getScoreHudWidget_0) (defgeneric jm_getScoreHudWidget_0 (this)))
(defmethod jm_getScoreHudWidget_0 ((this ScoreableAddOnlyForHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scoreHudWidget)))))



