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

(defclass AllBinaryLayer (Layer)
  ((f_viewPositionEvent :initform nil)
   (f_halfWidth :initform 0)
   (f_halfHeight :initform 0)
   (f_name :initform nil)
   (f_viewPosition :initform nil)))

(defvar AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER :jnone)
(defun AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER ()
  (when (eq AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER :jnone) (setf AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER (AllBinaryLayer.jnew_3 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION))))
  AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER)
(defun (setf AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER) (value) (setf AllBinaryLayer.jcell_NULL_ALLBINARY_LAYER value))

(defvar AllBinaryLayer.jcell_TYPE :jnone)
(defun AllBinaryLayer.jstatic_TYPE ()
  (when (eq AllBinaryLayer.jcell_TYPE :jnone) (setf AllBinaryLayer.jcell_TYPE "Type: "))
  AllBinaryLayer.jcell_TYPE)
(defun (setf AllBinaryLayer.jstatic_TYPE) (value) (setf AllBinaryLayer.jcell_TYPE value))

    
(defun AllBinaryLayer.jnew_3 (_name _rectangle _viewPosition)
  (declare (ignorable _name _rectangle _viewPosition))
  (let ((this (make-instance 'AllBinaryLayer)))
    (setf (slot-value this 'f_viewPositionEvent) (ViewPositionEvent.jnew_1 this))
    
    
    
    (setf (slot-value this 'f_viewPosition) (ViewPositionBase.jstatic_NULL_VIEW_POSITION))
  (let (_localName _point)
  (declare (ignorable _localName _point))
    (block jreturn
        nil
        (setf _localName nil)
        (setf _localName (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) _name) (slot-value (CommonSeps.jm_getInstance_0) 'f_COLON)) (Integer.jm_toHexString_1 (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)))))
        (setf (slot-value this 'f_name) _localName)
        (setf _point (jm_getPoint_0 _rectangle))
        (jm_setPosition_3 this (jm_getX_0 _point) (jm_getY_0 _point) (jm_getZ_0 _point))
        (jm_setHalfWidth_1 this (ash (jm_getWidth_0 this) (- (logand 1 31))))
        (jm_setHalfHeight_1 this (ash (jm_getHeight_0 this) (- (logand 1 31))))
        (setf (slot-value this 'f_viewPosition) _viewPosition)
        (jm_setAllbinaryLayer_1 (slot-value this 'f_viewPosition) this)))
    this))

    
(unless (fboundp 'jm_setPosition_3) (defgeneric jm_setPosition_3 (this p1 p2 p3)))
(defmethod jm_setPosition_3 ((this AllBinaryLayer) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (call-next-method this _x _y _z))))

    
(unless (fboundp 'jm_moveDXYZ_3) (defgeneric jm_moveDXYZ_3 (this p1 p2 p3)))
(defmethod jm_moveDXYZ_3 ((this AllBinaryLayer) _dx _dy _dz)
  (declare (ignorable this _dx _dy _dz))
  (let ()
    (block jreturn
        (call-next-method this _dx _dy _dz))))

    
(unless (fboundp 'jm_getXP_0) (defgeneric jm_getXP_0 (this)))
(defmethod jm_getXP_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getYP_0) (defgeneric jm_getYP_0 (this)))
(defmethod jm_getYP_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getZP_0) (defgeneric jm_getZP_0 (this)))
(defmethod jm_getZP_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_setVisible_1) (defgeneric jm_setVisible_1 (this p1)))
(defmethod jm_setVisible_1 ((this AllBinaryLayer) _visible)
  (declare (ignorable this _visible))
  (let ()
    (block jreturn
        (call-next-method this _visible))))

    
(unless (fboundp 'jm_isVisible_0) (defgeneric jm_isVisible_0 (this)))
(defmethod jm_isVisible_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this AllBinaryLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_onChangeEvent_1) (defgeneric jm_onChangeEvent_1 (this p1)))
(defmethod jm_onChangeEvent_1 ((this AllBinaryLayer) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this AllBinaryLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getX2_0) (defgeneric jm_getX2_0 (this)))
(defmethod jm_getX2_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getXP_0 this) (jm_getWidth_0 this)))))))

    
(unless (fboundp 'jm_getY2_0) (defgeneric jm_getY2_0 (this)))
(defmethod jm_getY2_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getYP_0 this) (jm_getHeight_0 this)))))))

    
(unless (fboundp 'jm_getZ2_0) (defgeneric jm_getZ2_0 (this)))
(defmethod jm_getZ2_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getZP_0 this) (jm_getDepth_0 this)))))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))

    
(unless (fboundp 'jm_setHalfWidth_1) (defgeneric jm_setHalfWidth_1 (this p1)))
(defmethod jm_setHalfWidth_1 ((this AllBinaryLayer) _halfWidth)
  (declare (ignorable this _halfWidth))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_halfWidth) _halfWidth))))

    
(unless (fboundp 'jm_getHalfWidth_0) (defgeneric jm_getHalfWidth_0 (this)))
(defmethod jm_getHalfWidth_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_halfWidth)))))

    
(unless (fboundp 'jm_setHalfHeight_1) (defgeneric jm_setHalfHeight_1 (this p1)))
(defmethod jm_setHalfHeight_1 ((this AllBinaryLayer) _halfHeight)
  (declare (ignorable this _halfHeight))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_halfHeight) _halfHeight))))

    
