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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DemoGameBehavior (JObject)
  ((f_logUtil :initform nil)))

(defvar DemoGameBehavior.jcell_instance :jnone)
(defun DemoGameBehavior.jstatic_instance ()
  (when (eq DemoGameBehavior.jcell_instance :jnone) (setf DemoGameBehavior.jcell_instance (DemoGameBehavior.jnew_0)))
  DemoGameBehavior.jcell_instance)
(defun (setf DemoGameBehavior.jstatic_instance) (value) (setf DemoGameBehavior.jcell_instance value))

(defun DemoGameBehavior.jnew_0 ()
  (let ((this (make-instance 'DemoGameBehavior)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun DemoGameBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DemoGameBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this DemoGameBehavior))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pause_1) (defgeneric jm_pause_1 (this p1)))
(defmethod jm_pause_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_unPause_1) (defgeneric jm_unPause_1 (this p1)))
(defmethod jm_unPause_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateTouch_1) (defgeneric jm_updateTouch_1 (this p1)))
(defmethod jm_updateTouch_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateScreenButtonPaintable_1) (defgeneric jm_updateScreenButtonPaintable_1 (this p1)))
(defmethod jm_updateScreenButtonPaintable_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_setTouchPaintableP_1 _allBinaryGameCanvas (NullPaintable.jm_getInstance_0)))))

    
(unless (fboundp 'jm_setGameState_1) (defgeneric jm_setGameState_1 (this p1)))
(defmethod jm_setGameState_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_removeAllGameKeyInputListeners_1) (defgeneric jm_removeAllGameKeyInputListeners_1 (this p1)))
(defmethod jm_removeAllGameKeyInputListeners_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateEndGameProcessor_1) (defgeneric jm_updateEndGameProcessor_1 (this p1)))
(defmethod jm_updateEndGameProcessor_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_buildGame_1) (defgeneric jm_buildGame_1 (this p1)))
(defmethod jm_buildGame_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_run_1) (defgeneric jm_run_1 (this p1)))
(defmethod jm_run_1 ((this DemoGameBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (JR.toString (slot-value (GameTypeFactory.jm_getInstance_0) 'f_BOT)) this (slot-value _commonStrings 'f_RUN)))))

    
(unless (fboundp 'jm_setHighScore_6) (defgeneric jm_setHighScore_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_setHighScore_6 ((this DemoGameBehavior) _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast)
  (declare (ignorable this _abeClientInformation _allBinaryGameCanvas _name _score _autoSubmit _isLast))
  (let ()
    (block jreturn nil)))



