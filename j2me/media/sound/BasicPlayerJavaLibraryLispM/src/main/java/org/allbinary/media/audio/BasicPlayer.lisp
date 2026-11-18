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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;BasicPlayerJavaLibrary
(defclass BasicPlayer (JObject)
  ((f_commonStrings :initform nil)
   (f_listenersList :initform nil)
   (f_stateP :initform 0)
   (f_loopCountP :initform 0)))

(defvar BasicPlayer.jcell_CONTROL_TYPE :jnone)
(defun BasicPlayer.jstatic_CONTROL_TYPE ()
  (when (eq BasicPlayer.jcell_CONTROL_TYPE :jnone) (setf BasicPlayer.jcell_CONTROL_TYPE "ToneControl"))
  BasicPlayer.jcell_CONTROL_TYPE)
(defun (setf BasicPlayer.jstatic_CONTROL_TYPE) (value) (setf BasicPlayer.jcell_CONTROL_TYPE value))

    
(defun BasicPlayer.jnew_0 ()
  (let ((this (make-instance 'BasicPlayer)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_listenersList) (BasicArrayListD.jnew_0))
    
    
  (let ()
    (block jreturn
        (jm_setLoopCount_1 this 0)
        (jm_setState_1 this (Player.jstatic_UNREALIZED))))
    this))

    
(unless (fboundp 'jm_getContentType_0) (defgeneric jm_getContentType_0 (this)))
(defmethod jm_getContentType_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_getControl_1) (defgeneric jm_getControl_1 (this p1)))
(defmethod jm_getControl_1 ((this BasicPlayer) _controlType)
  (declare (ignorable this _controlType))
  (let ()
    (block jreturn
        (return-from jreturn (NullControl.jnew_0)))))

    
(unless (fboundp 'jm_getControls_0) (defgeneric jm_getControls_0 (this)))
(defmethod jm_getControls_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.newArray nil 0)))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addPlayerListener_1) (defgeneric jm_addPlayerListener_1 (this p1)))
(defmethod jm_addPlayerListener_1 ((this BasicPlayer) _playerListener)
  (declare (ignorable this _playerListener))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_listenersList) _playerListener))
            (progn
            (jm_add_1 (slot-value this 'f_listenersList) _playerListener))))))

    
(unless (fboundp 'jm_removePlayerListener_1) (defgeneric jm_removePlayerListener_1 (this p1)))
(defmethod jm_removePlayerListener_1 ((this BasicPlayer) _playerListener)
  (declare (ignorable this _playerListener))
  (let ()
    (block jreturn
        (jm_remove_1 (slot-value this 'f_listenersList) _playerListener))))

    
(unless (fboundp 'jm_getState_0) (defgeneric jm_getState_0 (this)))
(defmethod jm_getState_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_stateP)))))

    
(unless (fboundp 'jm_setState_1) (defgeneric jm_setState_1 (this p1)))
(defmethod jm_setState_1 ((this BasicPlayer) _state)
  (declare (ignorable this _state))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_stateP) _state))))

    
(unless (fboundp 'jm_getDuration_0) (defgeneric jm_getDuration_0 (this)))
(defmethod jm_getDuration_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getMediaTime_0) (defgeneric jm_getMediaTime_0 (this)))
(defmethod jm_getMediaTime_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_deallocate_0) (defgeneric jm_deallocate_0 (this)))
(defmethod jm_deallocate_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_prefetch_0) (defgeneric jm_prefetch_0 (this)))
(defmethod jm_prefetch_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_realize_0) (defgeneric jm_realize_0 (this)))
(defmethod jm_realize_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setLoopCount_1) (defgeneric jm_setLoopCount_1 (this p1)))
(defmethod jm_setLoopCount_1 ((this BasicPlayer) _count)
  (declare (ignorable this _count))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_loopCountP) _count))))

    
(unless (fboundp 'jm_getLoopCount_0) (defgeneric jm_getLoopCount_0 (this)))
(defmethod jm_getLoopCount_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_loopCountP)))))

    
(unless (fboundp 'jm_setMediaTime_1) (defgeneric jm_setMediaTime_1 (this p1)))
(defmethod jm_setMediaTime_1 ((this BasicPlayer) _now)
  (declare (ignorable this _now))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setState_1 this (Player.jstatic_STARTED)))))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this BasicPlayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setState_1 this (Player.jstatic_PREFETCHED)))))

    
(unless (fboundp 'jm_setVolume_2) (defgeneric jm_setVolume_2 (this p1 p2)))
(defmethod jm_setVolume_2 ((this BasicPlayer) _leftVolume _rightVolume)
  (declare (ignorable this _leftVolume _rightVolume))
  (let ()
    (block jreturn nil)))



