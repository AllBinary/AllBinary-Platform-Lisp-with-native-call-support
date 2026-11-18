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

(defclass CollidableCompositeLayer (AllBinaryGameLayer)
  ((f_collidableInferface :initform nil)))

(defvar CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER :jnone)
(defun CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER ()
  (when (eq CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER :jnone) (setf CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER)
(defun (setf CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER) (value) (setf CollidableCompositeLayer.jcell_NULL_COLLIDABLE_COMPOSITE_LAYER value))

    
(defun CollidableCompositeLayer.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER) (CollidableCompositeLayer.jnew_4 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (RectangleFactory.jstatic_SINGLETON) (ViewPositionBase.jstatic_NULL_VIEW_POSITION) (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)))))
        (return-from jreturn (CollidableCompositeLayer.jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER)))))

    
(defun CollidableCompositeLayer.jnew_4 (_name _layerInfo _viewPosition _collidableBaseBehaviorFactory)
  (declare (ignorable _name _layerInfo _viewPosition _collidableBaseBehaviorFactory))
  (let ((this (make-instance 'CollidableCompositeLayer)))
    (setf (slot-value this 'f_collidableInferface) (jm_createBehavior_0 (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)))
  (let ()
    (block jreturn
        nil
        (if (not (eq _collidableBaseBehaviorFactory (CollidableNeverCollideBehaviorFactory.jm_getInstance_0)))
            (progn
            (jm_setCollidableInferface_1 this (jm_createBehavior_0 _collidableBaseBehaviorFactory))))))
    this))

    
(unless (fboundp 'jm_getArtificialIntelligenceInterface_0) (defgeneric jm_getArtificialIntelligenceInterface_0 (this)))
(defmethod jm_getArtificialIntelligenceInterface_0 ((this CollidableCompositeLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED) this)
        (return-from jreturn (ArtificialIntelligence.jm_getInstance_0)))))

    
(unless (fboundp 'jm_getCollidableInferface_0) (defgeneric jm_getCollidableInferface_0 (this)))
(defmethod jm_getCollidableInferface_0 ((this CollidableCompositeLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_collidableInferface)))))

    
(unless (fboundp 'jm_setCollidableInferface_1) (defgeneric jm_setCollidableInferface_1 (this p1)))
(defmethod jm_setCollidableInferface_1 ((this CollidableCompositeLayer) _collidableInferface)
  (declare (ignorable this _collidableInferface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_collidableInferface) _collidableInferface))))

    
(unless (fboundp 'jm_implmentsCollidableInterface_0) (defgeneric jm_implmentsCollidableInterface_0 (this)))
(defmethod jm_implmentsCollidableInterface_0 ((this CollidableCompositeLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn t))))

    
(unless (fboundp 'jm_toStringAppend_1) (defgeneric jm_toStringAppend_1 (this p1)))
(defmethod jm_toStringAppend_1 ((this CollidableCompositeLayer) _stringBuffer)
  (declare (ignorable this _stringBuffer))
  (let (_commonSeps)
  (declare (ignorable _commonSeps))
    (block jreturn
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (call-next-method this _stringBuffer)
        (jm_append_1 _stringBuffer (slot-value _commonSeps 'f_NEW_LINE))
        (jm_append_1 _stringBuffer (jm_toString_0 (jm_getCollidableInferface_0 this))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CollidableCompositeLayer))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_toStringAppend_1 this _stringBuffer)
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



