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

;BasicPlayerMIDP2
(defclass PlayerComposite (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_player :initform nil)
   (f_timeElapsedHelper :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)))

    
(defun PlayerComposite.jnew_2 (_player _repeatTime)
  (declare (ignorable _player _repeatTime))
  (let ((this (make-instance 'PlayerComposite)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    (setf (slot-value this 'f_timeElapsedHelper) (TimeDelayHelper.jnew_1 0))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_player) _player)
        (setf (slot-value (slot-value this 'f_timeElapsedHelper) 'f_delay) _repeatTime)))
    this))

    
(unless (fboundp 'jm_addPlayerListener_1) (defgeneric jm_addPlayerListener_1 (this p1)))
(defmethod jm_addPlayerListener_1 ((this PlayerComposite) _playerListener)
  (declare (ignorable this _playerListener))
  (let ()
    (block jreturn
        (jm_addPlayerListener_1 (slot-value this 'f_player) _playerListener))))

    
(unless (fboundp 'jm_removePlayerListener_1) (defgeneric jm_removePlayerListener_1 (this p1)))
(defmethod jm_removePlayerListener_1 ((this PlayerComposite) _playerListener)
  (declare (ignorable this _playerListener))
  (let ()
    (block jreturn
        (jm_removePlayerListener_1 (slot-value this 'f_player) _playerListener))))

    
(unless (fboundp 'jm_close_0) (defgeneric jm_close_0 (this)))
(defmethod jm_close_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_close_0 (slot-value this 'f_player)))))

    
(unless (fboundp 'jm_deallocate_0) (defgeneric jm_deallocate_0 (this)))
(defmethod jm_deallocate_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_deallocate_0 (slot-value this 'f_player)))))

    
(unless (fboundp 'jm_getContentType_0) (defgeneric jm_getContentType_0 (this)))
(defmethod jm_getContentType_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getContentType_0 (slot-value this 'f_player))))))

    
(unless (fboundp 'jm_getDuration_0) (defgeneric jm_getDuration_0 (this)))
(defmethod jm_getDuration_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getDuration_0 (slot-value this 'f_player))))))

    
(unless (fboundp 'jm_getMediaTime_0) (defgeneric jm_getMediaTime_0 (this)))
(defmethod jm_getMediaTime_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getMediaTime_0 (slot-value this 'f_player))))))

    
(unless (fboundp 'jm_getTimeBase_0) (defgeneric jm_getTimeBase_0 (this)))
(defmethod jm_getTimeBase_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getTimeBase_0 (slot-value this 'f_player))))))

    
(unless (fboundp 'jm_setTimeBase_1) (defgeneric jm_setTimeBase_1 (this p1)))
(defmethod jm_setTimeBase_1 ((this PlayerComposite) _timeBase)
  (declare (ignorable this _timeBase))
  (let ()
    (block jreturn
        (jm_setTimeBase_1 (slot-value this 'f_player) _timeBase))))

    
(unless (fboundp 'jm_prefetch_0) (defgeneric jm_prefetch_0 (this)))
(defmethod jm_prefetch_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_prefetch_0 (slot-value this 'f_player)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "prefetch" _e))))))

    
(unless (fboundp 'jm_realize_0) (defgeneric jm_realize_0 (this)))
(defmethod jm_realize_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_realize_0 (slot-value this 'f_player)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "realize" _e))))))

    
(unless (fboundp 'jm_getState_0) (defgeneric jm_getState_0 (this)))
(defmethod jm_getState_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getState_0 (slot-value this 'f_player))))))

    
(unless (fboundp 'jm_setLoopCount_1) (defgeneric jm_setLoopCount_1 (this p1)))
(defmethod jm_setLoopCount_1 ((this PlayerComposite) _count)
  (declare (ignorable this _count))
  (let ()
    (block jreturn
        (jm_setLoopCount_1 (slot-value this 'f_player) _count))))

    
(unless (fboundp 'jm_setMediaTime_1) (defgeneric jm_setMediaTime_1 (this p1)))
(defmethod jm_setMediaTime_1 ((this PlayerComposite) _now)
  (declare (ignorable this _now))
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (jm_setMediaTime_1 (slot-value this 'f_player) _now)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "setMediaTime" _e)
            (return-from jreturn (JR.i32 (- 1))))))))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (jm_isTime_1 (slot-value this 'f_timeElapsedHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
                (progn
                (jm_start_0 (slot-value this 'f_player)))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_START_METHOD_NAME) _e))))))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (jm_stop_0 (slot-value this 'f_player)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this "stop" _e))))))

    
(unless (fboundp 'jm_getControl_1) (defgeneric jm_getControl_1 (this p1)))
(defmethod jm_getControl_1 ((this PlayerComposite) _controlType)
  (declare (ignorable this _controlType))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getControl_1 (slot-value this 'f_player) _controlType)))))

    
(unless (fboundp 'jm_getControls_0) (defgeneric jm_getControls_0 (this)))
(defmethod jm_getControls_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_setVolume_2) (defgeneric jm_setVolume_2 (this p1 p2)))
(defmethod jm_setVolume_2 ((this PlayerComposite) _leftVolume _rightVolume)
  (declare (ignorable this _leftVolume _rightVolume))
  (let (_controllable2)
  (declare (ignorable _controllable2))
    (block jreturn
        (setf _controllable2 (slot-value this 'f_player))
        (jm_setVolume_2 _controllable2 _leftVolume _rightVolume))))

    
(unless (fboundp 'jm_getPlayerP_0) (defgeneric jm_getPlayerP_0 (this)))
(defmethod jm_getPlayerP_0 ((this PlayerComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_player)))))



