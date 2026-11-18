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

(defclass LayerInterfaceFactory (JObject)
  ((f_logUtil :initform nil)
   (f_list :initform nil)
   (f_HASHTABLE_LABEL :initform nil)))

(defvar LayerInterfaceFactory.jcell_SINGLETON :jnone)
(defun LayerInterfaceFactory.jstatic_SINGLETON ()
  (when (eq LayerInterfaceFactory.jcell_SINGLETON :jnone) (setf LayerInterfaceFactory.jcell_SINGLETON (LayerInterfaceFactory.jnew_0)))
  LayerInterfaceFactory.jcell_SINGLETON)
(defun (setf LayerInterfaceFactory.jstatic_SINGLETON) (value) (setf LayerInterfaceFactory.jcell_SINGLETON value))

(defun LayerInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'LayerInterfaceFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_HASHTABLE_LABEL) "Hashtable: ")
    this))

    
(defun LayerInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerInterfaceFactory.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this LayerInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0)))))

    
(unless (fboundp 'jm_getNexInstance_4) (defgeneric jm_getNexInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getNexInstance_4 ((this LayerInterfaceFactory) _hashtable _x _y _z)
  (declare (ignorable this _hashtable _x _y _z))
  (let (_commonStrings _typeInteger _layerInterfaceFactoryInterface)
  (declare (ignorable _commonStrings _typeInteger _layerInterfaceFactoryInterface))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_HASHTABLE_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) _hashtable))) this (slot-value _commonStrings 'f_GET_INSTANCE))
        (setf _typeInteger (jm_get_1 _hashtable (Layer.jstatic_ID)))
        (setf _layerInterfaceFactoryInterface (aref (slot-value (slot-value this 'f_list) 'f_objectArray) (JR.i32 (- (jm_intValue_0 _typeInteger) 1))))
        (return-from jreturn (jm_getNextInstance_4 _layerInterfaceFactoryInterface _hashtable _x _y _z)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this LayerInterfaceFactory) _layerInterfaceFactoryInterface)
  (declare (ignorable this _layerInterfaceFactoryInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _layerInterfaceFactoryInterface))))



