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

(defclass AllBinaryGameLayer (AllBinaryLayer)
  ((f_commonStrings :initform nil)
   (f_basicSetColorUtil :initform nil)
   (f_RED :initform nil)
   (f_paintable :initform nil)
   (f_gameKeyEventList :initform nil)))

    
(defun AllBinaryGameLayer.jm_createPaintable_0 ()
  (let ()
    (block jreturn
        (if (SWTUtil.jstatic_isSWT)
            (progn
            (return-from jreturn (SWTBlackPaintable.jnew_0))))
        (return-from jreturn (NullPaintable.jm_getInstance_0)))))

    
(defun AllBinaryGameLayer.jnew_3 (_name _layerInfo _viewPosition)
  (declare (ignorable _name _layerInfo _viewPosition))
  (let ((this (make-instance 'AllBinaryGameLayer)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_basicSetColorUtil) (BasicColorSetUtil.jm_getInstance_0))
    (setf (slot-value this 'f_RED) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_RED))
    (setf (slot-value this 'f_paintable) (AllBinaryGameLayer.jm_createPaintable_0))
    (setf (slot-value this 'f_gameKeyEventList) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this AllBinaryGameLayer) _gl)
  (declare (ignorable this _gl))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_move_0) (defgeneric jm_move_0 (this)))
(defmethod jm_move_0 ((this AllBinaryGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getGameKeyEventList_0) (defgeneric jm_getGameKeyEventList_0 (this)))
(defmethod jm_getGameKeyEventList_0 ((this AllBinaryGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_gameKeyEventList)))))

    
(unless (fboundp 'jm_processInput_1) (defgeneric jm_processInput_1 (this p1)))
(defmethod jm_processInput_1 ((this AllBinaryGameLayer) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_processTick_1) (defgeneric jm_processTick_1 (this p1)))
(defmethod jm_processTick_1 ((this AllBinaryGameLayer) _allBinaryLayerManager)
  (declare (ignorable this _allBinaryLayerManager))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" (slot-value (slot-value this 'f_commonStrings) 'f_NOT_IMPLEMENTED))))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this AllBinaryGameLayer) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onViewPositionChangeEvent_0) (defgeneric jm_onViewPositionChangeEvent_0 (this)))
(defmethod jm_onViewPositionChangeEvent_0 ((this AllBinaryGameLayer))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_onChangeEvent_1 this (slot-value this 'f_viewPositionEvent)))))

    
(unless (fboundp 'jm_onChangeEvent_1) (defgeneric jm_onChangeEvent_1 (this p1)))
(defmethod jm_onChangeEvent_1 ((this AllBinaryGameLayer) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (let ()
    (block jreturn
        (if (GameLayerUtil.jm_isOnScreen_1 this)
            (progn
            (jm_setVisible_1 this t))
            (progn
            (jm_setVisible_1 this nil))))))

    
(unless (fboundp 'jm_paintFirst_1) (defgeneric jm_paintFirst_1 (this p1)))
(defmethod jm_paintFirst_1 ((this AllBinaryGameLayer) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_paintable) _graphics))))

    
(unless (fboundp 'jm_paintDebug_1) (defgeneric jm_paintDebug_1 (this p1)))
(defmethod jm_paintDebug_1 ((this AllBinaryGameLayer) _graphics)
  (declare (ignorable this _graphics))
  (let (_viewPosition _viewX _viewY)
  (declare (ignorable _viewPosition _viewX _viewY))
    (block jreturn
        (setf _viewPosition (jm_getViewPosition_0 this))
        (setf _viewX (jm_getX_0 _viewPosition))
        (setf _viewY (jm_getY_0 _viewPosition))
        (jm_setBasicColorP_2 (slot-value this 'f_basicSetColorUtil) _graphics (slot-value this 'f_RED))
        (jm_drawRect_4 _graphics _viewX _viewY (jm_getWidth_0 this) (jm_getHeight_0 this)))))

    
(unless (fboundp 'jm_setWidth_1) (defgeneric jm_setWidth_1 (this p1)))
(defmethod jm_setWidth_1 ((this AllBinaryGameLayer) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (jm_setLayerWidth_1 this _width)
        (jm_setHalfWidth_1 this (ash _width (- (logand 1 31)))))))

    
(unless (fboundp 'jm_setHeight_1) (defgeneric jm_setHeight_1 (this p1)))
(defmethod jm_setHeight_1 ((this AllBinaryGameLayer) _height)
  (declare (ignorable this _height))
  (let ()
    (block jreturn
        (jm_setLayerHeight_1 this _height)
        (jm_setHalfHeight_1 this (ash _height (- (logand 1 31)))))))