(unless (fboundp 'jm_getHalfHeight_0) (defgeneric jm_getHalfHeight_0 (this)))
(defmethod jm_getHalfHeight_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_halfHeight)))))

    
(unless (fboundp 'jm_getHalfDepth_0) (defgeneric jm_getHalfDepth_0 (this)))
(defmethod jm_getHalfDepth_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.idiv (jm_getDepth_0 this) 2)))))

    
(unless (fboundp 'jm_getViewPosition_0) (defgeneric jm_getViewPosition_0 (this)))
(defmethod jm_getViewPosition_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_viewPosition)))))

    
(unless (fboundp 'jm_setViewPosition_1) (defgeneric jm_setViewPosition_1 (this p1)))
(defmethod jm_setViewPosition_1 ((this AllBinaryLayer) _viewPosition)
  (declare (ignorable this _viewPosition))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_viewPosition) _viewPosition))))

    
(unless (fboundp 'jm_getGroupInterface_0) (defgeneric jm_getGroupInterface_0 (this)))
(defmethod jm_getGroupInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (BasicGroupFactory.jm_getInstance_0) 'f_NONE_ARRAY)))))

    
(unless (fboundp 'jm_implmentsTickableInterface_0) (defgeneric jm_implmentsTickableInterface_0 (this)))
(defmethod jm_implmentsTickableInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_implmentsGameInputInterface_0) (defgeneric jm_implmentsGameInputInterface_0 (this)))
(defmethod jm_implmentsGameInputInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_implmentsArtificialIntelligenceCompositeInterface_0) (defgeneric jm_implmentsArtificialIntelligenceCompositeInterface_0 (this)))
(defmethod jm_implmentsArtificialIntelligenceCompositeInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_implmentsCollidableInterface_0) (defgeneric jm_implmentsCollidableInterface_0 (this)))
(defmethod jm_implmentsCollidableInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_implementsThreedInterface_0) (defgeneric jm_implementsThreedInterface_0 (this)))
(defmethod jm_implementsThreedInterface_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isAnyThreed_0 (OpenGLFeatureUtil.jm_getInstance_0))))))

    
(unless (fboundp 'jm_getType_0) (defgeneric jm_getType_0 (this)))
(defmethod jm_getType_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_getMultiPlayerType_0) (defgeneric jm_getMultiPlayerType_0 (this)))
(defmethod jm_getMultiPlayerType_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_toStringAppend_1) (defgeneric jm_toStringAppend_1 (this p1)))
(defmethod jm_toStringAppend_1 ((this AllBinaryLayer) _stringBuffer)
  (declare (ignorable this _stringBuffer))
  (let (_commonSeps _positionStrings _commonLabels)
  (declare (ignorable _commonSeps _positionStrings _commonLabels))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (setf _positionStrings (PositionStrings.jm_getInstance_0))
        (setf _commonLabels (CommonLabels.jm_getInstance_0))
        (jm_append_1 _stringBuffer (jm_getName_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_COLON))
        (jm_append_1 _stringBuffer (AllBinaryLayer.jstatic_TYPE))
        (jm_appendint_1 _stringBuffer (jm_getType_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_X_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getXP_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Y_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getYP_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _positionStrings 'f_Z_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getZP_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_WIDTH_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getWidth_0 this))
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_HEIGHT_LABEL))
        (jm_appendint_1 _stringBuffer (jm_getHeight_0 this)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this AllBinaryLayer))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_toStringAppend_1 this _stringBuffer)
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



