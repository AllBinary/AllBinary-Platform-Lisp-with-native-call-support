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
;;;; package org.allbinary.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DirectionalAnalogLocationInputProcessor (AnalogLocationInputProcessor)
  ((f_logUtil :initform nil)
   (f_inputProcessorArray :initform nil)
   (f_gameKeyFactory :initform nil)
   (f_leftGameKeyEvent :initform nil)
   (f_rightGameKeyEvent :initform nil)
   (f_upGameKeyEvent :initform nil)
   (f_downGameKeyEvent :initform nil)
   (f_leftTriggerGameKeyEvent :initform nil)
   (f_rightTriggerGameKeyEvent :initform nil)))

    
(defun DirectionalAnalogLocationInputProcessor.jnew_1 (_inputProcessorArray)
  (declare (ignorable _inputProcessorArray))
  (let ((this (make-instance 'DirectionalAnalogLocationInputProcessor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_gameKeyFactory) (GameKeyFactory.jm_getInstance_0))
    (setf (slot-value this 'f_leftGameKeyEvent) (GameKeyEvent.jstatic_NONE))
    (setf (slot-value this 'f_rightGameKeyEvent) (GameKeyEvent.jstatic_NONE))
    (setf (slot-value this 'f_upGameKeyEvent) (GameKeyEvent.jstatic_NONE))
    (setf (slot-value this 'f_downGameKeyEvent) (GameKeyEvent.jstatic_NONE))
    (setf (slot-value this 'f_leftTriggerGameKeyEvent) (GameKeyEvent.jstatic_NONE))
    (setf (slot-value this 'f_rightTriggerGameKeyEvent) (GameKeyEvent.jstatic_NONE))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (setf (slot-value this 'f_inputProcessorArray) _inputProcessorArray)
        (handler-case (progn
            (setf (slot-value this 'f_leftGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEFT)))
            (setf (slot-value this 'f_rightGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_RIGHT)))
            (setf (slot-value this 'f_upGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_UP)))
            (setf (slot-value this 'f_downGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_DOWN)))
            (setf (slot-value this 'f_leftTriggerGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM0)))
            (setf (slot-value this 'f_rightTriggerGameKeyEvent) (jm_getInstanceForInput_2 (GameKeyEventFactory.jm_getInstance_0) this (slot-value (slot-value this 'f_gameKeyFactory) 'f_KEY_NUM5))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)))))
    this))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this DirectionalAnalogLocationInputProcessor) _allbinaryLayerManager _analogLocationInput)
  (declare (ignorable this _allbinaryLayerManager _analogLocationInput))
  (let (_customGPoint _x _y _leftTrigger _rightTrigger _commonStrings)
  (declare (ignorable _customGPoint _x _y _leftTrigger _rightTrigger _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _customGPoint nil)
            (setf _customGPoint (jm_getCustomGPoint_0 _analogLocationInput))
            (setf _x (jm_getX_0 _customGPoint))
            (setf _y (jm_getY_0 _customGPoint))
            (setf _leftTrigger (jm_getLeftTrigger_0 _analogLocationInput))
            (setf _rightTrigger (jm_getRightTrigger_0 _analogLocationInput))
            (if (< _x 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_leftGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_leftGameKeyEvent) _x))
                (if (> _x 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_rightGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_rightGameKeyEvent) _x))))
            (if (< _y 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_downGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_downGameKeyEvent) _y))
                (if (> _y 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_upGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_upGameKeyEvent) _y))))
            (if (> _leftTrigger 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_leftTriggerGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_leftTriggerGameKeyEvent) _leftTrigger)))
            (if (> _rightTrigger 0)
                (progn
                (jm_processAnalog_3 (aref (slot-value this 'f_inputProcessorArray) (jm_getKey_0 (slot-value this 'f_rightTriggerGameKeyEvent))) _allbinaryLayerManager (slot-value this 'f_rightTriggerGameKeyEvent) _rightTrigger))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) "Unable to process analog input" this (slot-value _commonStrings 'f_PROCESS) _e))))))

    
(unless (fboundp 'jm_getSourceId_0) (defgeneric jm_getSourceId_0 (this)))
(defmethod jm_getSourceId_0 ((this DirectionalAnalogLocationInputProcessor))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



