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
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CommandCurrentSelectionForm (ScrollCurrentSelectionForm)
  ((f_selectedAnimationArray :initform nil)
   (f_unSelectedAnimationArray :initform nil)))

    
(defun CommandCurrentSelectionForm.jnew_6 (_title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CommandCurrentSelectionForm)))
    (setf (slot-value this 'f_selectedAnimationArray) (JR.newArray nil 16))
    (setf (slot-value this 'f_unSelectedAnimationArray) (JR.newArray nil 16))
  (let ()
    (block jreturn
        nil
        (jm_initAnimations_0 this)
        (jm_addAll_1 this _items)))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this CommandCurrentSelectionForm) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_updateAll_2 this _graphics (jm_getAllitems_0 this))
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_initAnimations_0) (defgeneric jm_initAnimations_0 (this)))
(defmethod jm_initAnimations_0 ((this CommandCurrentSelectionForm))
  (declare (ignorable this))
  (let (_nullAnimation _index)
  (declare (ignorable _nullAnimation _index))
    (block jreturn
        (setf _nullAnimation (jm_getInstance_1 (NullAnimationFactory.jm_getFactoryInstance_0) 0))
        (progn
            (setf _index (length (slot-value this 'f_selectedAnimationArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_selectedAnimationArray) _index) _nullAnimation)))))
        (progn
            (setf _index (length (slot-value this 'f_unSelectedAnimationArray)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_unSelectedAnimationArray) _index) _nullAnimation))))))))

    
(unless (fboundp 'jm_addAll_1) (defgeneric jm_addAll_1 (this p1)))
(defmethod jm_addAll_1 ((this CommandCurrentSelectionForm) _items)
  (declare (ignorable this _items))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (length _items))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_addAt_2 this _index (aref _items _index)))))))))

    
(unless (fboundp 'jm_addAt_2) (defgeneric jm_addAt_2 (this p1 p2)))
(defmethod jm_addAt_2 ((this CommandCurrentSelectionForm) _index _item)
  (declare (ignorable this _index _item))
  (let (_basicColorFactory _buttonColor _selectedButtonColor _width _height _adjustedBorder _offset _rectWidth _rectHeight)
  (declare (ignorable _basicColorFactory _buttonColor _selectedButtonColor _width _height _adjustedBorder _offset _rectWidth _rectHeight))
    (block jreturn
        (setf _basicColorFactory (BasicColorFactory.jm_getInstance_0))
        (setf _buttonColor (slot-value _basicColorFactory 'f_TRANSPARENT_GREY))
        (setf _selectedButtonColor (slot-value _basicColorFactory 'f_TRANSPARENT_RED))
        (setf _width (jm_getMinimumWidth_0 _item))
        (setf _height (jm_getMinimumHeight_0 _item))
        (setf _adjustedBorder 3)
        (setf _offset (JR.i32 (- (JR.i32 (+ (slot-value this 'f_halfBorder) _adjustedBorder)))))
        (setf _rectWidth (JR.i32 (- (JR.i32 (+ _width (slot-value this 'f_border))) _adjustedBorder)))
        (setf _rectHeight (JR.i32 (- (JR.i32 (+ _height (slot-value this 'f_border))) _adjustedBorder)))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            (setf (aref (slot-value this 'f_selectedAnimationArray) _index) (RectangleAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor)))
            (progn
            (setf (aref (slot-value this 'f_selectedAnimationArray) _index) (RectangleFilledAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _selectedButtonColor))))
        (setf _adjustedBorder 4)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            (setf (aref (slot-value this 'f_unSelectedAnimationArray) _index) (RectangleAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor)))
            (progn
            (setf (aref (slot-value this 'f_unSelectedAnimationArray) _index) (RectangleFilledAdjustedAnimation.jnew_5 _rectWidth _rectHeight _offset _offset _buttonColor)))))))

    
(unless (fboundp 'jm_updateAll_2) (defgeneric jm_updateAll_2 (this p1 p2)))
(defmethod jm_updateAll_2 ((this CommandCurrentSelectionForm) _graphics _items)
  (declare (ignorable this _graphics _items))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (length _items))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (jm_preMeasurement_1 (aref _items _index) _graphics)
            (jm_updateAt_2 this _index (aref _items _index)))))))))

    
(unless (fboundp 'jm_updateAt_2) (defgeneric jm_updateAt_2 (this p1 p2)))
(defmethod jm_updateAt_2 ((this CommandCurrentSelectionForm) _index _item)
  (declare (ignorable this _index _item))
  (let (_basicColorFactory _buttonColor _selectedButtonColor _width _height _adjustedBorder _offset _rectWidth _rectHeight _rectangleAdjustedAnimation)
  (declare (ignorable _basicColorFactory _buttonColor _selectedButtonColor _width _height _adjustedBorder _offset _rectWidth _rectHeight _rectangleAdjustedAnimation))
    (block jreturn
        (setf _basicColorFactory (BasicColorFactory.jm_getInstance_0))
        (setf _buttonColor (slot-value _basicColorFactory 'f_TRANSPARENT_GREY))
        (setf _selectedButtonColor (slot-value _basicColorFactory 'f_TRANSPARENT_RED))
        (setf _width (jm_getMinimumWidth_0 _item))
        (setf _height (jm_getMinimumHeight_0 _item))
        (setf _adjustedBorder 3)
        (setf _offset (JR.i32 (- (JR.i32 (+ (slot-value this 'f_halfBorder) _adjustedBorder)))))
        (setf _rectWidth (JR.i32 (- (JR.i32 (+ _width (slot-value this 'f_border))) _adjustedBorder)))
        (setf _rectHeight (JR.i32 (- (JR.i32 (+ _height (slot-value this 'f_border))) _adjustedBorder)))
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            (setf _rectangleAdjustedAnimation (aref (slot-value this 'f_selectedAnimationArray) _index))
            (jm_setWidth_1 _rectangleAdjustedAnimation _rectWidth)
            (jm_setHeight_1 _rectangleAdjustedAnimation _rectHeight)
            (jm_setOffsetX_1 _rectangleAdjustedAnimation _offset)
            (jm_setOffsetY_1 _rectangleAdjustedAnimation _offset)
            (jm_setBasicColorP_1 _rectangleAdjustedAnimation _selectedButtonColor))
            (progn
            (setf _rectangleAdjustedAnimation (aref (slot-value this 'f_selectedAnimationArray) _index))
            (jm_setWidth_1 _rectangleAdjustedAnimation _rectWidth)
            (jm_setHeight_1 _rectangleAdjustedAnimation _rectHeight)
            (jm_setOffsetX_1 _rectangleAdjustedAnimation _offset)
            (jm_setOffsetY_1 _rectangleAdjustedAnimation _offset)
            (jm_setBasicColorP_1 _rectangleAdjustedAnimation _selectedButtonColor)))
        (setf _adjustedBorder 4)
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            (setf _rectangleAdjustedAnimation (aref (slot-value this 'f_unSelectedAnimationArray) _index))
            (jm_setWidth_1 _rectangleAdjustedAnimation _rectWidth)
            (jm_setHeight_1 _rectangleAdjustedAnimation _rectHeight)
            (jm_setOffsetX_1 _rectangleAdjustedAnimation _offset)
            (jm_setOffsetY_1 _rectangleAdjustedAnimation _offset)
            (jm_setBasicColorP_1 _rectangleAdjustedAnimation _buttonColor))
            (progn
            (setf _rectangleAdjustedAnimation (aref (slot-value this 'f_unSelectedAnimationArray) _index))
            (jm_setWidth_1 _rectangleAdjustedAnimation _rectWidth)
            (jm_setHeight_1 _rectangleAdjustedAnimation _rectHeight)
            (jm_setOffsetX_1 _rectangleAdjustedAnimation _offset)
            (jm_setOffsetY_1 _rectangleAdjustedAnimation _offset)
            (jm_setBasicColorP_1 _rectangleAdjustedAnimation _buttonColor))))))

    
(unless (fboundp 'jm_getSelectedCommand_0) (defgeneric jm_getSelectedCommand_0 (this)))
(defmethod jm_getSelectedCommand_0 ((this CommandCurrentSelectionForm))
  (declare (ignorable this))
  (let (_index _commandTextItem)
  (declare (ignorable _index _commandTextItem))
    (block jreturn
        (setf _index (jm_getSelectedIndex_0 this))
        (setf _commandTextItem (jm_get_1 this _index))
        (return-from jreturn (jm_getCommand_0 _commandTextItem)))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this CommandCurrentSelectionForm) _item)
  (declare (ignorable this _item))
  (let (_result)
  (declare (ignorable _result))
    (block jreturn
        (setf _result (call-next-method this _item))
        (jm_addAt_2 this _result _item)
        (return-from jreturn _result))))

    
(unless (fboundp 'jm_delete_1) (defgeneric jm_delete_1 (this p1)))
(defmethod jm_delete_1 ((this CommandCurrentSelectionForm) _itemNum)
  (declare (ignorable this _itemNum))
  (let ()
    (block jreturn
        (call-next-method this _itemNum))))

    
(unless (fboundp 'jm_deleteAll_0) (defgeneric jm_deleteAll_0 (this)))
(defmethod jm_deleteAll_0 ((this CommandCurrentSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_initAnimations_0 this)
        (call-next-method this))))

    
(unless (fboundp 'jm_insert_2) (defgeneric jm_insert_2 (this p1 p2)))
(defmethod jm_insert_2 ((this CommandCurrentSelectionForm) _itemNum _item)
  (declare (ignorable this _itemNum _item))
  (let ()
    (block jreturn
        (call-next-method this _itemNum _item))))

    
(unless (fboundp 'jm_set_2) (defgeneric jm_set_2 (this p1 p2)))
(defmethod jm_set_2 ((this CommandCurrentSelectionForm) _itemNum _item)
  (declare (ignorable this _itemNum _item))
  (let ()
    (block jreturn
        (call-next-method this _itemNum _item))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this CommandCurrentSelectionForm) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_paintItem_5) (defgeneric jm_paintItem_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintItem_5 ((this CommandCurrentSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (aref (slot-value this 'f_selectedAnimationArray) _index) _graphics _x _y)
        (return-from jreturn (call-next-method this _graphics _index _item _x _y)))))

    
(unless (fboundp 'jm_paintUnselectedItem_5) (defgeneric jm_paintUnselectedItem_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintUnselectedItem_5 ((this CommandCurrentSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (aref (slot-value this 'f_unSelectedAnimationArray) _index) _graphics _x _y)
        (return-from jreturn (call-next-method this _graphics _index _item _x _y)))))



