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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MultiKeyPressesAI (KeyPressesAI)
  ((f_toggleTimeHelper :initform nil)
   (f_gameTickTimeDelayHelper :initform nil)))

    
(defun MultiKeyPressesAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'MultiKeyPressesAI)))
    (setf (slot-value this 'f_toggleTimeHelper) (TimeDelayHelper.jnew_1 600))
    (setf (slot-value this 'f_gameTickTimeDelayHelper) (GameTickTimeDelayHelperFactory.jm_getInstance_0))
  (let ()
    (block jreturn
        nil
        (jm_update_0 this)))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this MultiKeyPressesAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this MultiKeyPressesAI))
  (declare (ignorable this))
  (let (_gameInput _keys _size _key _index)
  (declare (ignorable _gameInput _keys _size _key _index))
    (block jreturn
        (setf _gameInput (jm_getGameInput_0 this))
        (setf _keys (slot-value this 'f_keys))
        (setf _size (length _keys))
        (if (jm_isOn_0 this)
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _key (jm_intValue_0 (aref _keys _index)))
                (if (/= _key (JR.i32 (- 1)))
                    (progn
                    (jm_add_1 _gameInput (jm_getInstanceForKey_2 (slot-value this 'f_gameKeyEventFactory) this _key)))))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _key (jm_intValue_0 (aref _keys _index)))
                (if (/= _key (JR.i32 (- 1)))
                    (progn
                    (jm_addForRemoval_1 _gameInput (jm_getInstanceForKey_2 (slot-value this 'f_gameKeyEventFactory) this _key)))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))

    
(unless (fboundp 'jm_toggle_0) (defgeneric jm_toggle_0 (this)))
(defmethod jm_toggle_0 ((this MultiKeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_toggleTimeHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
            (progn
            (call-next-method this)
            (jm_update_0 this))))))

    
(unless (fboundp 'jm_disable_0) (defgeneric jm_disable_0 (this)))
(defmethod jm_disable_0 ((this MultiKeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_toggleTimeHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
            (progn
            (call-next-method this)
            (jm_update_0 this))))))

    
(unless (fboundp 'jm_enable_0) (defgeneric jm_enable_0 (this)))
(defmethod jm_enable_0 ((this MultiKeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isTime_1 (slot-value this 'f_toggleTimeHelper) (slot-value (slot-value this 'f_gameTickTimeDelayHelper) 'f_startTime))
            (progn
            (call-next-method this)
            (jm_update_0 this))))))



