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
;;;; package org.allbinary.game.layer.special

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CollidableDestroyableDamageableLayer (CollidableCompositeLayer)
  ((f_groupInterface :initform nil)
   (f_readyForExplosion :initform nil)
   (f_initWidth :initform 0)
   (f_initHeight :initform 0)
   (f_initX :initform 0)
   (f_initY :initform 0)
   (f_initZ :initform 0)
   (f_partInterfaceArrayP :initform nil)
   (f_pickupBehavior :initform nil)
   (f_allBinaryGameLayerManagerP :initform nil)
   (f_isDraggable :initform nil)
   (f_isDragged :initform nil)
   (f_isDropped :initform nil)))

(defvar CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER :jnone)
(defun CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER ()
  (when (eq CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER :jnone) (setf CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)
(defun (setf CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) (value) (setf CollidableDestroyableDamageableLayer.jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER value))

(defvar CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION :jnone)
(defun CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION ()
  (when (eq CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION :jnone) (setf CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION "ReadyForExplosion: "))
  CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION)
(defun (setf CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION) (value) (setf CollidableDestroyableDamageableLayer.jcell_READYFOREXPLOSION value))

    
(defun CollidableDestroyableDamageableLayer.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) (CollidableDestroyableDamageableLayer.jnew_4 (slot-value (BasicGroupFactory.jm_getInstance_0) 'f_NONE_ARRAY) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION)))))
        (return-from jreturn (CollidableDestroyableDamageableLayer.jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER)))))

    
(defun CollidableDestroyableDamageableLayer.jnew_4 (_groupInterface _name _layerInfo _viewPosition)
  (declare (ignorable _groupInterface _name _layerInfo _viewPosition))
  (let ((this (make-instance 'CollidableDestroyableDamageableLayer)))
    
    
    
    
    
    
    
    (setf (slot-value this 'f_partInterfaceArrayP) (PartInterfaceUtil.jm_getZeroArray_0))
    
    (setf (slot-value this 'f_allBinaryGameLayerManagerP) (AllBinaryGameLayerManager.jm_getNullInstance_0))
    (setf (slot-value this 'f_isDraggable) nil)
    (setf (slot-value this 'f_isDragged) nil)
    (setf (slot-value this 'f_isDropped) nil)
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_initWidth) (jm_getWidth_0 _layerInfo))
        (setf (slot-value this 'f_initHeight) (jm_getHeight_0 _layerInfo))
        (setf (slot-value this 'f_groupInterface) _groupInterface)
        (setf (slot-value this 'f_pickupBehavior) (PickupBehavior.jm_getNullInstance_0))))
    this))

    
(unless (fboundp 'jm_initPosition_0) (defgeneric jm_initPosition_0 (this)))
(defmethod jm_initPosition_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_setPosition_3 this (slot-value this 'f_initX) (slot-value this 'f_initY) (slot-value this 'f_initZ)))))

    
(unless (fboundp 'jm_initPositionXYZ_3) (defgeneric jm_initPositionXYZ_3 (this p1 p2 p3)))
(defmethod jm_initPositionXYZ_3 ((this CollidableDestroyableDamageableLayer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_initX) _x)
        (setf (slot-value this 'f_initY) _y)
        (setf (slot-value this 'f_initZ) _z))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this CollidableDestroyableDamageableLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_damage_2) (defgeneric jm_damage_2 (this p1 p2)))
(defmethod jm_damage_2 ((this CollidableDestroyableDamageableLayer) _damage _damageType)
  (declare (ignorable this _damage _damageType))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getDamage_1) (defgeneric jm_getDamage_1 (this p1)))
(defmethod jm_getDamage_1 ((this CollidableDestroyableDamageableLayer) _damageType)
  (declare (ignorable this _damageType))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_isDestroyed_0) (defgeneric jm_isDestroyed_0 (this)))
(defmethod jm_isDestroyed_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_getGroupInterface_0) (defgeneric jm_getGroupInterface_0 (this)))
(defmethod jm_getGroupInterface_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_groupInterface)))))

    
(unless (fboundp 'jm_setGroupInterface_1) (defgeneric jm_setGroupInterface_1 (this p1)))
(defmethod jm_setGroupInterface_1 ((this CollidableDestroyableDamageableLayer) _teamInterface)
  (declare (ignorable this _teamInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_groupInterface) _teamInterface))))

    
(unless (fboundp 'jm_setAllBinaryGameLayerManager_1) (defgeneric jm_setAllBinaryGameLayerManager_1 (this p1)))
(defmethod jm_setAllBinaryGameLayerManager_1 ((this CollidableDestroyableDamageableLayer) _allBinaryGameLayerManager)
  (declare (ignorable this _allBinaryGameLayerManager))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameLayerManagerP) _allBinaryGameLayerManager)
        (if (null (slot-value this 'f_allBinaryGameLayerManagerP))
            (progn
            (error (JR.newException "RuntimeException")))))))

    
(unless (fboundp 'jm_isReadyForExplosion_0) (defgeneric jm_isReadyForExplosion_0 (this)))
(defmethod jm_isReadyForExplosion_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_readyForExplosion)))))

    
(unless (fboundp 'jm_setReadyForExplosion_1) (defgeneric jm_setReadyForExplosion_1 (this p1)))
(defmethod jm_setReadyForExplosion_1 ((this CollidableDestroyableDamageableLayer) _isReadyForExplosion)
  (declare (ignorable this _isReadyForExplosion))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_readyForExplosion) _isReadyForExplosion))))

    
(unless (fboundp 'jm_getInitWidth_0) (defgeneric jm_getInitWidth_0 (this)))
(defmethod jm_getInitWidth_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initWidth)))))

    
(unless (fboundp 'jm_getInitHeight_0) (defgeneric jm_getInitHeight_0 (this)))
(defmethod jm_getInitHeight_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initHeight)))))

    
(unless (fboundp 'jm_getInitX_0) (defgeneric jm_getInitX_0 (this)))
(defmethod jm_getInitX_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initX)))))

    
(unless (fboundp 'jm_getInitY_0) (defgeneric jm_getInitY_0 (this)))
(defmethod jm_getInitY_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_initY)))))

    
(unless (fboundp 'jm_up_0) (defgeneric jm_up_0 (this)))
(defmethod jm_up_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_down_0) (defgeneric jm_down_0 (this)))
(defmethod jm_down_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_right_0) (defgeneric jm_right_0 (this)))
(defmethod jm_right_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_left_0) (defgeneric jm_left_0 (this)))
(defmethod jm_left_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_strafeLeft_0) (defgeneric jm_strafeLeft_0 (this)))
(defmethod jm_strafeLeft_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_strafeRight_0) (defgeneric jm_strafeRight_0 (this)))
(defmethod jm_strafeRight_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_fire_2) (defgeneric jm_fire_2 (this p1 p2)))
(defmethod jm_fire_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_special1_2) (defgeneric jm_special1_2 (this p1 p2)))
(defmethod jm_special1_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_special2_2) (defgeneric jm_special2_2 (this p1 p2)))
(defmethod jm_special2_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_special3_2) (defgeneric jm_special3_2 (this p1 p2)))
(defmethod jm_special3_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_special4_2) (defgeneric jm_special4_2 (this p1 p2)))
(defmethod jm_special4_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_special5_2) (defgeneric jm_special5_2 (this p1 p2)))
(defmethod jm_special5_2 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent)
  (declare (ignorable this _layerManager _gameKeyEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_upAnalog_1) (defgeneric jm_upAnalog_1 (this p1)))
(defmethod jm_upAnalog_1 ((this CollidableDestroyableDamageableLayer) _yAnalogValue)
  (declare (ignorable this _yAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_downAnalog_1) (defgeneric jm_downAnalog_1 (this p1)))
(defmethod jm_downAnalog_1 ((this CollidableDestroyableDamageableLayer) _yAnalogValue)
  (declare (ignorable this _yAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_rightAnalog_1) (defgeneric jm_rightAnalog_1 (this p1)))
(defmethod jm_rightAnalog_1 ((this CollidableDestroyableDamageableLayer) _xAnalogValue)
  (declare (ignorable this _xAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_leftAnalog_1) (defgeneric jm_leftAnalog_1 (this p1)))
(defmethod jm_leftAnalog_1 ((this CollidableDestroyableDamageableLayer) _xAnalogValue)
  (declare (ignorable this _xAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_rightTrigger_3) (defgeneric jm_rightTrigger_3 (this p1 p2 p3)))
(defmethod jm_rightTrigger_3 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent _xAnalogValue)
  (declare (ignorable this _layerManager _gameKeyEvent _xAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_leftTrigger_3) (defgeneric jm_leftTrigger_3 (this p1 p2 p3)))
(defmethod jm_leftTrigger_3 ((this CollidableDestroyableDamageableLayer) _layerManager _gameKeyEvent _xAnalogValue)
  (declare (ignorable this _layerManager _gameKeyEvent _xAnalogValue))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onDestroyed_1) (defgeneric jm_onDestroyed_1 (this p1)))
(defmethod jm_onDestroyed_1 ((this CollidableDestroyableDamageableLayer) _destroyedEvent)
  (declare (ignorable this _destroyedEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getPickupBehavior_0) (defgeneric jm_getPickupBehavior_0 (this)))
(defmethod jm_getPickupBehavior_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_pickupBehavior)))))

    
(unless (fboundp 'jm_setPickupBehavior_1) (defgeneric jm_setPickupBehavior_1 (this p1)))
(defmethod jm_setPickupBehavior_1 ((this CollidableDestroyableDamageableLayer) _pickupBehavior)
  (declare (ignorable this _pickupBehavior))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_pickupBehavior) _pickupBehavior))))

    
