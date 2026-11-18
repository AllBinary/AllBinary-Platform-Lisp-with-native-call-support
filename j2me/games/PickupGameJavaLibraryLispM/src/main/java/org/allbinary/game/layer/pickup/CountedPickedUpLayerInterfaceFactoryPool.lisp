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
;;;; package org.allbinary.game.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CountedPickedUpLayerInterfaceFactoryPool (JObject)
  ((f_list :initform nil)))

(defvar CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON :jnone)
(defun CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON ()
  (when (eq CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON :jnone) (setf CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON (CountedPickedUpLayerInterfaceFactoryPool.jnew_0)))
  CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON)
(defun (setf CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON) (value) (setf CountedPickedUpLayerInterfaceFactoryPool.jcell_SINGLETON value))

    
(defun CountedPickedUpLayerInterfaceFactoryPool.jnew_0 ()
  (let ((this (make-instance 'CountedPickedUpLayerInterfaceFactoryPool)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))))
    this))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this CountedPickedUpLayerInterfaceFactoryPool))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))

    
(defun CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON)))))

    
(defun CountedPickedUpLayerInterfaceFactoryPool.jm_init_0 ()
  (let ()
    (block jreturn
        (setf (CountedPickedUpLayerInterfaceFactoryPool.jstatic_SINGLETON) (CountedPickedUpLayerInterfaceFactoryPool.jnew_0)))))



