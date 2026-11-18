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

(defclass LayerManagerLoggingBase (JObject)
  ())

(defun LayerManagerLoggingBase.jnew_0 ()
  (let ((this (make-instance 'LayerManagerLoggingBase)))
    this))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this LayerManagerLoggingBase) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_appendAt_2) (defgeneric jm_appendAt_2 (this p1 p2)))
(defmethod jm_appendAt_2 ((this LayerManagerLoggingBase) _layerInterface _index)
  (declare (ignorable this _layerInterface _index))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this LayerManagerLoggingBase) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_removeResult_3) (defgeneric jm_removeResult_3 (this p1 p2 p3)))
(defmethod jm_removeResult_3 ((this LayerManagerLoggingBase) _layerManager _layerInterface _result)
  (declare (ignorable this _layerManager _layerInterface _result))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this LayerManagerLoggingBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



