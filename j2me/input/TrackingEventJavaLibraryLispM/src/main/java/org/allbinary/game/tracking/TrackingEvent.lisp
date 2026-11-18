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
;;;; package org.allbinary.game.tracking

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TrackingEvent (AllBinaryEventObject)
  ((f_layerInterface :initform nil)))

    
(defun TrackingEvent.jnew_1 (_allBinaryLayerInterface)
  (declare (ignorable _allBinaryLayerInterface))
  (let ((this (make-instance 'TrackingEvent)))
    (setf (slot-value this 'f_layerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
  (let ()
    (block jreturn
        nil
        (if (not (eq _allBinaryLayerInterface (TrackingEventHandler.jm_getInstance_0)))
            (progn
            (jm_setLayerInterface_1 this _allBinaryLayerInterface)))))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this TrackingEvent) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_setSource_1 this _anyType))))

    
(unless (fboundp 'jm_getLayerInterface_0) (defgeneric jm_getLayerInterface_0 (this)))
(defmethod jm_getLayerInterface_0 ((this TrackingEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_layerInterface)))))

    
(unless (fboundp 'jm_setLayerInterface_1) (defgeneric jm_setLayerInterface_1 (this p1)))
(defmethod jm_setLayerInterface_1 ((this TrackingEvent) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerInterface) _layerInterface))))

    
(unless (fboundp 'jm_setLayerInterfaceForCircularStaticPool_1) (defgeneric jm_setLayerInterfaceForCircularStaticPool_1 (this p1)))
(defmethod jm_setLayerInterfaceForCircularStaticPool_1 ((this TrackingEvent) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerInterface) _layerInterface))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TrackingEvent))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (JR.unescape "TrackingEvent: \\n"))
        (jm_append_1 _stringBuffer "LayerInterface: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_layerInterface)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



