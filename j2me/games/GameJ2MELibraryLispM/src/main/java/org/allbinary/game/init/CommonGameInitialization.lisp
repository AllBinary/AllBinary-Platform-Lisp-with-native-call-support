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
;;;; package org.allbinary.game.init

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommonGameInitialization (BaseGameInitialization)
  ((f_commonStrings :initform nil)))

    
(defun CommonGameInitialization.jnew_2 (_resourceInitializationArray _portion)
  (declare (ignorable _resourceInitializationArray _portion))
  (let ((this (make-instance 'CommonGameInitialization)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_3) (defgeneric jm_init_3 (this p1 p2 p3)))
(defmethod jm_init_3 ((this CommonGameInitialization) _abeClientInformation _commandListener _level)
  (declare (ignorable this _abeClientInformation _commandListener _level))
  (let (_resourceLoadingLevelFactory _progressCanvas)
  (declare (ignorable _resourceLoadingLevelFactory _progressCanvas))
    (block jreturn
        (call-next-method this _abeClientInformation _commandListener _level)
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (and (not (jm_isGameInitialized_0 this)) (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL))))
            (progn
            (jm_setGameInitialized_1 this t)
            (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (jm_init_0 (SmallIntegerSingletonFactory.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas 50 "Integers")
            (jm_init_0 (PointFactory.jm_getInstance_0))
            (jm_addNormalPortion_2 _progressCanvas 50 "Points")
            (AngleFactory.jm_getInstance_0)
            (jm_addNormalPortion_2 _progressCanvas 50 "Angles")
            (jm_initGame_0 this)
            (jm_init_0 (aref (slot-value this 'f_resourceInitializationArray) (slot-value this 'f_GAME_RESOURCES)))))
        (jm_resourceInitialization_1 this _level))))

    
(unless (fboundp 'jm_initGame_0) (defgeneric jm_initGame_0 (this)))
(defmethod jm_initGame_0 ((this CommonGameInitialization))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))



