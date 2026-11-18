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
;;;; package org.allbinary.graphics.canvas.transition.progress

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ProgressCanvas (RunnableCanvas)
  ((f_hasPainted :initform nil)
   (f_backgroundBasicColor :initform nil)
   (f_GAUGE_PAINTABLE :initform nil)
   (f_maxValue :initform 0.0f0)
   (f_gauge :initform nil)
   (f_TEXT :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_allbinaryMidlet :initform nil)
   (f_value :initform 0.0f0)
   (f_text :initform nil)
   (f_background :initform nil)
   (f_paintable :initform nil)
   (f_inProgress :initform nil)
   (f_IN_GAME_PROCESSOR :initform nil)
   (f_inGameProcessor :initform nil)
   (f_progressEndListener :initform nil)
   (f_backgroundLabel :initform nil)
   (f_START_BACKGROUND :initform nil)
   (f_ADD_PORTION :initform nil)
   (f_ADD_EARLY_PORTION :initform nil)))

    
(defun ProgressCanvas.jnew_3 (_title _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ProgressCanvas)))
    
    
    (setf (slot-value this 'f_GAUGE_PAINTABLE) (ProgressPaintable.jnew_1 this))
    (setf (slot-value this 'f_maxValue) 100.0f0)
    
    (setf (slot-value this 'f_TEXT) (slot-value (slot-value this 'f_commonStrings) 'f_LOADING))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_allbinaryMidlet) (AllBinaryMidlet.jm_getNullInstance_0))
    
    (setf (slot-value this 'f_text) (slot-value this 'f_TEXT))
    (setf (slot-value this 'f_background) t)
    (setf (slot-value this 'f_paintable) (slot-value this 'f_GAUGE_PAINTABLE))
    (setf (slot-value this 'f_inProgress) nil)
    (setf (slot-value this 'f_IN_GAME_PROCESSOR) (Processor.jnew_0))
    (setf (slot-value this 'f_inGameProcessor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_progressEndListener) (ProgressEndListener.jstatic_instance))
    (setf (slot-value this 'f_backgroundLabel) "Background AI Game Loading...")
    (setf (slot-value this 'f_START_BACKGROUND) "startBackground")
    (setf (slot-value this 'f_ADD_PORTION) "addPortion")
    (setf (slot-value this 'f_ADD_EARLY_PORTION) "addEarlyPortion")
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_backgroundBasicColor) _backgroundBasicColor)
        (setf (slot-value this 'f_gauge) (ABCustomGaugeItem.jnew_5 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.d2i (slot-value this 'f_maxValue)) 0 _backgroundBasicColor _foregroundBasicColor))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this ProgressCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (jm_setHeight_1 (slot-value this 'f_gauge) (JR.i32 (+ (jm_getHeight_0 _font) 2)))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this ProgressCanvas) _gameMidlet)
  (declare (ignorable this _gameMidlet))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allbinaryMidlet) _gameMidlet))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this ProgressCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initCommands_1) (defgeneric jm_initCommands_1 (this p1)))
(defmethod jm_initCommands_1 ((this ProgressCanvas) _cmdListener)
  (declare (ignorable this _cmdListener))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getMaxValue_0) (defgeneric jm_getMaxValue_0 (this)))
(defmethod jm_getMaxValue_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxValue)))))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_START_METHOD_NAME))
        (jm_setBackground_1 this t)
        (jm_setHeight_1 (slot-value this 'f_gauge) 30)
        (jm_setLabel_1 (slot-value this 'f_gauge) (slot-value (slot-value this 'f_commonStrings) 'f_PLEASE_WAIT))
        (jm_setText_1 this (slot-value this 'f_TEXT))
        (jm_setValue_1 this 0)
        (setf (slot-value this 'f_inGameProcessor) (Processor.jm_getInstance_0))
        (setf (slot-value this 'f_paintable) (slot-value this 'f_GAUGE_PAINTABLE))
        (setf (slot-value this 'f_inProgress) t))))

    
(unless (fboundp 'jm_startBackground_1) (defgeneric jm_startBackground_1 (this p1)))
(defmethod jm_startBackground_1 ((this ProgressCanvas) _background)
  (declare (ignorable this _background))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value this 'f_START_BACKGROUND))
        (jm_setBackground_1 this _background)
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
        (jm_setLabel_1 (slot-value this 'f_gauge) (slot-value this 'f_backgroundLabel))
        (jm_setText_1 this (slot-value this 'f_TEXT))
        (jm_setValue_1 this 0)
        (setf (slot-value this 'f_inGameProcessor) (Processor.jm_getInstance_0))
        (setf (slot-value this 'f_paintable) (slot-value this 'f_GAUGE_PAINTABLE)))))

    
(unless (fboundp 'jm_endActual_0) (defgeneric jm_endActual_0 (this)))
(defmethod jm_endActual_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_commandAction_2 (slot-value this 'f_allbinaryMidlet) (slot-value (GameCommandsFactory.jm_getInstance_0) 'f_SHOW_GAME_CANVAS) (NullCanvas.jstatic_NULL_CANVAS))
        (setf (slot-value this 'f_inProgress) nil)
        (jm_inGame_0 this))))

    
(unless (fboundp 'jm_inGame_0) (defgeneric jm_inGame_0 (this)))
(defmethod jm_inGame_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_onEndEvent_0 (slot-value this 'f_progressEndListener))
        (setf (slot-value this 'f_inGameProcessor) (slot-value this 'f_IN_GAME_PROCESSOR)))))

    
(unless (fboundp 'jm_end_0) (defgeneric jm_end_0 (this)))
(defmethod jm_end_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_END_METHOD_NAME))
        (jm_setValue_1 (slot-value this 'f_gauge) (jm_getMaxValue_0 this))
        (jm_endActual_0 this)
        (setf (slot-value this 'f_paintable) (NullPaintable.jm_getInstance_0)))))

    
(unless (fboundp 'jm_endFromInitialLazyLoadingComplete_0) (defgeneric jm_endFromInitialLazyLoadingComplete_0 (this)))
(defmethod jm_endFromInitialLazyLoadingComplete_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_onEndEvent_0 (slot-value this 'f_progressEndListener))
        (jm_setValue_1 (slot-value this 'f_gauge) (jm_getMaxValue_0 this))
        (setf (slot-value this 'f_inGameProcessor) (slot-value this 'f_IN_GAME_PROCESSOR)))))

    
(unless (fboundp 'jm_isInGame_0) (defgeneric jm_isInGame_0 (this)))
(defmethod jm_isInGame_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (eq (slot-value this 'f_inGameProcessor) (slot-value this 'f_IN_GAME_PROCESSOR))
            (progn
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_endIfPaintedSinceStart_0) (defgeneric jm_endIfPaintedSinceStart_0 (this)))
(defmethod jm_endIfPaintedSinceStart_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addEarlyPortion_3) (defgeneric jm_addEarlyPortion_3 (this p1 p2 p3)))
(defmethod jm_addEarlyPortion_3 ((this ProgressCanvas) _value _text _index)
  (declare (ignorable this _value _text _index))
  (let ()
    (block jreturn
        (jm_setText_1 this (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _text) (JR.toString (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) _index)))))
        (jm_setValue_1 (slot-value this 'f_gauge) (+ (jm_getValue_0 (slot-value this 'f_gauge)) (/ (jm_getMaxValue_0 this) (coerce _value 'single-float)))))))

    
(unless (fboundp 'jm_addPortion_3) (defgeneric jm_addPortion_3 (this p1 p2 p3)))
(defmethod jm_addPortion_3 ((this ProgressCanvas) _value _text _index)
  (declare (ignorable this _value _text _index))
  (let ()
    (block jreturn
        (jm_setText_1 this (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _text) (JR.toString (jm_getAt_1 (SmallIntegerSingletonFactory.jm_getInstance_0) _index)))))
        (PreLogUtil.jm_put_3 (slot-value this 'f_text) this (slot-value this 'f_ADD_PORTION))
        (jm_setValue_1 (slot-value this 'f_gauge) (+ (jm_getValue_0 (slot-value this 'f_gauge)) (/ (jm_getMaxValue_0 this) (coerce _value 'single-float)))))))

    
(unless (fboundp 'jm_addNormalPortion_2) (defgeneric jm_addNormalPortion_2 (this p1 p2)))
(defmethod jm_addNormalPortion_2 ((this ProgressCanvas) _value _text)
  (declare (ignorable this _value _text))
  (let ()
    (block jreturn
        (if (not (eq (slot-value this 'f_text) _text))
            (progn
            (PreLogUtil.jm_put_3 _text this (slot-value this 'f_ADD_PORTION))))
        (jm_setText_1 this _text)
        (jm_setValue_1 (slot-value this 'f_gauge) (+ (jm_getValue_0 (slot-value this 'f_gauge)) (/ (jm_getMaxValue_0 this) (coerce _value 'single-float)))))))

    
(unless (fboundp 'jm_setValue_1) (defgeneric jm_setValue_1 (this p1)))
(defmethod jm_setValue_1 ((this ProgressCanvas) _value)
  (declare (ignorable this _value))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_value) (coerce _value 'single-float))
        (jm_setValue_1 (slot-value this 'f_gauge) (coerce _value 'single-float)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ProgressCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_paintable) _graphics))))

    
(unless (fboundp 'jm_paint2_1) (defgeneric jm_paint2_1 (this p1)))
(defmethod jm_paint2_1 ((this ProgressCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (jm_setColor_1 _graphics (jm_intValue_0 (slot-value this 'f_backgroundBasicColor)))
        (jm_fillRect_4 _graphics 0 0 (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (jm_getLastHeight_0 (slot-value this 'f_displayInfo)))
        (jm_paintXY_3 (slot-value this 'f_gauge) _graphics 0 0)
        (setf (slot-value this 'f_hasPainted) t))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this ProgressCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getValue_0) (defgeneric jm_getValue_0 (this)))
(defmethod jm_getValue_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_value)))))

    
(unless (fboundp 'jm_setText_1) (defgeneric jm_setText_1 (this p1)))
(defmethod jm_setText_1 ((this ProgressCanvas) _text)
  (declare (ignorable this _text))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_text) _text))))

    
(unless (fboundp 'jm_getText_0) (defgeneric jm_getText_0 (this)))
(defmethod jm_getText_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_text)))))

    
(unless (fboundp 'jm_setBackground_1) (defgeneric jm_setBackground_1 (this p1)))
(defmethod jm_setBackground_1 ((this ProgressCanvas) _background)
  (declare (ignorable this _background))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_background) _background))))

    
(unless (fboundp 'jm_isBackground_0) (defgeneric jm_isBackground_0 (this)))
(defmethod jm_isBackground_0 ((this ProgressCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_background)))))



