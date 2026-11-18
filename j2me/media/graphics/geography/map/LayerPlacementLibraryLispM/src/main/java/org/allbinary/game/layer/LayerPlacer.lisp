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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerPlacer (JObject)
  ((f_enumerationUtil :initform nil)
   (f_layerInterfaceVisitor :initform nil)
   (f_dimension :initform nil)))

    
(defun LayerPlacer.jnew_2 (_layerInterfaceVisitor _dimension)
  (declare (ignorable _layerInterfaceVisitor _dimension))
  (let ((this (make-instance 'LayerPlacer)))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_layerInterfaceVisitor) _layerInterfaceVisitor)
        (setf (slot-value this 'f_dimension) _dimension)))
    this))

    
(unless (fboundp 'jm_processList_1) (defgeneric jm_processList_1 (this p1)))
(defmethod jm_processList_1 ((this LayerPlacer) _list)
  (declare (ignorable this _list))
  (let (_size _layerPlacementInterface _index)
  (declare (ignorable _size _layerPlacementInterface _index))
    (block jreturn
        (setf _size (jm_size_0 _list))
        (setf _layerPlacementInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _layerPlacementInterface (aref (slot-value _list 'f_objectArray) _index))
            (jm_process_1 this _layerPlacementInterface))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_process_1) (defgeneric jm_process_1 (this p1)))
(defmethod jm_process_1 ((this LayerPlacer) _layerPlacementInterface)
  (declare (ignorable this _layerPlacementInterface))
  (let (_relativePoint _layerInterfaceFactory _hashtable _enumeration _point _layerHashtable _x _y _z _layerInterface)
  (declare (ignorable _relativePoint _layerInterfaceFactory _hashtable _enumeration _point _layerHashtable _x _y _z _layerInterface))
    (block jreturn
        (setf _relativePoint (jm_getPoint_1 this _layerPlacementInterface))
        (setf _layerInterfaceFactory (LayerInterfaceFactory.jm_getInstance_0))
        (setf _hashtable (jm_getInstance_0 _layerPlacementInterface))
        (setf _enumeration (jm_keys_0 _hashtable))
        (setf _point nil)
        (setf _layerHashtable nil)
        (setf _x 0)
        (setf _y 0)
        (setf _z 0)
        (setf _layerInterface nil)
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (setf _point (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration))
            (setf _layerHashtable (jm_get_1 _hashtable _point))
            (setf _x (JR.i32 (+ (jm_getX_0 _point) (jm_getX_0 _relativePoint))))
            (setf _y (JR.i32 (+ (jm_getY_0 _point) (jm_getY_0 _relativePoint))))
            (setf _z (JR.i32 (+ (jm_getZ_0 _point) (jm_getZ_0 _relativePoint))))
            (setf _layerInterface (jm_getNexInstance_4 _layerInterfaceFactory _layerHashtable _x _y _z))
            (jm_visit_1 (slot-value this 'f_layerInterfaceVisitor) _layerInterface)))))))

    
(unless (fboundp 'jm_getPoint_1) (defgeneric jm_getPoint_1 (this p1)))
(defmethod jm_getPoint_1 ((this LayerPlacer) _layerPlacementInterface)
  (declare (ignorable this _layerPlacementInterface))
  (let (_pointFactory _layerPlacementType _width _height _x _y)
  (declare (ignorable _pointFactory _layerPlacementType _width _height _x _y))
    (block jreturn
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _layerPlacementType (jm_getLayerType_0 _layerPlacementInterface))
        (if (eq _layerPlacementType (slot-value (LayerPlacementTypeFactory.jm_getInstance_0) 'f_MAP))
            (progn
            (setf _width (jm_getWidth_0 _layerPlacementInterface))
            (setf _height (jm_getHeight_0 _layerPlacementInterface))
            (setf _x (JR.idiv (JR.i32 (- (jm_getX_0 (slot-value this 'f_dimension)) _width)) 2))
            (setf _y (JR.idiv (JR.i32 (- (jm_getY_0 (slot-value this 'f_dimension)) _height)) 2))
            (return-from jreturn (jm_createXY_2 _pointFactory _x _y)))
            (if (eq _layerPlacementType (slot-value (LayerPlacementTypeFactory.jm_getInstance_0) 'f_UP))
            (progn
            (setf _width (jm_getWidth_0 _layerPlacementInterface))
            (setf _height (jm_getHeight_0 _layerPlacementInterface))
            (setf _x (JR.idiv (JR.i32 (- (jm_getX_0 (slot-value this 'f_dimension)) _width)) 2))
            (setf _y (JR.i32 (- _height)))
            (return-from jreturn (jm_createXY_2 _pointFactory _x _y)))
            (progn
            (error (JR.newException "Exception" "PlacementType Not Recognized"))))))))



