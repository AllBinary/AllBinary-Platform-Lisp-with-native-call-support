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
;;;; package org.allbinary.graphics.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DisplayInfoSingleton (JObject)
  ((f_logUtil :initform nil)
   (f_commonLabels :initform nil)
   (f_commonSeps :initform nil)
   (f_commonStrings :initform nil)
   (f_ORIENTATION :initform nil)
   (f_ADJUSTING_FOR_SCALING_IN_PORTRAIT :initform nil)
   (f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE :initform nil)
   (f_last :initform nil)
   (f_lastHalf :initform nil)
   (f_full :initform nil)
   (f_top :initform 0)
   (f_left :initform 0)
   (f_xOffset :initform 0)
   (f_yOffset :initform 0)
   (f_scaleLargestTo :initform 0.0f0)
   (f_WIDTH :initform 0)
   (f_HEIGHT :initform 0)
   (f_CUSTOM_WIDTH :initform 0)
   (f_CUSTOM_HEIGHT :initform 0)
   (f_scalableListener :initform nil)
   (f_displayRatio :initform 0.0f0)
   (f_ratio :initform 0.0f0)
   (f_SET_LAST_SIZE_METHOD_NAME :initform nil)
   (f_FULL_WIDTH :initform nil)
   (f_FULL_HEIGHT :initform nil)
   (f_LAST_WIDTH :initform nil)
   (f_LAST_HEIGHT :initform nil)
   (f_PORTRAIT :initform nil)
   (f_LANDSCAPE :initform nil)
   (f_displayChangeEvent :initform nil)
   (f_FIRE_METHOD_NAME :initform nil)
   (f_REASON :initform nil)
   (f_UPDATE_FROM_ORIENTATION_CHANGE :initform nil)
   (f_list :initform nil)
   (f_DISPLAY_INFO :initform nil)
   (f_FULL :initform nil)
   (f_LAST :initform nil)
   (f_LAST_HALF :initform nil)))

(defvar DisplayInfoSingleton.jcell_SINGLETON :jnone)
(defun DisplayInfoSingleton.jstatic_SINGLETON ()
  (when (eq DisplayInfoSingleton.jcell_SINGLETON :jnone) (setf DisplayInfoSingleton.jcell_SINGLETON (DisplayInfoSingleton.jnew_0)))
  DisplayInfoSingleton.jcell_SINGLETON)
