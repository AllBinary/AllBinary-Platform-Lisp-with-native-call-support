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
;;;; package org.allbinary.game.paint.help

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicInputMappingHelpPaintable (HelpPaintable)
  ((f_gameInputMappingArray :initform nil)
   (f_NONE :initform nil)))

    
(defun BasicInputMappingHelpPaintable.jnew_2 (_gameInputMappingArray _basicColor)
  (declare (ignorable _gameInputMappingArray _basicColor))
  (let ((this (make-instance 'BasicInputMappingHelpPaintable)))
    
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_gameInputMappingArray) _gameInputMappingArray)
        (jm_update_2 this (slot-value this 'f_NONE) (slot-value this 'f_NONE))))
    this))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this BasicInputMappingHelpPaintable) _selectedGameKey _selectedInput)
  (declare (ignorable this _selectedGameKey _selectedInput))
  (let (_gameKeyMapping _EQUAL _stringMaker _size _keyInfo _gameInputMapping _gameKey _list _index)
  (declare (ignorable _gameKeyMapping _EQUAL _stringMaker _size _keyInfo _gameInputMapping _gameKey _list _index))
    (block jreturn
        (setf _gameKeyMapping (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0)))
        (setf _EQUAL " = ")
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _size (length (slot-value this 'f_gameInputMappingArray)))
        (setf _keyInfo (JR.newArray nil _size))
        (setf _gameInputMapping nil)
        (setf _gameKey nil)
        (setf _list nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameInputMapping (aref (slot-value this 'f_gameInputMappingArray) _index))
            (setf _gameKey (jm_getGameKey_0 _gameInputMapping))
            (setf _list (jm_getMappedInput_1 (jm_getInputMapping_0 _gameKeyMapping) _gameKey))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (setf (aref _keyInfo _index) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (jm_getName_0 _gameInputMapping)) _EQUAL) (jm_get_1 this _list)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_setInputInfoP_1 this _keyInfo))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this BasicInputMappingHelpPaintable) _keyList)
  (declare (ignorable this _keyList))
  (let (_commonSeps _stringBuffer _AND _key _size _index)
  (declare (ignorable _commonSeps _stringBuffer _AND _key _size _index))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _AND "and ")
        (setf _key nil)
        (setf _size (jm_size_0 _keyList))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _key (aref (slot-value _keyList 'f_objectArray) _index))
            (jm_append_1 _stringBuffer (jm_getName_0 _key))
            (if (< (JR.i32 (+ _index 1)) (jm_size_0 _keyList))
                (progn
                (if (= (jm_size_0 _keyList) 2)
                    (progn
                    (jm_append_1 (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE)) _AND))
                    (progn
                    (if (= (JR.i32 (+ _index 2)) (jm_size_0 _keyList))
                        (progn
                        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP))
                        (jm_append_1 _stringBuffer _AND))
                        (progn
                        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA_SEP)))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



