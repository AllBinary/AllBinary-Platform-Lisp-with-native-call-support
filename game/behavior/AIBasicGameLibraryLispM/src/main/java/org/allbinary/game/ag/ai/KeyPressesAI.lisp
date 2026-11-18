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

(defclass KeyPressesAI (BasicAI)
  ((f_on :initform nil)
   (f_keys :initform nil)))

    
(defun KeyPressesAI.jnew_3 (_hashtable _ownerLayerInterface _gameInput)
  (declare (ignorable _hashtable _ownerLayerInterface _gameInput))
  (let ((this (make-instance 'KeyPressesAI)))
    (setf (slot-value this 'f_on) t)
    
  (let (_objectArray _size _index)
  (declare (ignorable _objectArray _size _index))
    (block jreturn
        nil
        (setf (slot-value this 'f_keys) (JR.newArray nil (jm_size_0 _hashtable)))
        (setf _objectArray (jm_getKeysAsArray_1 (HashtableUtil.jm_getInstance_0) _hashtable))
        (setf _size (length _objectArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf (aref (slot-value this 'f_keys) _index) (jm_get_1 _hashtable (aref _objectArray _index))))
                (setf _index (JR.i32 (+ _index 1))))))))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this KeyPressesAI) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (slot-value this 'f_on)
            (progn
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index (length (slot-value this 'f_keys))) do
                    (block jcontinue
                (jm_processKeyAI_1 this (jm_intValue_0 (aref (slot-value this 'f_keys) _index))))
                    (setf _index (JR.i32 (+ _index 1)))))))))))

    
(unless (fboundp 'jm_toggle_0) (defgeneric jm_toggle_0 (this)))
(defmethod jm_toggle_0 ((this KeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (jm_isOn_0 this)
            (progn
            (jm_setOn_1 this nil))
            (progn
            (jm_setOn_1 this t))))))

    
(unless (fboundp 'jm_disable_0) (defgeneric jm_disable_0 (this)))
(defmethod jm_disable_0 ((this KeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setOn_1 this nil))))

    
(unless (fboundp 'jm_enable_0) (defgeneric jm_enable_0 (this)))
(defmethod jm_enable_0 ((this KeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setOn_1 this t))))

    
(unless (fboundp 'jm_setOn_1) (defgeneric jm_setOn_1 (this p1)))
(defmethod jm_setOn_1 ((this KeyPressesAI) _on)
  (declare (ignorable this _on))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_on) _on))))

    
(unless (fboundp 'jm_isOn_0) (defgeneric jm_isOn_0 (this)))
(defmethod jm_isOn_0 ((this KeyPressesAI))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_on)))))



