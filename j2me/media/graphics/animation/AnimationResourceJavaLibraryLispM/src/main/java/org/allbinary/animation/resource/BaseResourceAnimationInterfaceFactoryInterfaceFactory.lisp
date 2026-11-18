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
;;;; package org.allbinary.animation.resource

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseResourceAnimationInterfaceFactoryInterfaceFactory (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_hashtable :initform nil)
   (f_rectangleHashtable :initform nil)
   (f_rectangleArrayOfArraysHashtable :initform nil)
   (f_name :initform nil)
   (f_initialized :initform nil)))

    
(defun BaseResourceAnimationInterfaceFactoryInterfaceFactory.jnew_4 (_name _hashtable _rectangleHashtable _rectangleArrayHashtable)
  (declare (ignorable _name _hashtable _rectangleHashtable _rectangleArrayHashtable))
  (let ((this (make-instance 'BaseResourceAnimationInterfaceFactoryInterfaceFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_hashtable) _hashtable)
        (setf (slot-value this 'f_rectangleHashtable) _rectangleHashtable)
        (setf (slot-value this 'f_rectangleArrayOfArraysHashtable) _rectangleArrayHashtable)
        (setf (slot-value this 'f_name) _name)))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (setf _commonStrings (CommonStrings.jm_getInstance_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Available List of Animations: ") (jm_toString_0 (slot-value this 'f_hashtable)))) this (slot-value _commonStrings 'f_INIT))
        (jm_setInitialized_1 this t))))

    
(unless (fboundp 'jm_initImageCache_2) (defgeneric jm_initImageCache_2 (this p1 p2)))
(defmethod jm_initImageCache_2 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _imageCache _level)
  (declare (ignorable this _imageCache _level))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource _animationInterfaceFactoryInterface)
  (declare (ignorable this _resource _animationInterfaceFactoryInterface))
  (let ()
    (block jreturn
        (if (jm_containsKey_1 (slot-value this 'f_hashtable) _resource)
            (progn
            (error (JR.newException "Exception" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Resource Already Created: ") _resource))))))
        (jm_put_2 (slot-value this 'f_hashtable) _resource _animationInterfaceFactoryInterface))))

    
(unless (fboundp 'jm_getBasicAnimationInterfaceFactoryInstance_1) (defgeneric jm_getBasicAnimationInterfaceFactoryInstance_1 (this p1)))
(defmethod jm_getBasicAnimationInterfaceFactoryInstance_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let (_basicAnimationInterfaceFactoryInterfaceCanBeNull)
  (declare (ignorable _basicAnimationInterfaceFactoryInterfaceCanBeNull))
    (block jreturn
        (setf _basicAnimationInterfaceFactoryInterfaceCanBeNull (jm_get_1 (slot-value this 'f_hashtable) _resource))
        (if (null _basicAnimationInterfaceFactoryInterfaceCanBeNull)
            (progn
            (return-from jreturn (NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY))))
        (return-from jreturn _basicAnimationInterfaceFactoryInterfaceCanBeNull))))

    
(unless (fboundp 'jm_getRectangle_1) (defgeneric jm_getRectangle_1 (this p1)))
(defmethod jm_getRectangle_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let (_rectangleCanBeNull)
  (declare (ignorable _rectangleCanBeNull))
    (block jreturn
        (setf _rectangleCanBeNull (jm_get_1 (slot-value this 'f_rectangleHashtable) _resource))
        (if (null _rectangleCanBeNull)
            (progn
            (return-from jreturn (RectangleFactory.jstatic_SINGLETON))))
        (return-from jreturn _rectangleCanBeNull))))

    
(unless (fboundp 'jm_addRectangle_2) (defgeneric jm_addRectangle_2 (this p1 p2)))
(defmethod jm_addRectangle_2 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource _rectangle)
  (declare (ignorable this _resource _rectangle))
  (let ()
    (block jreturn
        (jm_put_2 (slot-value this 'f_rectangleHashtable) _resource _rectangle))))

    
(unless (fboundp 'jm_getRectangleArrayOfArrays_1) (defgeneric jm_getRectangleArrayOfArrays_1 (this p1)))
(defmethod jm_getRectangleArrayOfArrays_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource)
  (declare (ignorable this _resource))
  (let (_valueCanBeNull _rectangleArrayOfArrays)
  (declare (ignorable _valueCanBeNull _rectangleArrayOfArrays))
    (block jreturn
        (setf _valueCanBeNull (jm_get_1 (slot-value this 'f_rectangleArrayOfArraysHashtable) _resource))
        (if (not (null _valueCanBeNull))
            (progn
            (setf _rectangleArrayOfArrays _valueCanBeNull)
            (return-from jreturn _rectangleArrayOfArrays))
            (progn
            (return-from jreturn (RectangleFactory.jstatic_ARRAY_OF_ARRAYS)))))))

    
(unless (fboundp 'jm_addRectangleArrayOfArrays_2) (defgeneric jm_addRectangleArrayOfArrays_2 (this p1 p2)))
(defmethod jm_addRectangleArrayOfArrays_2 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _resource _rectangleArrayOfArrays)
  (declare (ignorable this _resource _rectangleArrayOfArrays))
  (let ()
    (block jreturn
        (jm_put_2 (slot-value this 'f_rectangleArrayOfArraysHashtable) _resource _rectangleArrayOfArrays))))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_isLoadingLevel_1) (defgeneric jm_isLoadingLevel_1 (this p1)))
(defmethod jm_isLoadingLevel_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let (_resourceLoadingLevelFactory)
  (declare (ignorable _resourceLoadingLevelFactory))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_ALL)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (JR.className this)) (slot-value (CommonSeps.jm_getInstance_0) 'f_SEMICOLON)) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) (slot-value this 'f_name)))))))

    
(unless (fboundp 'jm_getHashtable_0) (defgeneric jm_getHashtable_0 (this)))
(defmethod jm_getHashtable_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_getRectangleHashtable_0) (defgeneric jm_getRectangleHashtable_0 (this)))
(defmethod jm_getRectangleHashtable_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rectangleHashtable)))))

    
(unless (fboundp 'jm_getRectangleArrayOfArraysHashtable_0) (defgeneric jm_getRectangleArrayOfArraysHashtable_0 (this)))
(defmethod jm_getRectangleArrayOfArraysHashtable_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_rectangleArrayOfArraysHashtable)))))

    
(unless (fboundp 'jm_setInitialized_1) (defgeneric jm_setInitialized_1 (this p1)))
(defmethod jm_setInitialized_1 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory) _initialized)
  (declare (ignorable this _initialized))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initialized) _initialized))))

    
(unless (fboundp 'jm_isInitialized_0) (defgeneric jm_isInitialized_0 (this)))
(defmethod jm_isInitialized_0 ((this BaseResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initialized)))))



