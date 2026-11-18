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

(defclass CountedLayerInterfaceFactoryPart (JObject)
  ((f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_animationInterface :initform nil)
   (f_total :initform 0)
   (f_totalString :initform nil)
   (f_xOffset :initform 0)
   (f_countedPickedUpLayerInterfaceFactory :initform nil)
   (f_primitiveLongUtil :initform nil)))

(defvar CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY :jnone)
(defun CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY ()
  (when (eq CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY :jnone) (setf CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY (CountedLayerInterfaceFactoryPart.jnew_2 0 (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))))
  CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY)
(defun (setf CountedLayerInterfaceFactoryPart.jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY) (value) (setf CountedLayerInterfaceFactoryPart.jcell_NULL_COUNTED_LAYER_INTERFACE_FACTORY value))

    
(defun CountedLayerInterfaceFactoryPart.jnew_2 (_total _countedPickedUpLayerInterfaceFactory)
  (declare (ignorable _total _countedPickedUpLayerInterfaceFactory))
  (let ((this (make-instance 'CountedLayerInterfaceFactoryPart)))
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_animationInterface) (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
    
    (setf (slot-value this 'f_totalString) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_CHAR_ARRAY))
    
    (setf (slot-value this 'f_countedPickedUpLayerInterfaceFactory) (CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_primitiveLongUtil) (PrimitiveLongUtil.jm_createPowerOfTen_1 1000))
        (jm_init_2 this _total _countedPickedUpLayerInterfaceFactory)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CountedLayerInterfaceFactoryPart) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (jm_setXOffset_1 this (JR.i32 (+ (jm_charsWidth_3 _font (slot-value this 'f_totalString) 0 (jm_getCurrentTotalDigits_0 (slot-value this 'f_primitiveLongUtil))) (ash (jm_getSize_0 _font) (- (logand 1 31))))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this CountedLayerInterfaceFactoryPart) _total _countedPickedUpLayerInterfaceFactory)
  (declare (ignorable this _total _countedPickedUpLayerInterfaceFactory))
  (let ()
    (block jreturn
        (jm_setCountedPickedUpLayerInterfaceFactory_1 this _countedPickedUpLayerInterfaceFactory)
        (setf (slot-value this 'f_total) _total))))

    
(unless (fboundp 'jm_getInstance_4) (defgeneric jm_getInstance_4 (this p1 p2 p3 p4)))
(defmethod jm_getInstance_4 ((this CountedLayerInterfaceFactoryPart) _hashtable _x _y _z)
  (declare (ignorable this _hashtable _x _y _z))
  (let ()
    (block jreturn
        (if (> (slot-value this 'f_total) 0)
            (progn
            (jm_setTotal_1 this (JR.i32 (- (slot-value this 'f_total) 1)))
            (return-from jreturn (jm_getNextInstance_4 (jm_getCountedPickedUpLayerInterfaceFactory_0 this) _hashtable _x _y _z)))
            (progn
            (error (JR.newException "Exception" "No more left. Could use a listener to automatically remove")))))))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this CountedLayerInterfaceFactoryPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_total)))))

    
(unless (fboundp 'jm_setTotal_1) (defgeneric jm_setTotal_1 (this p1)))
(defmethod jm_setTotal_1 ((this CountedLayerInterfaceFactoryPart) _total)
  (declare (ignorable this _total))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_total) _total)
        (setf (slot-value this 'f_totalString) (jm_getCharArray_1 (slot-value this 'f_primitiveLongUtil) _total))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this CountedLayerInterfaceFactoryPart) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this CountedLayerInterfaceFactoryPart) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getAnimationInterface_0) (defgeneric jm_getAnimationInterface_0 (this)))
(defmethod jm_getAnimationInterface_0 ((this CountedLayerInterfaceFactoryPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_animationInterface)))))

    
(unless (fboundp 'jm_setAnimationInterface_1) (defgeneric jm_setAnimationInterface_1 (this p1)))
(defmethod jm_setAnimationInterface_1 ((this CountedLayerInterfaceFactoryPart) _animationInterface)
  (declare (ignorable this _animationInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_animationInterface) _animationInterface))))

    
(unless (fboundp 'jm_getXOffset_0) (defgeneric jm_getXOffset_0 (this)))
(defmethod jm_getXOffset_0 ((this CountedLayerInterfaceFactoryPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_xOffset)))))

    
(unless (fboundp 'jm_setXOffset_1) (defgeneric jm_setXOffset_1 (this p1)))
(defmethod jm_setXOffset_1 ((this CountedLayerInterfaceFactoryPart) _totalStringWidth)
  (declare (ignorable this _totalStringWidth))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_xOffset) _totalStringWidth))))

    
(unless (fboundp 'jm_getTotalString_0) (defgeneric jm_getTotalString_0 (this)))
(defmethod jm_getTotalString_0 ((this CountedLayerInterfaceFactoryPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_totalString)))))

    
(unless (fboundp 'jm_getCountedPickedUpLayerInterfaceFactory_0) (defgeneric jm_getCountedPickedUpLayerInterfaceFactory_0 (this)))
(defmethod jm_getCountedPickedUpLayerInterfaceFactory_0 ((this CountedLayerInterfaceFactoryPart))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_countedPickedUpLayerInterfaceFactory)))))

    
(unless (fboundp 'jm_setCountedPickedUpLayerInterfaceFactory_1) (defgeneric jm_setCountedPickedUpLayerInterfaceFactory_1 (this p1)))
(defmethod jm_setCountedPickedUpLayerInterfaceFactory_1 ((this CountedLayerInterfaceFactoryPart) _countedPickedUpLayerInterfaceFactory)
  (declare (ignorable this _countedPickedUpLayerInterfaceFactory))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_countedPickedUpLayerInterfaceFactory) _countedPickedUpLayerInterfaceFactory))))