(unless (fboundp 'jm_addPart_1) (defgeneric jm_addPart_1 (this p1)))
(defmethod jm_addPart_1 ((this CollidableDestroyableDamageableLayer) _pickedUpLayerInterfaceFactoryInterface)
  (declare (ignorable this _pickedUpLayerInterfaceFactoryInterface))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setPartInterfaceArray_1) (defgeneric jm_setPartInterfaceArray_1 (this p1)))
(defmethod jm_setPartInterfaceArray_1 ((this CollidableDestroyableDamageableLayer) _partInterfaceArray)
  (declare (ignorable this _partInterfaceArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_partInterfaceArrayP) _partInterfaceArray))))

    
(unless (fboundp 'jm_getPartInterfaceArray_0) (defgeneric jm_getPartInterfaceArray_0 (this)))
(defmethod jm_getPartInterfaceArray_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_partInterfaceArrayP)))))

    
(unless (fboundp 'jm_toStringAppend_1) (defgeneric jm_toStringAppend_1 (this p1)))
(defmethod jm_toStringAppend_1 ((this CollidableDestroyableDamageableLayer) _stringBuffer)
  (declare (ignorable this _stringBuffer))
  (let (_commonSeps _positionStrings _groupInterfaceArray _size _index _pickupBehavior)
  (declare (ignorable _commonSeps _positionStrings _groupInterfaceArray _size _index _pickupBehavior))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _positionStrings (PositionStrings.jm_getInstance_0))
        (call-next-method this _stringBuffer)
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE))
        (setf _groupInterfaceArray (jm_getGroupInterface_0 this))
        (setf _size (length _groupInterfaceArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (jm_append_1 _stringBuffer (JR.toString (aref _groupInterfaceArray _index)))
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COMMA)))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _pickupBehavior (jm_getPickupBehavior_0 this))
        (if (not (null _pickupBehavior))
            (progn
            (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE))
            (jm_append_1 _stringBuffer (jm_toString_0 _pickupBehavior))))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE))
        (jm_append_1 _stringBuffer (CollidableDestroyableDamageableLayer.jstatic_READYFOREXPLOSION))
        (jm_appendboolean_1 _stringBuffer (slot-value this 'f_readyForExplosion))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE))
        (jm_append_1 _stringBuffer (slot-value (slot-value this 'f_commonStrings) 'f_INIT))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_X_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_initX))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Y_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_initX))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Z_LABEL))
        (jm_appendint_1 _stringBuffer (slot-value this 'f_initZ)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CollidableDestroyableDamageableLayer))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_toStringAppend_1 this _stringBuffer)
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



