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

(defclass GameInput (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_gameKeyEventList :initform nil)
   (f_removalGameKeyEventList :initform nil)
   (f_isRemoveDuplicateKeyPresses :initform nil)))

    
(defun GameInput.jnew_2 (_gameKeyEventList _removalGameKeyEventList)
  (declare (ignorable _gameKeyEventList _removalGameKeyEventList))
  (let ((this (make-instance 'GameInput)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameKeyEventList) _gameKeyEventList)
        (setf (slot-value this 'f_removalGameKeyEventList) _removalGameKeyEventList)
        (setf (slot-value this 'f_isRemoveDuplicateKeyPresses) (jm_isFeature_1 (Features.jm_getInstance_0) (slot-value (InputFeatureFactory.jm_getInstance_0) 'f_REMOVE_DUPLICATE_KEY_PRESSES)))))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this GameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (if (and (slot-value this 'f_isRemoveDuplicateKeyPresses) (jm_contains_1 (slot-value this 'f_gameKeyEventList) _gameKeyEvent))
            (progn
            (return-from jreturn)))
        (if (not (null _gameKeyEvent))
            (progn
            (jm_add_1 (slot-value this 'f_gameKeyEventList) _gameKeyEvent))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Danger Passed Null GameKeyEvent" this (slot-value (slot-value this 'f_commonStrings) 'f_ADD)))))))

    
(unless (fboundp 'jm_addForRemoval_1) (defgeneric jm_addForRemoval_1 (this p1)))
(defmethod jm_addForRemoval_1 ((this GameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_removalGameKeyEventList) _gameKeyEvent))))

    
(unless (fboundp 'jm_isForRemoval_1) (defgeneric jm_isForRemoval_1 (this p1)))
(defmethod jm_isForRemoval_1 ((this GameInput) _gameKeyEvent)
  (declare (ignorable this _gameKeyEvent))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_removalGameKeyEventList) _gameKeyEvent)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this GameInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_gameKeyEventList)))))

    
(unless (fboundp 'jm_removeNonAIInputGameKeyEvents_0) (defgeneric jm_removeNonAIInputGameKeyEvents_0 (this)))
(defmethod jm_removeNonAIInputGameKeyEvents_0 ((this GameInput))
  (declare (ignorable this))
  (let (_list _gameKeyEvent _index)
  (declare (ignorable _list _gameKeyEvent _index))
    (block jreturn
        (setf _list (slot-value this 'f_gameKeyEventList))
        (setf _gameKeyEvent nil)
        (progn
            (setf _index (jm_size_0 _list))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _gameKeyEvent (aref (slot-value _list 'f_objectArray) _index))
            (if (not (eq (jm_getSourceId_0 _gameKeyEvent) 1))
                (progn
                (jm_removeAt_1 _list _index))))))))))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameInput))
  (declare (ignorable this))
  (let (_removeList _list _size _anyType _index2 _index)
  (declare (ignorable _removeList _list _size _anyType _index2 _index))
    (block jreturn
        (setf _removeList (slot-value this 'f_removalGameKeyEventList))
        (setf _list (slot-value this 'f_gameKeyEventList))
        (setf _size (jm_size_0 _removeList))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _anyType (aref (slot-value _removeList 'f_objectArray) _index))
            (progn
                (setf _index2 (jm_size_0 _list))
                (block jbreak (loop while (>= (setf _index2 (JR.i32 (- _index2 1))) 0) do
                    (block jcontinue
                (if (eq (aref (slot-value _list 'f_objectArray) _index2) _anyType)
                    (progn
                    (jm_removeAt_1 _list _index2))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_clear_0 _removeList))))

    
(unless (fboundp 'jm_getRemovalGameKeyEventList_0) (defgeneric jm_getRemovalGameKeyEventList_0 (this)))
(defmethod jm_getRemovalGameKeyEventList_0 ((this GameInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_removalGameKeyEventList)))))

    
(unless (fboundp 'jm_getGameKeyEventList_0) (defgeneric jm_getGameKeyEventList_0 (this)))
(defmethod jm_getGameKeyEventList_0 ((this GameInput))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKeyEventList)))))



