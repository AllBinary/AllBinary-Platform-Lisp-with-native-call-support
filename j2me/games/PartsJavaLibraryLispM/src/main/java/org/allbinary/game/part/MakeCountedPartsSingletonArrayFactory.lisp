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
;;;; package org.allbinary.game.part

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MakeCountedPartsSingletonArrayFactory (JObject)
  ((f_logUtil :initform nil)
   (f_list :initform nil)))

(defvar MakeCountedPartsSingletonArrayFactory.jcell_instance :jnone)
(defun MakeCountedPartsSingletonArrayFactory.jstatic_instance ()
  (when (eq MakeCountedPartsSingletonArrayFactory.jcell_instance :jnone) (setf MakeCountedPartsSingletonArrayFactory.jcell_instance (MakeCountedPartsSingletonArrayFactory.jnew_0)))
  MakeCountedPartsSingletonArrayFactory.jcell_instance)
(defun (setf MakeCountedPartsSingletonArrayFactory.jstatic_instance) (value) (setf MakeCountedPartsSingletonArrayFactory.jcell_instance value))

(defun MakeCountedPartsSingletonArrayFactory.jnew_0 ()
  (let ((this (make-instance 'MakeCountedPartsSingletonArrayFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    this))

    
(defun MakeCountedPartsSingletonArrayFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MakeCountedPartsSingletonArrayFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getUpdated_1) (defgeneric jm_getUpdated_1 (this p1)))
(defmethod jm_getUpdated_1 ((this MakeCountedPartsSingletonArrayFactory) _partInterfaceArray)
  (declare (ignorable this _partInterfaceArray))
  (let (_index _countedBasicArrayList _layerInterfaceFactoryInterface _size _stringBuffer _commonStrings _newPartInterfaceArray _newSize)
  (declare (ignorable _index _countedBasicArrayList _layerInterfaceFactoryInterface _size _stringBuffer _commonStrings _newPartInterfaceArray _newSize))
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length _partInterfaceArray)) do
                (block jcontinue
            (jm_add_1 (slot-value this 'f_list) (aref _partInterfaceArray _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _countedBasicArrayList (jm_getList_0 (CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0)))
        (setf _layerInterfaceFactoryInterface nil)
        (setf _size (jm_size_0 _countedBasicArrayList))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerInterfaceFactoryInterface (aref (slot-value _countedBasicArrayList 'f_objectArray) _index))
            (jm_add_1 (slot-value this 'f_list) (CountedLayerInterfaceFactoryPart.jnew_2 0 _layerInterfaceFactoryInterface)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "Total Parts: ")
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_list)))
        (jm_append_1 _stringBuffer " Counted: ")
        (jm_appendint_1 _stringBuffer (jm_size_0 _countedBasicArrayList))
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (slot-value _commonStrings 'f_GET_INSTANCE))
        (setf _newPartInterfaceArray (JR.newArray nil (jm_size_0 (slot-value this 'f_list))))
        (setf _newSize (length _newPartInterfaceArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _newSize) do
                (block jcontinue
            (setf (aref _newPartInterfaceArray _index) (jm_get_1 (slot-value this 'f_list) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _newPartInterfaceArray))))



