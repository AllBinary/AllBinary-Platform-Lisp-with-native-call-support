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

(defclass CountedLayersHudPaintable (JObject)
  ((f_displayInfoSingleton :initform nil)
   (f_partInterfaceArray :initform nil)
   (f_countedTotalStringColor :initform 0)
   (f_countedPartsBorder :initform 0)
   (f_startIndex :initform 0)
   (f_dropSize :initform 0)
   (f_myFontProcessor :initform nil)
   (f_height :initform 0)))

(defvar CountedLayersHudPaintable.jcell_XXStringWidth :jnone)
(defun CountedLayersHudPaintable.jstatic_XXStringWidth ()
  (when (eq CountedLayersHudPaintable.jcell_XXStringWidth :jnone) (setf CountedLayersHudPaintable.jcell_XXStringWidth 0))
  CountedLayersHudPaintable.jcell_XXStringWidth)
(defun (setf CountedLayersHudPaintable.jstatic_XXStringWidth) (value) (setf CountedLayersHudPaintable.jcell_XXStringWidth value))

    
(defun CountedLayersHudPaintable.jnew_5 (_partInterfaceArray _dropSize _startIndex _countedTotalStringColor _countedPartsBorder)
  (declare (ignorable _partInterfaceArray _dropSize _startIndex _countedTotalStringColor _countedPartsBorder))
  (let ((this (make-instance 'CountedLayersHudPaintable)))
    (setf (slot-value this 'f_displayInfoSingleton) (DisplayInfoSingleton.jm_getInstance_0))
    
    
    
    
    
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_partInterfaceArray) _partInterfaceArray)
        (setf (slot-value this 'f_startIndex) _startIndex)
        (setf (slot-value this 'f_countedTotalStringColor) _countedTotalStringColor)
        (setf (slot-value this 'f_countedPartsBorder) _countedPartsBorder)
        (setf (slot-value this 'f_dropSize) _dropSize)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CountedLayersHudPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _XXString)
  (declare (ignorable _font _XXString))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_height) (jm_getHeight_0 _font))
        (if (> (slot-value this 'f_dropSize) (jm_getHeight_0 _font))
            (progn
            (setf (slot-value this 'f_height) (slot-value this 'f_dropSize))))
        (if (= (CountedLayersHudPaintable.jstatic_XXStringWidth) 0)
            (progn
            (setf _XXString "XX")
            (setf (CountedLayersHudPaintable.jstatic_XXStringWidth) (jm_stringWidth_1 _font _XXString))))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this CountedLayersHudPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_lastWidth _widthEdge _size _count _y _countedLayerInterfaceFactory _pickedUpLayerInterfaceFactoryInterface _layerInterface _charArray _index)
  (declare (ignorable _lastWidth _widthEdge _size _count _y _countedLayerInterfaceFactory _pickedUpLayerInterfaceFactoryInterface _layerInterface _charArray _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _lastWidth (jm_getLastWidth_0 (slot-value this 'f_displayInfoSingleton)))
        (setf _widthEdge (JR.i32 (- _lastWidth (slot-value this 'f_dropSize))))
        (setf _size (length (slot-value this 'f_partInterfaceArray)))
        (setf _count 0)
        (setf _y 0)
        (setf _countedLayerInterfaceFactory nil)
        (setf _pickedUpLayerInterfaceFactoryInterface nil)
        (setf _layerInterface nil)
        (setf _charArray nil)
        (progn
            (setf _index (slot-value this 'f_startIndex))
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _countedLayerInterfaceFactory (aref (slot-value this 'f_partInterfaceArray) _index))
            (if (> (jm_getTotal_0 _countedLayerInterfaceFactory) 0)
                (progn
                (setf _pickedUpLayerInterfaceFactoryInterface (jm_getCountedPickedUpLayerInterfaceFactory_0 _countedLayerInterfaceFactory))
                (setf _layerInterface (jm_getIconLayer_0 _pickedUpLayerInterfaceFactoryInterface))
                (setf _y (JR.i32 (+ 40 (JR.i32 (* _count (slot-value this 'f_height))))))
                (jm_setPosition_3 _layerInterface _widthEdge _y (jm_getZP_0 _layerInterface))
                (jm_paint_1 _layerInterface _graphics)
                (jm_setColor_1 _graphics (slot-value this 'f_countedTotalStringColor))
                (jm_paint_1 _countedLayerInterfaceFactory _graphics)
                (setf _charArray (jm_getTotalString_0 _countedLayerInterfaceFactory))
                (jm_drawChars_6 _graphics _charArray 0 (length _charArray) (JR.i32 (- _widthEdge (jm_getXOffset_0 _countedLayerInterfaceFactory))) _y 0)
                (setf _count (JR.i32 (+ _count 1))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (if (> _count 0)
            (progn
            (jm_setColor_1 _graphics (slot-value this 'f_countedPartsBorder))
            (jm_drawRect_4 _graphics (JR.i32 (- _lastWidth (JR.i32 (+ (CountedLayersHudPaintable.jstatic_XXStringWidth) (slot-value this 'f_dropSize))))) 40 (JR.i32 (+ (CountedLayersHudPaintable.jstatic_XXStringWidth) (slot-value this 'f_dropSize))) (JR.i32 (+ (JR.i32 (* _count (slot-value this 'f_height))) 3))))))))

    
(unless (fboundp 'jm_paintThreed_1) (defgeneric jm_paintThreed_1 (this p1)))
(defmethod jm_paintThreed_1 ((this CountedLayersHudPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))



