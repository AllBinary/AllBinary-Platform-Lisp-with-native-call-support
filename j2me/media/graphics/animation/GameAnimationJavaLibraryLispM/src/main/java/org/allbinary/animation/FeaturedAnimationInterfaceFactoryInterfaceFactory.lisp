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
;;;; package org.allbinary.animation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass FeaturedAnimationInterfaceFactoryInterfaceFactory (FeaturedResourceFactory)
  ())

(defvar FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE :jnone)
(defun FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE ()
  (when (eq FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE :jnone) (setf FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE (FeaturedAnimationInterfaceFactoryInterfaceFactory.jnew_0)))
  FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE)
(defun (setf FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE) (value) (setf FeaturedAnimationInterfaceFactoryInterfaceFactory.jcell_INSTANCE value))

    
(defun FeaturedAnimationInterfaceFactoryInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'FeaturedAnimationInterfaceFactoryInterfaceFactory)))
  (let ()
    (block jreturn nil))
    this))

    
(defun FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (FeaturedAnimationInterfaceFactoryInterfaceFactory.jstatic_INSTANCE)))))

    
(unless (fboundp 'jm_getRectangle_1) (defgeneric jm_getRectangle_1 (this p1)))
(defmethod jm_getRectangle_1 ((this FeaturedAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getRectangleXY_3 this _resource 0 0)))))

    
(unless (fboundp 'jm_getRectangleXY_3) (defgeneric jm_getRectangleXY_3 (this p1 p2 p3)))
(defmethod jm_getRectangleXY_3 ((this FeaturedAnimationInterfaceFactoryInterfaceFactory) _resource _x _y)
  (declare (ignorable this _resource _x _y))
  (let (_pointFactory _list _scale _size _featureInterface _rectangle _index)
  (declare (ignorable _pointFactory _list _scale _size _featureInterface _rectangle _index))
    (block jreturn
        (setf _pointFactory (PointFactory.jm_getInstance_0))
        (setf _list (jm_getList_0 this))
        (setf _scale (jm_intValue_0 (jm_getValue_0 (slot-value (GameConfigurationCentral.jm_getInstance_0) 'f_SCALE))))
        (setf _size (jm_size_0 (jm_getList_0 this)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _featureInterface (aref (slot-value _list 'f_objectArray) _index))
            (if (jm_isFeature_0 _featureInterface)
                (progn
                (setf _rectangle (jm_getRectangle_1 _featureInterface _resource))
                (if (not (eq _rectangle (RectangleFactory.jstatic_SINGLETON)))
                    (progn
                    (return-from jreturn (Rectangle.jnew_3 (jm_createXY_2 _pointFactory _x _y) (ash (JR.i32 (* (jm_getWidth_0 _rectangle) _scale)) (- (logand 1 31))) (ash (JR.i32 (* (jm_getHeight_0 _rectangle) _scale)) (- (logand 1 31))))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "No rectangle available for current feature selection or Resource: ") _resource)))))))

    
(unless (fboundp 'jm_getProcedural_1) (defgeneric jm_getProcedural_1 (this p1)))
(defmethod jm_getProcedural_1 ((this FeaturedAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getBasicAnimationInterfaceFactoryInstance_1 this _resource)))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this FeaturedAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getBasicAnimationInterfaceFactoryInstance_1 this _resource)))))

    
(unless (fboundp 'jm_getBasicAnimationInterfaceFactoryInstance_1) (defgeneric jm_getBasicAnimationInterfaceFactoryInstance_1 (this p1)))
(defmethod jm_getBasicAnimationInterfaceFactoryInstance_1 ((this FeaturedAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let (_list _resourceTypeAvailableList _size _featureInterface _animationInterfaceFactoryInterface _index _stringBuffer _result _NO_ANIMATION_AVAILABLE_FROM _FOR_FACTORIES _FOR_RESOURCE _HAS_KEY _RESOURCES_LABEL _size2)
  (declare (ignorable _list _resourceTypeAvailableList _size _featureInterface _animationInterfaceFactoryInterface _index _stringBuffer _result _NO_ANIMATION_AVAILABLE_FROM _FOR_FACTORIES _FOR_RESOURCE _HAS_KEY _RESOURCES_LABEL _size2))
    (block jreturn
        (setf _list (jm_getList_0 this))
        (setf _resourceTypeAvailableList (BasicArrayListD.jnew_0))
        (setf _size (jm_size_0 (jm_getList_0 this)))
        (setf _featureInterface nil)
        (setf _animationInterfaceFactoryInterface nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _featureInterface (aref (slot-value _list 'f_objectArray) _index))
            (if (jm_isFeature_0 _featureInterface)
                (progn
                (jm_add_1 _resourceTypeAvailableList _featureInterface)
                (setf _animationInterfaceFactoryInterface (jm_getBasicAnimationInterfaceFactoryInstance_1 _featureInterface _resource))
                (if (not (eq _animationInterfaceFactoryInterface (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY)))
                    (progn
                    (return-from jreturn _animationInterfaceFactoryInterface))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (if (> (jm_size_0 _resourceTypeAvailableList) 0)
            (progn
            (setf _NO_ANIMATION_AVAILABLE_FROM "No animation available from: ")
            (setf _FOR_FACTORIES " factories: ")
            (setf _FOR_RESOURCE " for Resource: ")
            (setf _HAS_KEY " has: ")
            (setf _RESOURCES_LABEL " resources ")
            (setf _stringBuffer (StringMaker.jnew_0))
            (jm_append_1 _stringBuffer _NO_ANIMATION_AVAILABLE_FROM)
            (jm_appendint_1 _stringBuffer (jm_size_0 _resourceTypeAvailableList))
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_FORWARD_SLASH))
            (jm_appendint_1 _stringBuffer _size)
            (jm_append_1 _stringBuffer _FOR_FACTORIES)
            (setf _size2 (jm_size_0 _resourceTypeAvailableList))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size2) do
                    (block jcontinue
                (jm_append_1 _stringBuffer (JR.toString (jm_get_1 _resourceTypeAvailableList _index)))
                (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_COMMA_SEP)))
                    (setf _index (JR.i32 (+ _index 1))))))
            (jm_append_1 _stringBuffer _FOR_RESOURCE)
            (jm_append_1 _stringBuffer _resource)
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))
                (setf _featureInterface (aref (slot-value _list 'f_objectArray) _index))
                (if (jm_isFeature_0 _featureInterface)
                    (progn
                    (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) _featureInterface))
                    (jm_append_1 _stringBuffer _HAS_KEY)
                    (jm_appendint_1 _stringBuffer (jm_size_0 (jm_getHashtable_0 _featureInterface)))
                    (jm_append_1 _stringBuffer _RESOURCES_LABEL))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (error (JR.newException "Exception" (jm_toString_0 _stringBuffer))))
            (progn
            (setf _stringBuffer (StringMaker.jnew_0))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _featureInterface (aref (slot-value _list 'f_objectArray) _index))
                (jm_append_1 _stringBuffer (jm_toString_0 _featureInterface))
                (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)))
                    (setf _index (JR.i32 (+ _index 1))))))
            (setf _result (jm_toString_0 _stringBuffer))
            (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
            (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringBuffer "No feature resource type available for Resource: ") _resource) " Resource Factories Available: ") _result)))))))))



