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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory (BaseResourceAnimationInterfaceFactoryInterfaceFactory)
  ())

    
(defun TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jm_createFactory_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 "TouchButton Animations")))))

    
(defun TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let ()
    (block jreturn
        (jm_initImageCache_2 this (ImageCacheFactory.jm_getInstance_0) _level))))

    
(unless (fboundp 'jm_initImageCache_2) (defgeneric jm_initImageCache_2 (this p1 p2)))
(defmethod jm_initImageCache_2 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _imageCache _level)
  (declare (ignorable this _imageCache _level))
  (let (_portion _loadingString _index _progressCanvas _touchButtonBlankResource _touchButtonGenericActionResource _touchButtonStartResource _touchButtonUpResource _touchButtonDownResource _touchButtonTurnLeftResource _touchButtonTurnRightResource _touchButtonStrafeLeftResource _touchButtonStrafeRightResource _touchButtonBlankResourceImage _touchButtonGenericActionResourceImage _touchButtonStartResourceImage _touchButtonUpResourceImage _touchButtonDownResourceImage _touchButtonTurnLeftResourceImage _touchButtonTurnRightResourceImage _touchButtonStrafeLeftResourceImage _touchButtonStrafeRightResourceImage _nullAnimationFactory _imageCompleteUtil _touchButtonStartHintResource)
  (declare (ignorable _portion _loadingString _index _progressCanvas _touchButtonBlankResource _touchButtonGenericActionResource _touchButtonStartResource _touchButtonUpResource _touchButtonDownResource _touchButtonTurnLeftResource _touchButtonTurnRightResource _touchButtonStrafeLeftResource _touchButtonStrafeRightResource _touchButtonBlankResourceImage _touchButtonGenericActionResourceImage _touchButtonStartResourceImage _touchButtonUpResourceImage _touchButtonDownResourceImage _touchButtonTurnLeftResourceImage _touchButtonTurnRightResourceImage _touchButtonStrafeLeftResourceImage _touchButtonStrafeRightResourceImage _nullAnimationFactory _imageCompleteUtil _touchButtonStartHintResource))
    (block jreturn
        (if (jm_isInitialized_0 this)
            (progn
            (return-from jreturn)))
        (setf _portion 140)
        (setf _loadingString (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (jm_toString_0 this)) " Loading: ")))
        (setf _index 0)
        (setf _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (setf _touchButtonBlankResource (TouchButtonBlankResource.jm_getInstance_0))
        (setf _touchButtonGenericActionResource (TouchButtonGenericActionResource.jm_getInstance_0))
        (setf _touchButtonStartResource (TouchButtonStartResource.jm_getInstance_0))
        (setf _touchButtonUpResource (TouchButtonUpResource.jm_getInstance_0))
        (setf _touchButtonDownResource (TouchButtonDownResource.jm_getInstance_0))
        (setf _touchButtonTurnLeftResource (TouchButtonTurnLeftResource.jm_getInstance_0))
        (setf _touchButtonTurnRightResource (TouchButtonTurnRightResource.jm_getInstance_0))
        (setf _touchButtonStrafeLeftResource (TouchButtonStrafeLeftResource.jm_getInstance_0))
        (setf _touchButtonStrafeRightResource (TouchButtonStrafeRightResource.jm_getInstance_0))
        (setf _touchButtonBlankResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonBlankResource 'f_RESOURCE)))
        (setf _touchButtonGenericActionResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonGenericActionResource 'f_RESOURCE)))
        (setf _touchButtonStartResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonStartResource 'f_RESOURCE)))
        (setf _touchButtonUpResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonUpResource 'f_RESOURCE)))
        (setf _touchButtonDownResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonDownResource 'f_RESOURCE)))
        (setf _touchButtonTurnLeftResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonTurnLeftResource 'f_RESOURCE)))
        (setf _touchButtonTurnRightResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonTurnRightResource 'f_RESOURCE)))
        (setf _touchButtonStrafeLeftResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonStrafeLeftResource 'f_RESOURCE)))
        (setf _touchButtonStrafeRightResourceImage (jm_getWithKey_1 _imageCache (slot-value _touchButtonStrafeRightResource 'f_RESOURCE)))
        (setf _nullAnimationFactory (NullAnimationFactory.jm_getFactoryInstance_0))
        (if (jm_isOverScan_0 (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
            (progn
            (jm_getWithKey_1 _imageCache (slot-value (TouchButtonStartResource.jm_getInstance_0) 'f_HINT))))
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (setf _imageCompleteUtil (ImageCompleteUtil.jm_getInstance_0))
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonBlankResourceImage (slot-value _touchButtonBlankResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonBlankResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonBlankResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonBlankResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonGenericActionResourceImage (slot-value _touchButtonGenericActionResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonGenericActionResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonGenericActionResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonGenericActionResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonStartResourceImage (slot-value _touchButtonStartResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonStartResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStartResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonUpResourceImage (slot-value _touchButtonUpResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonUpResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonUpResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonUpResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonDownResourceImage (slot-value _touchButtonDownResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonDownResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonDownResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonDownResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonTurnLeftResourceImage (slot-value _touchButtonTurnLeftResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonTurnLeftResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonTurnLeftResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonTurnLeftResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonTurnRightResourceImage (slot-value _touchButtonTurnRightResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonTurnRightResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonTurnRightResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonTurnRightResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonStrafeLeftResourceImage (slot-value _touchButtonStrafeLeftResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonStrafeLeftResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStrafeLeftResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonStrafeLeftResource 'f_HINT) _nullAnimationFactory)
        (jm_addPortion_3 _progressCanvas _portion _loadingString (prog1 _index (setf _index (JR.i32 (+ _index 1)))))
        (jm_waitForImage_2 _imageCompleteUtil _touchButtonStrafeRightResourceImage (slot-value _touchButtonStrafeRightResource 'f_RESOURCE))
        (jm_add_2 this (slot-value _touchButtonStrafeRightResource 'f_RESOURCE) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStrafeRightResourceImage (AnimationBehaviorFactory.jm_getInstance_0)))
        (jm_add_2 this (slot-value _touchButtonStrafeRightResource 'f_HINT) _nullAnimationFactory)
        (if (jm_isOverScan_0 (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
            (progn
            (setf _touchButtonStartHintResource (jm_getWithKey_1 _imageCache (slot-value (TouchButtonStartResource.jm_getInstance_0) 'f_HINT)))
            (jm_add_2 this (slot-value _touchButtonStartResource 'f_HINT) (OneRowSpriteIndexedAnimationFactory.jm_createFactory_2 _touchButtonStartHintResource (AnimationBehaviorFactory.jm_getInstance_0))))
            (progn
            (jm_add_2 this (slot-value _touchButtonStartResource 'f_HINT) _nullAnimationFactory)))
        (jm_init_1 this _level))))

    
(unless (fboundp 'jm_isLoadingLevel_1) (defgeneric jm_isLoadingLevel_1 (this p1)))
(defmethod jm_isLoadingLevel_1 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (let (_resourceLoadingLevelFactory)
  (declare (ignorable _resourceLoadingLevelFactory))
    (block jreturn
        (setf _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (if (= _level (jm_getLevel_0 (slot-value _resourceLoadingLevelFactory 'f_LOAD_TOUCH)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn (call-next-method this _level)))))))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (not (jm_isDefault_1 (Features.jm_getInstance_0) (slot-value (OpenGLFeatureFactory.jm_getInstance_0) 'f_OPENGL)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))



