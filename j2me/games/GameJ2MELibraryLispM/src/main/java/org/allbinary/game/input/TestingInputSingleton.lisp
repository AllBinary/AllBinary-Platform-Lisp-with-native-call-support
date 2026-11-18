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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TestingInputSingleton (AllBinaryGameLayer)
  ((f_inputProcessorArray :initform nil)
   (f_testInputPaintable :initform nil)))

(defvar TestingInputSingleton.jcell_instance :jnone)
(defun TestingInputSingleton.jstatic_instance ()
  (when (eq TestingInputSingleton.jcell_instance :jnone) (setf TestingInputSingleton.jcell_instance (TestingInputSingleton.jnew_0)))
  TestingInputSingleton.jcell_instance)
(defun (setf TestingInputSingleton.jstatic_instance) (value) (setf TestingInputSingleton.jcell_instance value))

    
(defun TestingInputSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TestingInputSingleton.jstatic_instance)))))

    
(defun TestingInputSingleton.jnew_0 ()
  (let ((this (make-instance 'TestingInputSingleton)))
    (setf (slot-value this 'f_inputProcessorArray) (JR.newArray nil (slot-value (InputFactory.jm_getInstance_0) 'f_MAX)))
    (setf (slot-value this 'f_testInputPaintable) (NullPaintable.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (GameInputProcessorUtil.jm_init_1 (slot-value this 'f_inputProcessorArray))))
    this))

    
(unless (fboundp 'jm_initInputProcessors_0) (defgeneric jm_initInputProcessors_0 (this)))
(defmethod jm_initInputProcessors_0 ((this TestingInputSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initInputProcessorsForTestInput_1) (defgeneric jm_initInputProcessorsForTestInput_1 (this p1)))
(defmethod jm_initInputProcessorsForTestInput_1 ((this TestingInputSingleton) _aTestInputInterface)
  (declare (ignorable this _aTestInputInterface))
  (let (_testInputInterface)
  (declare (ignorable _testInputInterface))
    (block jreturn
        (setf _testInputInterface _aTestInputInterface)
        (setf (slot-value this 'f_testInputPaintable) _testInputInterface)
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_UP)) (GameInputProcessor.jnew_0))
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_DOWN)) (GameInputProcessor.jnew_0))
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_LEFT)) (GameInputProcessor.jnew_0))
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_RIGHT)) (GameInputProcessor.jnew_0))
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_KEY_NUM7)) (GameInputProcessor.jnew_0))
        (setf (aref (slot-value this 'f_inputProcessorArray) (Canvas.jstatic_KEY_NUM9)) (GameInputProcessor.jnew_0))
        (GameInputProcessorUtil.jm_init_1 (slot-value this 'f_inputProcessorArray)))))

    
(unless (fboundp 'jm_processInputList_2) (defgeneric jm_processInputList_2 (this p1 p2)))
(defmethod jm_processInputList_2 ((this TestingInputSingleton) _allbinaryLayerManager _list)
  (declare (ignorable this _allbinaryLayerManager _list))
  (let (_key _gameKeyEvent _size _index)
  (declare (ignorable _key _gameKeyEvent _size _index))
    (block jreturn
        (setf _key 0)
        (setf _gameKeyEvent nil)
        (setf _size (jm_size_0 _list))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameKeyEvent (aref (slot-value _list 'f_objectArray) _index))
            (setf _key (jm_getKey_0 _gameKeyEvent))
            (jm_processEvent_2 (aref (slot-value this 'f_inputProcessorArray) _key) _allbinaryLayerManager (GameKeyEvent.jstatic_NONE)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this TestingInputSingleton) _allbinaryLayerManager)
  (declare (ignorable this _allbinaryLayerManager))
  (let ()
    (block jreturn
        (jm_processInputList_2 this _allbinaryLayerManager (jm_getGameKeyEventList_0 this))
        (jm_clear_0 (jm_getGameKeyEventList_0 this)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this TestingInputSingleton) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_testInputPaintable) _graphics))))

    
(unless (fboundp 'jm_implmentsGameInputInterface_0) (defgeneric jm_implmentsGameInputInterface_0 (this)))
(defmethod jm_implmentsGameInputInterface_0 ((this TestingInputSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))



