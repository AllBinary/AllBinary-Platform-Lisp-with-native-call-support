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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryLayerManager (LayerManager)
  ((f_layerManagerEventHandler :initform nil)
   (f_createLayerManagerEvent :initform nil)
   (f_deleteLayerManagerEvent :initform nil)
   (f_basicLayerProcessorArray :initform nil)))

    
(defun AllBinaryLayerManager.jnew_0 ()
  (let ((this (make-instance 'AllBinaryLayerManager)))
    (setf (slot-value this 'f_layerManagerEventHandler) (LayerManagerEventHandler.jm_getInstance_0))
    (setf (slot-value this 'f_createLayerManagerEvent) (LayerManagerEvent.jnew_2 this (slot-value (slot-value this 'f_layerManagerEventHandler) 'f_CREATE)))
    (setf (slot-value this 'f_deleteLayerManagerEvent) (LayerManagerEvent.jnew_2 this (slot-value (slot-value this 'f_layerManagerEventHandler) 'f_DELETE)))
    (setf (slot-value this 'f_basicLayerProcessorArray) (JR.newArray nil 0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getLayerProcessorArray_0) (defgeneric jm_getLayerProcessorArray_0 (this)))
(defmethod jm_getLayerProcessorArray_0 ((this AllBinaryLayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicLayerProcessorArray)))))

    
(unless (fboundp 'jm_setLayerProcessorArray_1) (defgeneric jm_setLayerProcessorArray_1 (this p1)))
(defmethod jm_setLayerProcessorArray_1 ((this AllBinaryLayerManager) _layerProcessorArray)
  (declare (ignorable this _layerProcessorArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicLayerProcessorArray) _layerProcessorArray))))

    
(unless (fboundp 'jm_log_0) (defgeneric jm_log_0 (this)))
(defmethod jm_log_0 ((this AllBinaryLayerManager))
  (declare (ignorable this))
  (let (_size _layerProcessorInterface _index)
  (declare (ignorable _size _layerProcessorInterface _index))
    (block jreturn
        (setf _size (length (slot-value this 'f_basicLayerProcessorArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerProcessorInterface (aref (slot-value this 'f_basicLayerProcessorArray) _index)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this AllBinaryLayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 this _layerInterface))
            (progn
            (jm_appendProcessors_1 this _layerInterface)
            (call-next-method this _layerInterface))))))

    
(unless (fboundp 'jm_appendAt_2) (defgeneric jm_appendAt_2 (this p1 p2)))
(defmethod jm_appendAt_2 ((this AllBinaryLayerManager) _layerInterface _index)
  (declare (ignorable this _layerInterface _index))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 this _layerInterface))
            (progn
            (jm_appendProcessors_1 this _layerInterface)
            (call-next-method this _layerInterface _index))))))

    
(unless (fboundp 'jm_appendProcessors_1) (defgeneric jm_appendProcessors_1 (this p1)))
(defmethod jm_appendProcessors_1 ((this AllBinaryLayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_layerProcessorInterface _index)
  (declare (ignorable _layerProcessorInterface _index))
    (block jreturn
        (jm_setLayerInterface_1 (slot-value this 'f_createLayerManagerEvent) _layerInterface)
        (jm_fireEvent_1 (slot-value this 'f_layerManagerEventHandler) (slot-value this 'f_createLayerManagerEvent))
        (setf _layerProcessorInterface nil)
        (progn
            (setf _index (length (slot-value this 'f_basicLayerProcessorArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _layerProcessorInterface (aref (slot-value this 'f_basicLayerProcessorArray) _index))
            (if (jm_isProcessorLayer_1 _layerProcessorInterface _layerInterface)
                (progn
                (jm_append_1 (jm_getLayerManager_0 _layerProcessorInterface) _layerInterface))))))))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this AllBinaryLayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_layerProcessorInterface _index)
  (declare (ignorable _layerProcessorInterface _index))
    (block jreturn
        (jm_setLayerInterface_1 (slot-value this 'f_deleteLayerManagerEvent) _layerInterface)
        (jm_fireDeleteEvent_1 (slot-value this 'f_layerManagerEventHandler) (slot-value this 'f_deleteLayerManagerEvent))
        (setf _layerProcessorInterface nil)
        (progn
            (setf _index (length (slot-value this 'f_basicLayerProcessorArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _layerProcessorInterface (aref (slot-value this 'f_basicLayerProcessorArray) _index))
            (jm_remove_1 (jm_getLayerManager_0 _layerProcessorInterface) _layerInterface)))))
        (call-next-method this _layerInterface))))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this AllBinaryLayerManager))
  (declare (ignorable this))
  (let (_layerProcessorInterface _size _index)
  (declare (ignorable _layerProcessorInterface _size _index))
    (block jreturn
        (setf _layerProcessorInterface nil)
        (setf _size (length (slot-value this 'f_basicLayerProcessorArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerProcessorInterface (aref (slot-value this 'f_basicLayerProcessorArray) _index))
            (jm_process_1 _layerProcessorInterface this))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_cleanup_0) (defgeneric jm_cleanup_0 (this)))
(defmethod jm_cleanup_0 ((this AllBinaryLayerManager))
  (declare (ignorable this))
  (let (_layerProcessorInterface _size _index)
  (declare (ignorable _layerProcessorInterface _size _index))
    (block jreturn
        (setf _layerProcessorInterface nil)
        (setf _size (length (slot-value this 'f_basicLayerProcessorArray)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerProcessorInterface (aref (slot-value this 'f_basicLayerProcessorArray) _index))
            (jm_cleanup_0 (jm_getLayerManager_0 _layerProcessorInterface)))
                (setf _index (JR.i32 (+ _index 1))))))
        (call-next-method this))))



