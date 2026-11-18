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

(defclass Sounds (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_soundStrings :initform nil)
   (f_soundsFactoryInterface :initform nil)))

    
(defun Sounds.jnew_1 (_soundsFactoryInterface)
  (declare (ignorable _soundsFactoryInterface))
  (let ((this (make-instance 'Sounds)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_soundStrings) (SoundStrings.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_soundsFactoryInterface) _soundsFactoryInterface)))
    this))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this Sounds))
  (declare (ignorable this))
  (let (_commonLabels _progressCanvas _soundInterfaceArray _smallIntegerSingletonFactory _indexInteger _indexString _stringBuffer _soundInterface _i)
  (declare (ignorable _commonLabels _progressCanvas _soundInterfaceArray _smallIntegerSingletonFactory _indexInteger _indexString _stringBuffer _soundInterface _i))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
        (setf _commonLabels (CommonLabels.jm_getInstance_0))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_init_0 (slot-value this 'f_soundsFactoryInterface))
        (setf _soundInterfaceArray (jm_getSoundInterfaceArray_0 (slot-value this 'f_soundsFactoryInterface)))
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf _indexInteger nil)
        (setf _indexString nil)
        (setf _stringBuffer (StringMaker.jnew_0))
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i (length _soundInterfaceArray)) do
                (block jcontinue
            (setf _soundInterface (aref _soundInterfaceArray _i))
            (if (not (null _soundInterface))
                (progn
                (setf _indexInteger (jm_getAt_1 _smallIntegerSingletonFactory _i))
                (setf _indexString (jm_toString_0 _indexInteger))
                (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
                (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_INDEX_LABEL))
                (jm_append_1 _stringBuffer _indexString)
                (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_soundStrings) 'f_SOUND))
                (jm_append_1 _stringBuffer (JR.className _soundInterface))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
                (jm_init_0 _soundInterface)
                (jm_addNormalPortion_2 _progressCanvas 100 (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_soundStrings) 'f_INIT_SOUND)) _indexString))))))
                (setf _i (JR.i32 (+ _i 1))))))
        (jm_setInitialized_1 (slot-value this 'f_soundsFactoryInterface) t)
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_END) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))))

    
(unless (fboundp 'jm_stopAll_0) (defgeneric jm_stopAll_0 (this)))
(defmethod jm_stopAll_0 ((this Sounds))
  (declare (ignorable this))
  (let (_soundInterfaceArray _progressCanvas _player _index)
  (declare (ignorable _soundInterfaceArray _progressCanvas _player _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_soundStrings) 'f_STOP_ALL))
        (setf _soundInterfaceArray (jm_getSoundInterfaceArray_0 (slot-value this 'f_soundsFactoryInterface)))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (setf _player nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _soundInterfaceArray)) do
                (block jcontinue
            (if (not (null (aref _soundInterfaceArray _index)))
                (progn
                (setf _player (jm_getPlayerP_0 (aref _soundInterfaceArray _index)))
                (if (not (null _player))
                    (progn
                    (jm_stop_0 _player)
                    (jm_addPortion_3 _progressCanvas 100 (slot-value (slot-value this 'f_soundStrings) 'f_STOPPING_SOUND) _index))))))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_closeAll_0) (defgeneric jm_closeAll_0 (this)))
(defmethod jm_closeAll_0 ((this Sounds))
  (declare (ignorable this))
  (let (_soundInterfaceArray _progressCanvas _player _index)
  (declare (ignorable _soundInterfaceArray _progressCanvas _player _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_soundStrings) 'f_CLOSE_ALL))
        (setf _soundInterfaceArray (jm_getSoundInterfaceArray_0 (slot-value this 'f_soundsFactoryInterface)))
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (setf _player nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _soundInterfaceArray)) do
                (block jcontinue
            (if (not (null (aref _soundInterfaceArray _index)))
                (progn
                (setf _player (jm_getPlayerP_0 (aref _soundInterfaceArray _index)))
                (if (not (null _player))
                    (progn
                    (jm_close_0 _player)
                    (jm_addPortion_3 _progressCanvas 100 (slot-value (slot-value this 'f_soundStrings) 'f_CLOSING_SOUND) _index))))))
                (setf _index (JR.i32 (+ _index 1)))))))))