(defun (setf DisplayInfoSingleton.jstatic_SINGLETON) (value) (setf DisplayInfoSingleton.jcell_SINGLETON value))

    
(defun DisplayInfoSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DisplayInfoSingleton.jstatic_SINGLETON)))))

    
(defun DisplayInfoSingleton.jnew_0 ()
  (let ((this (make-instance 'DisplayInfoSingleton)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonLabels) (CommonLabels.jm_getInstance_0))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_ORIENTATION) "ORIENTATION")
    (setf (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_PORTRAIT) "Adjusting for Scaling in portrait display ratio: ")
    (setf (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE) "Adjusting for Scaling in landscape display ratio: ")
    (setf (slot-value this 'f_last) (JR.newArray 0 4))
    (setf (slot-value this 'f_lastHalf) (JR.newArray 0 4))
    (setf (slot-value this 'f_full) (JR.newArray 0 4))
    
    
    
    
    
    (setf (slot-value this 'f_WIDTH) 0)
    (setf (slot-value this 'f_HEIGHT) 1)
    (setf (slot-value this 'f_CUSTOM_WIDTH) 2)
    (setf (slot-value this 'f_CUSTOM_HEIGHT) 3)
    (setf (slot-value this 'f_scalableListener) (BaseScalable.jnew_0))
    
    (setf (slot-value this 'f_ratio) 1.0f0)
    (setf (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME) "setLastSize")
    (setf (slot-value this 'f_FULL_WIDTH) " FullWidth: ")
    (setf (slot-value this 'f_FULL_HEIGHT) " FullHeight: ")
    (setf (slot-value this 'f_LAST_WIDTH) "LastWidth: ")
    (setf (slot-value this 'f_LAST_HEIGHT) " LastHeight: ")
    (setf (slot-value this 'f_PORTRAIT) "Portrait")
    (setf (slot-value this 'f_LANDSCAPE) "Landscape")
    (setf (slot-value this 'f_displayChangeEvent) (DisplayChangeEvent.jnew_1 this))
    (setf (slot-value this 'f_FIRE_METHOD_NAME) "fire")
    (setf (slot-value this 'f_REASON) "reason: ")
    (setf (slot-value this 'f_UPDATE_FROM_ORIENTATION_CHANGE) "Updating from Orientation Change ")
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_DISPLAY_INFO) "Display Info: ")
    (setf (slot-value this 'f_FULL) "full")
    (setf (slot-value this 'f_LAST) "last")
    (setf (slot-value this 'f_LAST_HALF) "lastHalf")
  (let (_size _index)
  (declare (ignorable _size _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_last)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_last) _index) 0)
            (setf (aref (slot-value this 'f_lastHalf) _index) 0)
            (setf (aref (slot-value this 'f_full) _index) 0))
                (setf _index (JR.i32 (+ _index 1))))))
        (if (AndroidUtil.jm_isAndroid_0)
            (progn
            (setf (slot-value this 'f_scaleLargestTo) 640.0f0))
            (progn
            (setf (slot-value this 'f_scaleLargestTo) 1080.0f0)))))
    this))

    
(unless (fboundp 'jm_getLastHalf_0) (defgeneric jm_getLastHalf_0 (this)))
(defmethod jm_getLastHalf_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lastHalf)))))

    
(unless (fboundp 'jm_getLast_0) (defgeneric jm_getLast_0 (this)))
(defmethod jm_getLast_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_last)))))

    
(unless (fboundp 'jm_getFull_0) (defgeneric jm_getFull_0 (this)))
(defmethod jm_getFull_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_full)))))

    
(unless (fboundp 'jm_getScaleLargestTo_0) (defgeneric jm_getScaleLargestTo_0 (this)))
(defmethod jm_getScaleLargestTo_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scaleLargestTo)))))

    
(unless (fboundp 'jm_setScaleLargestTo_1) (defgeneric jm_setScaleLargestTo_1 (this p1)))
(defmethod jm_setScaleLargestTo_1 ((this DisplayInfoSingleton) _scaleLargestTo)
  (declare (ignorable this _scaleLargestTo))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scaleLargestTo) (coerce _scaleLargestTo 'single-float)))))

    
(unless (fboundp 'jm_setLastSize_3) (defgeneric jm_setLastSize_3 (this p1 p2 p3)))
(defmethod jm_setLastSize_3 ((this DisplayInfoSingleton) _aLastWidth _aLastHeight _reason)
  (declare (ignorable this _aLastWidth _aLastHeight _reason))
  (let ()
    (block jreturn
        (if (or (/= (aref (slot-value this 'f_full) (slot-value this 'f_WIDTH)) _aLastWidth) (/= (aref (slot-value this 'f_full) (slot-value this 'f_HEIGHT)) _aLastHeight))
            (progn
            (jm_setLastSizeForce_3 this _aLastWidth _aLastHeight _reason))))))

    
(unless (fboundp 'jm_setLastSizeForce_3) (defgeneric jm_setLastSizeForce_3 (this p1 p2 p3)))
(defmethod jm_setLastSizeForce_3 ((this DisplayInfoSingleton) _aLastWidth _aLastHeight _reason)
  (declare (ignorable this _aLastWidth _aLastHeight _reason))
  (let (_stringMaker _aFullWidth _aFullHeight _operatingSystemInterface)
  (declare (ignorable _stringMaker _aFullWidth _aFullHeight _operatingSystemInterface))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) _reason)) this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME))
        (setf _aFullWidth _aLastWidth)
        (setf _aFullHeight _aLastHeight)
        (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 _stringMaker (slot-value this 'f_FULL_WIDTH)) _aFullWidth) (slot-value this 'f_FULL_HEIGHT)) _aFullHeight) (jm_toString_0 this))) this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME))
        (setf _operatingSystemInterface (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
        (if (jm_isOverScan_0 _operatingSystemInterface)
            (progn
            (setf _aLastWidth (JR.idiv (JR.i32 (* _aLastWidth (jm_getOverScanXPercent_0 _operatingSystemInterface))) 100))
            (setf _aLastHeight (JR.idiv (JR.i32 (* _aLastHeight (jm_getOverScanYPercent_0 _operatingSystemInterface))) 100))))
        (if (jm_isScalable_0 _operatingSystemInterface)
            (progn
            (if (jm_isPortraitWH_2 this _aLastWidth _aLastHeight)
                (progn
                (if (> (coerce _aLastHeight 'single-float) (slot-value this 'f_scaleLargestTo))
                    (progn
                    (setf (slot-value this 'f_displayRatio) (/ (slot-value this 'f_scaleLargestTo) (coerce _aLastHeight 'single-float)))
                    (setf (slot-value this 'f_ratio) (/ (coerce _aLastHeight 'single-float) (slot-value this 'f_scaleLargestTo)))
                    (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendfloat_1 (jm_append_1 _stringMaker (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)) (slot-value this 'f_displayRatio))) this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME))
                    (setf _aLastWidth (JR.d2i (* (coerce _aLastWidth 'single-float) (slot-value this 'f_displayRatio))))
                    (setf _aLastHeight (JR.d2i (* (coerce _aLastHeight 'single-float) (slot-value this 'f_displayRatio))))
                    (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))
                    (progn
                    (setf (slot-value this 'f_ratio) 1.0f0)
                    (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))))
                (progn
                (if (> (coerce _aLastWidth 'single-float) (slot-value this 'f_scaleLargestTo))
                    (progn
                    (setf (slot-value this 'f_displayRatio) (/ (slot-value this 'f_scaleLargestTo) (coerce _aLastWidth 'single-float)))
                    (setf (slot-value this 'f_ratio) (/ (coerce _aLastWidth 'single-float) (slot-value this 'f_scaleLargestTo)))
                    (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendfloat_1 (jm_append_1 _stringMaker (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)) (slot-value this 'f_displayRatio))) this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME))
                    (setf _aLastWidth (JR.d2i (* (coerce _aLastWidth 'single-float) (slot-value this 'f_displayRatio))))
                    (setf _aLastHeight (JR.d2i (* (coerce _aLastHeight 'single-float) (slot-value this 'f_displayRatio))))
                    (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))
                    (progn
                    (setf (slot-value this 'f_ratio) 1.0f0)
                    (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio))))))))
        (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 _stringMaker (slot-value this 'f_LAST_WIDTH)) _aLastWidth) (slot-value this 'f_LAST_HEIGHT)) _aLastHeight)) this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME))
        (setf (slot-value this 'f_xOffset) (JR.i32 (- _aFullWidth _aLastWidth)))
        (setf (slot-value this 'f_yOffset) (JR.i32 (- _aFullHeight _aLastHeight)))
        (setf (slot-value this 'f_left) (jm_getLeft_1 (slot-value this 'f_scalableListener) (slot-value this 'f_xOffset)))
        (setf (slot-value this 'f_top) (jm_getTop_1 (slot-value this 'f_scalableListener) (slot-value this 'f_yOffset)))
        (setf (aref (slot-value this 'f_full) (slot-value this 'f_WIDTH)) _aFullWidth)
        (setf (aref (slot-value this 'f_full) (slot-value this 'f_HEIGHT)) _aFullHeight)
        (setf (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) _aLastWidth)
        (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_WIDTH)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) (- (logand 1 31))))
        (setf (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)) _aLastHeight)
        (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_HEIGHT)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)) (- (logand 1 31))))
        (jm_setCustom_3 (SWTJOGLProcessor.jm_getInstance_0) _aLastWidth _aLastHeight (slot-value this 'f_ratio))
        (jm_add_1 this (slot-value this 'f_SET_LAST_SIZE_METHOD_NAME)))))

    
(unless (fboundp 'jm_isPortraitWH_2) (defgeneric jm_isPortraitWH_2 (this p1 p2)))
(defmethod jm_isPortraitWH_2 ((this DisplayInfoSingleton) _lastWidth _lastHeight)
  (declare (ignorable this _lastWidth _lastHeight))
  (let ()
    (block jreturn
        (if (> _lastHeight _lastWidth)
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_isPortrait_0) (defgeneric jm_isPortrait_0 (this)))
(defmethod jm_isPortrait_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isPortraitWH_2 this (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this DisplayInfoSingleton) _reason)
  (declare (ignorable this _reason))
  (let (_stringMaker)
  (declare (ignorable _stringMaker))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker (slot-value this 'f_REASON)) _reason)) this (slot-value this 'f_FIRE_METHOD_NAME))
        (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toStringAppend_1 this _stringMaker) this (slot-value this 'f_FIRE_METHOD_NAME))
        (jm_add_1 (slot-value this 'f_list) _reason))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (> (jm_size_0 (slot-value this 'f_list)) 0)
                (progn
                (jm_processForced_0 this)))
            (jm_clear_0 (slot-value this 'f_list)))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_FIRE_METHOD_NAME) _e))))))

    
(unless (fboundp 'jm_processForced_0) (defgeneric jm_processForced_0 (this)))
(defmethod jm_processForced_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let (_swtJOGLProcessor)
  (declare (ignorable _swtJOGLProcessor))
    (block jreturn
        (handler-case (progn
            (setf _swtJOGLProcessor (SWTJOGLProcessor.jm_getInstance_0))
            (jm_clear_0 _swtJOGLProcessor)
            (jm_fireEvent_1 (DisplayChangeEventHandler.jm_getInstance_0) (slot-value this 'f_displayChangeEvent))
            (jm_fireEvent_1 (LastDisplayChangeEventHandler.jm_getInstance_0) (slot-value this 'f_displayChangeEvent))
            (jm_onSurfaceChanged_0 _swtJOGLProcessor))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_putOE_4 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value this 'f_FIRE_METHOD_NAME) _e))))))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this DisplayInfoSingleton) _displayable _reason)
  (declare (ignorable this _displayable _reason))
  (let (_aLastWidth _aLastHeight _aFullWidth _aFullHeight _stringMaker _features _openGLFeatureFactory _operatingSystemInterface)
  (declare (ignorable _aLastWidth _aLastHeight _aFullWidth _aFullHeight _stringMaker _features _openGLFeatureFactory _operatingSystemInterface))
    (block jreturn
        (setf _aLastWidth (jm_getWidth_0 _displayable))
        (setf _aLastHeight (jm_getHeight_0 _displayable))
        (setf _aFullWidth _aLastWidth)
        (setf _aFullHeight _aLastHeight)
        (setf _stringMaker (StringMaker.jnew_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) _reason) (slot-value this 'f_LAST_WIDTH)) _aLastWidth) (slot-value this 'f_LAST_HEIGHT)) _aLastHeight) (slot-value (slot-value this 'f_commonSeps) 'f_SPACE)) (jm_toString_0 this))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
        (if (and (> _aLastWidth 0) (> _aLastHeight 0))
            (progn
            (setf _features (Features.jm_getInstance_0))
            (setf _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (if (or (or (not (jm_isDefault_1 _features (slot-value _openGLFeatureFactory 'f_OPENGL))) (/= (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) _aLastWidth)) (/= (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)) _aLastHeight))
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 _stringMaker (slot-value this 'f_UPDATE_FROM_ORIENTATION_CHANGE))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (setf _operatingSystemInterface (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
                (if (jm_isOverScan_0 _operatingSystemInterface)
                    (progn
                    (setf _aLastWidth (JR.idiv (JR.i32 (* _aLastWidth (jm_getOverScanXPercent_0 _operatingSystemInterface))) 100))
                    (setf _aLastHeight (JR.idiv (JR.i32 (* _aLastHeight (jm_getOverScanYPercent_0 _operatingSystemInterface))) 100))))
                (if (jm_isScalable_0 _operatingSystemInterface)
                    (progn
                    (if (jm_isPortraitWH_2 this _aLastWidth _aLastHeight)
                        (progn
                        (if (> (coerce _aLastHeight 'single-float) (slot-value this 'f_scaleLargestTo))
                            (progn
                            (setf (slot-value this 'f_displayRatio) (/ (slot-value this 'f_scaleLargestTo) (coerce _aLastHeight 'single-float)))
                            (setf (slot-value this 'f_ratio) (/ (coerce _aLastHeight 'single-float) (slot-value this 'f_scaleLargestTo)))
                            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendfloat_1 (jm_append_1 _stringMaker (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)) (slot-value this 'f_displayRatio))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                            (setf _aLastWidth (JR.d2i (* (coerce _aLastWidth 'single-float) (slot-value this 'f_displayRatio))))
                            (setf _aLastHeight (JR.d2i (* (coerce _aLastHeight 'single-float) (slot-value this 'f_displayRatio))))
                            (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))
                            (progn
                            (setf (slot-value this 'f_ratio) 1.0f0)
                            (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))))
                        (progn
                        (if (> (coerce _aLastWidth 'single-float) (slot-value this 'f_scaleLargestTo))
                            (progn
                            (setf (slot-value this 'f_displayRatio) (/ (slot-value this 'f_scaleLargestTo) (coerce _aLastWidth 'single-float)))
                            (setf (slot-value this 'f_ratio) (/ (coerce _aLastWidth 'single-float) (slot-value this 'f_scaleLargestTo)))
                            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendfloat_1 (jm_append_1 _stringMaker (slot-value this 'f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)) (slot-value this 'f_displayRatio))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                            (setf _aLastWidth (JR.d2i (* (coerce _aLastWidth 'single-float) (slot-value this 'f_displayRatio))))
                            (setf _aLastHeight (JR.d2i (* (coerce _aLastHeight 'single-float) (slot-value this 'f_displayRatio))))
                            (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio)))
                            (progn
                            (setf (slot-value this 'f_ratio) 1.0f0)
                            (jm_scale_1 (slot-value this 'f_scalableListener) (slot-value this 'f_ratio))))))))
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_appendint_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value this 'f_UPDATE_FROM_ORIENTATION_CHANGE)) (slot-value this 'f_LAST_WIDTH)) _aLastWidth) (slot-value this 'f_LAST_HEIGHT)) _aLastHeight)) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (setf (slot-value this 'f_xOffset) (JR.i32 (- _aFullWidth _aLastWidth)))
                (setf (slot-value this 'f_yOffset) (JR.i32 (- _aFullHeight _aLastHeight)))
                (setf (slot-value this 'f_left) (jm_getLeft_1 (slot-value this 'f_scalableListener) (slot-value this 'f_xOffset)))
                (setf (slot-value this 'f_top) (jm_getTop_1 (slot-value this 'f_scalableListener) (slot-value this 'f_yOffset)))
                (setf (aref (slot-value this 'f_full) (slot-value this 'f_WIDTH)) _aFullWidth)
                (setf (aref (slot-value this 'f_full) (slot-value this 'f_HEIGHT)) _aFullHeight)
                (setf (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) _aLastWidth)
                (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_WIDTH)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)) (- (logand 1 31))))
                (setf (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)) _aLastHeight)
                (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_HEIGHT)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)) (- (logand 1 31))))
                (jm_setCustom_3 (SWTJOGLProcessor.jm_getInstance_0) _aLastWidth _aLastHeight (slot-value this 'f_ratio))
                (jm_add_1 this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE)))))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (return-from jreturn (jm_toStringAppend_1 this _stringBuffer)))))

    
(unless (fboundp 'jm_toStringAppend_1) (defgeneric jm_toStringAppend_1 (this p1)))
(defmethod jm_toStringAppend_1 ((this DisplayInfoSingleton) _stringBuffer)
  (declare (ignorable this _stringBuffer))
  (let ()
    (block jreturn
        (jm_append_1 _stringBuffer (slot-value this 'f_DISPLAY_INFO))
        (jm_append_1 _stringBuffer (slot-value this 'f_FULL))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_full) (slot-value this 'f_WIDTH)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value this 'f_FULL))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_full) (slot-value this 'f_HEIGHT)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value this 'f_LAST))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value this 'f_LAST))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value this 'f_LAST_HALF))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_lastHalf) (slot-value this 'f_WIDTH)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value this 'f_LAST_HALF))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonLabels) 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (aref (slot-value this 'f_lastHalf) (slot-value this 'f_HEIGHT)))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))
        (jm_append_1 _stringBuffer (if (jm_isPortrait_0 this) (slot-value this 'f_PORTRAIT) (slot-value this 'f_LANDSCAPE)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getTop_0) (defgeneric jm_getTop_0 (this)))
(defmethod jm_getTop_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_top)))))

    
(unless (fboundp 'jm_getLeft_0) (defgeneric jm_getLeft_0 (this)))
(defmethod jm_getLeft_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_left)))))

    
(unless (fboundp 'jm_getLastWidth_0) (defgeneric jm_getLastWidth_0 (this)))
(defmethod jm_getLastWidth_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH))))))

    
(unless (fboundp 'jm_getLastHeight_0) (defgeneric jm_getLastHeight_0 (this)))
(defmethod jm_getLastHeight_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT))))))

    
(unless (fboundp 'jm_getLastHalfWidth_0) (defgeneric jm_getLastHalfWidth_0 (this)))
(defmethod jm_getLastHalfWidth_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_lastHalf) (slot-value this 'f_WIDTH))))))

    
(unless (fboundp 'jm_getLastHalfHeight_0) (defgeneric jm_getLastHalfHeight_0 (this)))
(defmethod jm_getLastHalfHeight_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_lastHalf) (slot-value this 'f_HEIGHT))))))

    
(unless (fboundp 'jm_getCustomLastWidth_0) (defgeneric jm_getCustomLastWidth_0 (this)))
(defmethod jm_getCustomLastWidth_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_WIDTH))))))

    
(unless (fboundp 'jm_getCustomLastHeight_0) (defgeneric jm_getCustomLastHeight_0 (this)))
(defmethod jm_getCustomLastHeight_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_HEIGHT))))))

    
(unless (fboundp 'jm_getRawLastWidth_0) (defgeneric jm_getRawLastWidth_0 (this)))
(defmethod jm_getRawLastWidth_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_WIDTH))))))

    
(unless (fboundp 'jm_getRawLastHeight_0) (defgeneric jm_getRawLastHeight_0 (this)))
(defmethod jm_getRawLastHeight_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value this 'f_last) (slot-value this 'f_HEIGHT))))))

    
(unless (fboundp 'jm_setCustom_2) (defgeneric jm_setCustom_2 (this p1 p2)))
(defmethod jm_setCustom_2 ((this DisplayInfoSingleton) _width _height)
  (declare (ignorable this _width _height))
  (let ()
    (block jreturn
        (setf (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_WIDTH)) _width)
        (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_CUSTOM_WIDTH)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_WIDTH)) (- (logand 1 31))))
        (setf (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_HEIGHT)) _height)
        (setf (aref (slot-value this 'f_lastHalf) (slot-value this 'f_CUSTOM_HEIGHT)) (ash (aref (slot-value this 'f_last) (slot-value this 'f_CUSTOM_HEIGHT)) (- (logand 1 31)))))))

    
(unless (fboundp 'jm_setScalableListener_1) (defgeneric jm_setScalableListener_1 (this p1)))
(defmethod jm_setScalableListener_1 ((this DisplayInfoSingleton) _scalableListener)
  (declare (ignorable this _scalableListener))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_scalableListener) _scalableListener))))

    
(unless (fboundp 'jm_getScalableListener_0) (defgeneric jm_getScalableListener_0 (this)))
(defmethod jm_getScalableListener_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scalableListener)))))

    
(unless (fboundp 'jm_getRatio_0) (defgeneric jm_getRatio_0 (this)))
(defmethod jm_getRatio_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_ratio)))))

    
(unless (fboundp 'jm_getDisplayRatio_0) (defgeneric jm_getDisplayRatio_0 (this)))
(defmethod jm_getDisplayRatio_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_displayRatio)))))

    
(unless (fboundp 'jm_setOffset_2) (defgeneric jm_setOffset_2 (this p1 p2)))
(defmethod jm_setOffset_2 ((this DisplayInfoSingleton) _left _top)
  (declare (ignorable this _left _top))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_left) _left))))

    
(unless (fboundp 'jm_getxOffset_0) (defgeneric jm_getxOffset_0 (this)))
(defmethod jm_getxOffset_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_xOffset)))))

    
(unless (fboundp 'jm_getyOffset_0) (defgeneric jm_getyOffset_0 (this)))
(defmethod jm_getyOffset_0 ((this DisplayInfoSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_yOffset)))))



