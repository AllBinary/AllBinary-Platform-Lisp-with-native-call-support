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
;;;; package org.allbinary.layer.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerManagerEvent (AllBinaryEventObject)
  ((f_layerInterface :initform nil)
   (f_crud :initform nil)))

    
(defun LayerManagerEvent.jnew_2 (_layerManager _crud)
  (declare (ignorable _layerManager _crud))
  (let ((this (make-instance 'LayerManagerEvent)))
    (setf (slot-value this 'f_layerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_crud) _crud)))
    this))

    
(unless (fboundp 'jm_getLayerInterface_0) (defgeneric jm_getLayerInterface_0 (this)))
(defmethod jm_getLayerInterface_0 ((this LayerManagerEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_layerInterface)))))

    
(unless (fboundp 'jm_setLayerInterface_1) (defgeneric jm_setLayerInterface_1 (this p1)))
(defmethod jm_setLayerInterface_1 ((this LayerManagerEvent) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerInterface) _layerInterface))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this LayerManagerEvent))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (JR.unescape "LayerManagerEvent: \\n"))
        (jm_append_1 _stringBuffer "LayerInterface: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (jm_getLayerInterface_0 this)))
        (jm_append_1 _stringBuffer (JR.unescape "\\nCRUD: "))
        (jm_append_1 _stringBuffer (slot-value this 'f_crud))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



