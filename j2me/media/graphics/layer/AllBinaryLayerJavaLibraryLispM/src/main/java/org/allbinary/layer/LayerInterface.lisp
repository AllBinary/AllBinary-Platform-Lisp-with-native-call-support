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

(defclass LayerInterface (JObject)
  ())

(defun LayerInterface.jnew_0 ()
  (let ((this (make-instance 'LayerInterface)))
    this))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHeight")))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getWidth")))

    
(unless (fboundp 'jm_getHalfHeight_0) (defgeneric jm_getHalfHeight_0 (this)))
(defmethod jm_getHalfHeight_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHalfHeight")))

    
(unless (fboundp 'jm_getHalfWidth_0) (defgeneric jm_getHalfWidth_0 (this)))
(defmethod jm_getHalfWidth_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getHalfWidth")))

    
(unless (fboundp 'jm_getXP_0) (defgeneric jm_getXP_0 (this)))
(defmethod jm_getXP_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getXP")))

    
(unless (fboundp 'jm_getYP_0) (defgeneric jm_getYP_0 (this)))
(defmethod jm_getYP_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getYP")))

    
(unless (fboundp 'jm_getZP_0) (defgeneric jm_getZP_0 (this)))
(defmethod jm_getZP_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getZP")))

    
(unless (fboundp 'jm_getX2_0) (defgeneric jm_getX2_0 (this)))
(defmethod jm_getX2_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getX2")))

    
(unless (fboundp 'jm_getY2_0) (defgeneric jm_getY2_0 (this)))
(defmethod jm_getY2_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getY2")))

    
(unless (fboundp 'jm_getZ2_0) (defgeneric jm_getZ2_0 (this)))
(defmethod jm_getZ2_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getZ2")))

    
(unless (fboundp 'jm_isVisible_0) (defgeneric jm_isVisible_0 (this)))
(defmethod jm_isVisible_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isVisible")))

    
(unless (fboundp 'jm_moveDXYZ_3) (defgeneric jm_moveDXYZ_3 (this p1 p2 p3)))
(defmethod jm_moveDXYZ_3 ((this LayerInterface) _dx _dy _dz)
  (declare (ignorable this _dx _dy _dz))
  (error (JR.newException "AbstractMethodError" "moveDXYZ")))

    
(unless (fboundp 'jm_setVisible_1) (defgeneric jm_setVisible_1 (this p1)))
(defmethod jm_setVisible_1 ((this LayerInterface) _visible)
  (declare (ignorable this _visible))
  (error (JR.newException "AbstractMethodError" "setVisible")))

    
(unless (fboundp 'jm_implmentsTickableInterface_0) (defgeneric jm_implmentsTickableInterface_0 (this)))
(defmethod jm_implmentsTickableInterface_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "implmentsTickableInterface")))

    
(unless (fboundp 'jm_implmentsCollidableInterface_0) (defgeneric jm_implmentsCollidableInterface_0 (this)))
(defmethod jm_implmentsCollidableInterface_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "implmentsCollidableInterface")))

    
(unless (fboundp 'jm_implmentsGameInputInterface_0) (defgeneric jm_implmentsGameInputInterface_0 (this)))
(defmethod jm_implmentsGameInputInterface_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "implmentsGameInputInterface")))

    
(unless (fboundp 'jm_implmentsArtificialIntelligenceCompositeInterface_0) (defgeneric jm_implmentsArtificialIntelligenceCompositeInterface_0 (this)))
(defmethod jm_implmentsArtificialIntelligenceCompositeInterface_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "implmentsArtificialIntelligenceCompositeInterface")))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this LayerInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getType")))



