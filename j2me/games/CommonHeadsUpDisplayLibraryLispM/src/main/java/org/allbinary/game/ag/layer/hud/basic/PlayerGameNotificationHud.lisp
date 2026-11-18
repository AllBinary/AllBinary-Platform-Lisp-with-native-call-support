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
;;;; package org.allbinary.game.ag.layer.hud.basic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlayerGameNotificationHud (GameNotificationHud)
  ((f_gameTickTimeDelayHelper :initform nil)
   (f_EMPTY_STRING :initform nil)
   (f_displayInfo :initform nil)
   (f_timeDelayHelper :initform nil)
   (f_circularIndexUtil :initform nil)
   (f_gameNotification :initform nil)
   (f_permanentGameNotification :initform nil)
   (f_setAndRemoveProcessor :initform nil)
   (f_nextUnremoveableProcessor :initform nil)
   (f_processor :initform nil)
   (f_PERMANENT_GAME_NOTIFICATION :initform nil)
   (f_lastString :initform nil)
   (f_string :initform nil)
   (f_point :initform nil)
   (f_width :initform 0)))

    
(defun PlayerGameNotificationHud.jnew_4 (_location _direction _bufferZone _basicColor)
  (declare (ignorable _location _direction _bufferZone _basicColor))
  (let ((this (make-instance 'PlayerGameNotificationHud)))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_displayInfo) (DisplayInfoSingleton.jm_getInstance_0))
    (setf (slot-value this 'f_timeDelayHelper) (TimeDelayHelper.jnew_1 0))
    
    (setf (slot-value this 'f_gameNotification) (GameNotification.jnew_0))
    (setf (slot-value this 'f_permanentGameNotification) (GameNotification.jnew_0))
    (setf (slot-value this 'f_setAndRemoveProcessor) (SetAndRemoveProcessor.jnew_1 this))
    (setf (slot-value this 'f_nextUnremoveableProcessor) (NextUnremoveableProcessor.jnew_1 this))
    (setf (slot-value this 'f_processor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_PERMANENT_GAME_NOTIFICATION) "Permanent Game Notification: ")
    (setf (slot-value this 'f_lastString) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_string) (slot-value this 'f_EMPTY_STRING))
    (setf (slot-value this 'f_point) (CustomGPoint.jstatic_NULL_CUSTOM_POINT))
    
  (let (_gameNotificationEventHandler)
  (declare (ignorable _gameNotificationEventHandler))
    (block jreturn
        nil
        (setf (slot-value this 'f_circularIndexUtil) (CircularIndexUtil.jm_createInstance_1 0))
        (setf _gameNotificationEventHandler (GameNotificationEventHandler.jm_getInstance_0))
        (jm_removeAllListeners_0 _gameNotificationEventHandler)
        (jm_addListenerInterface_1 _gameNotificationEventHandler this)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this PlayerGameNotificationHud) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _logUtil _commonStrings)
  (declare (ignorable _font _logUtil _commonStrings))
    (block jreturn
        (handler-case (progn
            (call-next-method this _graphics)
            (setf _font (jm_getFont_0 _graphics))
            (setf (slot-value this 'f_width) (jm_stringWidth_1 _font (slot-value this 'f_string)))
            (jm_process_0 (slot-value this 'f_processor))
            (setf (slot-value this 'f_processor) (Processor.jm_getInstance_0)))
            (error (_e) (declare (ignorable _e))
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_getPoint_2) (defgeneric jm_getPoint_2 (this p1 p2)))
(defmethod jm_getPoint_2 ((this PlayerGameNotificationHud) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_point) (CustomGPoint.jm_getInstance3_2 0 0))
        (jm_setX_1 (slot-value this 'f_point) _x)
        (jm_setY_1 (slot-value this 'f_point) _y)
        (return-from jreturn (slot-value this 'f_point)))))

    
(unless (fboundp 'jm_add_4) (defgeneric jm_add_4 (this p1 p2 p3 p4)))
(defmethod jm_add_4 ((this PlayerGameNotificationHud) _string _seconds _basicColor _permanent)
  (declare (ignorable this _string _seconds _basicColor _permanent))
  (let ()
    (block jreturn
        (if (jm_booleanValue_0 _permanent)
            (progn
            (if (not (eq (slot-value this 'f_lastString) _string))
                (progn
                (setf (slot-value this 'f_lastString) _string)
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_PERMANENT_GAME_NOTIFICATION)) _string)) this (slot-value (slot-value this 'f_commonStrings) 'f_ADD))))
            (jm_add_3 (slot-value this 'f_permanentGameNotification) _string _seconds _basicColor)
            (jm_setSize_1 (slot-value this 'f_circularIndexUtil) (jm_getSize_0 (slot-value this 'f_permanentGameNotification))))
            (progn
            (jm_add_3 (slot-value this 'f_gameNotification) _string _seconds _basicColor))))))

    
(unless (fboundp 'jm_processTick_0) (defgeneric jm_processTick_0 (this)))
(defmethod jm_processTick_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let (_gameAdState)
  (declare (ignorable _gameAdState))
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_timeDelayHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
            (progn
            (setf _gameAdState (jm_getCurrentInstance_0 (GameAdStateFactory.jm_getInstance_0)))
            (if (jm_isShowingAtLocation_1 _gameAdState (jm_getLocation_0 this))
                (progn
                (setf (slot-value this 'f_offsetY) (JR.i32 (- 54))))
                (progn
                (setf (slot-value this 'f_offsetY) 0)))
            (if (> (jm_getSize_0 (slot-value this 'f_gameNotification)) 0)
                (progn
                (jm_setAndRemove_0 this))
                (if (> (jm_getSize_0 (slot-value this 'f_permanentGameNotification)) 0)
                (progn
                (jm_setNextUnremoveable_0 this))
                (progn
                (setf (slot-value this 'f_string) (slot-value this 'f_EMPTY_STRING))))))))))

    
(unless (fboundp 'jm_setAndRemove_0) (defgeneric jm_setAndRemove_0 (this)))
(defmethod jm_setAndRemove_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_string) (jm_removeAt_1 (slot-value (slot-value this 'f_gameNotification) 'f_stringList) 0))
        (setf (slot-value this 'f_processor) (slot-value this 'f_setAndRemoveProcessor)))))

    
(unless (fboundp 'jm_setAndRemoveProcess_0) (defgeneric jm_setAndRemoveProcess_0 (this)))
(defmethod jm_setAndRemoveProcess_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let (_time _iTime)
  (declare (ignorable _time _iTime))
    (block jreturn
        (jm_setX_1 this (ash (JR.i32 (- (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_width))) (- (logand 1 31))))
        (jm_setX_1 (slot-value this 'f_point) (jm_getX_0 this))
        (jm_setY_1 (slot-value this 'f_point) (jm_getY_0 this))
        (setf _time (jm_removeAt_1 (slot-value (slot-value this 'f_gameNotification) 'f_timeList) 0))
        (setf _iTime (JR.i32 (* (jm_intValue_0 _time) 1000)))
        (if (= _iTime 0)
            (progn
            (setf _iTime 500)))
        (setf (slot-value (slot-value this 'f_timeDelayHelper) 'f_delay) _iTime)
        (jm_setBasicColorP_1 this (jm_removeAt_1 (slot-value (slot-value this 'f_gameNotification) 'f_colorList) 0)))))

    
(unless (fboundp 'jm_setNextUnremoveable_0) (defgeneric jm_setNextUnremoveable_0 (this)))
(defmethod jm_setNextUnremoveable_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (setf (slot-value this 'f_string) (aref (slot-value (slot-value (slot-value this 'f_permanentGameNotification) 'f_stringList) 'f_objectArray) _index))
        (setf (slot-value this 'f_processor) (slot-value this 'f_nextUnremoveableProcessor)))))

    
(unless (fboundp 'jm_setNextUnremoveableProcess_0) (defgeneric jm_setNextUnremoveableProcess_0 (this)))
(defmethod jm_setNextUnremoveableProcess_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let (_index _time)
  (declare (ignorable _index _time))
    (block jreturn
        (setf _index (jm_getIndex_0 (slot-value this 'f_circularIndexUtil)))
        (jm_setX_1 this (ash (JR.i32 (- (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (slot-value this 'f_width))) (- (logand 1 31))))
        (jm_setX_1 (slot-value this 'f_point) (jm_getX_0 this))
        (jm_setY_1 (slot-value this 'f_point) (jm_getY_0 this))
        (setf _time (aref (slot-value (slot-value (slot-value this 'f_permanentGameNotification) 'f_timeList) 'f_objectArray) _index))
        (setf (slot-value (slot-value this 'f_timeDelayHelper) 'f_delay) (JR.i32 (* (jm_intValue_0 _time) 1000)))
        (jm_setBasicColorP_1 this (aref (slot-value (slot-value (slot-value this 'f_permanentGameNotification) 'f_colorList) 'f_objectArray) _index))
        (jm_next_0 (slot-value this 'f_circularIndexUtil)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this PlayerGameNotificationHud))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_gameNotification))
        (jm_clear_0 (slot-value this 'f_permanentGameNotification)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this PlayerGameNotificationHud) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_paintString_2 this _graphics (slot-value this 'f_string)))))



