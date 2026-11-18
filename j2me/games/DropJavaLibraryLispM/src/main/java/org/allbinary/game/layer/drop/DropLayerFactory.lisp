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
;;;; package org.allbinary.game.layer.drop

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DropLayerFactory (JObject)
  ((f_list :initform nil)
   (f_basicArrayListUtil :initform nil)))

(defvar DropLayerFactory.jcell_DROP_LAYER_FACTORY :jnone)
(defun DropLayerFactory.jstatic_DROP_LAYER_FACTORY ()
  (when (eq DropLayerFactory.jcell_DROP_LAYER_FACTORY :jnone) (setf DropLayerFactory.jcell_DROP_LAYER_FACTORY (DropLayerFactory.jnew_0)))
  DropLayerFactory.jcell_DROP_LAYER_FACTORY)
(defun (setf DropLayerFactory.jstatic_DROP_LAYER_FACTORY) (value) (setf DropLayerFactory.jcell_DROP_LAYER_FACTORY value))

    
(defun DropLayerFactory.jnew_0 ()
  (let ((this (make-instance 'DropLayerFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this DropLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_clear_0 (slot-value this 'f_list)))))

    
(defun DropLayerFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (DropLayerFactory.jstatic_DROP_LAYER_FACTORY)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this DropLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_getRandomInstance_0) (defgeneric jm_getRandomInstance_0 (this)))
(defmethod jm_getRandomInstance_0 ((this DropLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRandom_1 (slot-value this 'f_basicArrayListUtil) (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this DropLayerFactory) _layerInterfaceFactoryInterface)
  (declare (ignorable this _layerInterfaceFactoryInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _layerInterfaceFactoryInterface))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this DropLayerFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



