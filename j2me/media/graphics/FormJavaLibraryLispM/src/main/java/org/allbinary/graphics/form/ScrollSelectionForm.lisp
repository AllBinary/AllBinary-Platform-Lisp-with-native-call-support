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

(defclass ScrollSelectionForm (PaintableForm)
  ((f_rectangleCollisionUtil :initform nil)
   (f_border :initform 0)
   (f_halfBorder :initform 0)
   (f_buttonBasicColor :initform nil)
   (f_scrollSelectionFormFormTypeItemIndexPaintable :initform nil)
   (f_formTypeItemIndexDx :initform nil)
   (f_paintable :initform nil)
   (f_adjustedExtraBorder :initform 0)))

(defvar ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM :jnone)
(defun ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM ()
  (when (eq ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM :jnone) (setf ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM)
(defun (setf ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM) (value) (setf ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_FORM value))

(defvar ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM :jnone)
(defun ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM ()
  (when (eq ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM :jnone) (setf ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)
(defun (setf ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) (value) (setf ScrollSelectionForm.jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM value))

(defvar ScrollSelectionForm.jcell_INSIDE_FORM :jnone)
(defun ScrollSelectionForm.jstatic_INSIDE_FORM ()
  (when (eq ScrollSelectionForm.jcell_INSIDE_FORM :jnone) (setf ScrollSelectionForm.jcell_INSIDE_FORM " inside form"))
  ScrollSelectionForm.jcell_INSIDE_FORM)
(defun (setf ScrollSelectionForm.jstatic_INSIDE_FORM) (value) (setf ScrollSelectionForm.jcell_INSIDE_FORM value))

(defvar ScrollSelectionForm.jcell_IS_IN_FORM :jnone)
(defun ScrollSelectionForm.jstatic_IS_IN_FORM ()
  (when (eq ScrollSelectionForm.jcell_IS_IN_FORM :jnone) (setf ScrollSelectionForm.jcell_IS_IN_FORM "isInForm"))
  ScrollSelectionForm.jcell_IS_IN_FORM)
(defun (setf ScrollSelectionForm.jstatic_IS_IN_FORM) (value) (setf ScrollSelectionForm.jcell_IS_IN_FORM value))

(defvar ScrollSelectionForm.jcell_GET_SELECTED_INDEX :jnone)
(defun ScrollSelectionForm.jstatic_GET_SELECTED_INDEX ()
  (when (eq ScrollSelectionForm.jcell_GET_SELECTED_INDEX :jnone) (setf ScrollSelectionForm.jcell_GET_SELECTED_INDEX "getSelectedIndexForPoint"))
  ScrollSelectionForm.jcell_GET_SELECTED_INDEX)
(defun (setf ScrollSelectionForm.jstatic_GET_SELECTED_INDEX) (value) (setf ScrollSelectionForm.jcell_GET_SELECTED_INDEX value))

    
(defun ScrollSelectionForm.jm_createForm_6 (_title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor))
  (let (_commonStrings _logUtil)
  (declare (ignorable _commonStrings _logUtil))
    (block jreturn
        (handler-case (progn
            (if (eq _formPaintableFactory (ItemPaintableFactory.jm_getInstance_0))
                (progn
                (return-from jreturn (ScrollSelectionForm.jnew_7 _title _items _formPaintableFactory _border (JR.i32 (- 3)) _backgroundBasicColor _foregroundBasicColor)))
                (progn
                (setf _commonStrings (CommonStrings.jm_getInstance_0))
                (setf _logUtil (LogUtil.jm_getInstance_0))
                (jm_putF_3 _logUtil (slot-value _commonStrings 'f_EXCEPTION) _logUtil (slot-value _commonStrings 'f_EXCEPTION))
                (return-from jreturn (PaintableForm.jm_getNullPaintableForm_0)))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) _logUtil (slot-value _commonStrings 'f_EXCEPTION) _e)
            (return-from jreturn (PaintableForm.jm_getNullPaintableForm_0)))))))

    
(defun ScrollSelectionForm.jm_getNullScrollSelectionForm_0 ()
  (let ()
    (block jreturn
        (if (eq (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM) (ScrollSelectionForm.jm_createForm_6 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.newArray nil 0) (ItemPaintableFactory.jm_getInstance_0) 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_FORM)))))

    
(defun ScrollSelectionForm.jm_getNullScrollSelectionFormHorizontal_0 ()
  (let ()
    (block jreturn
        (if (eq (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) (ScrollSelectionForm.jm_createForm_6 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.newArray nil 0) (ItemPaintableFactory.jm_getInstance_0) 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_BLACK) (slot-value (BasicColorFactory.jm_getInstance_0) 'f_WHITE)))))
        (return-from jreturn (ScrollSelectionForm.jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM)))))

    
(defun ScrollSelectionForm.jnew_7 (_title _items _formPaintableFactory _border _adjustedExtraBorder _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _formPaintableFactory _border _adjustedExtraBorder _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ScrollSelectionForm)))
    (setf (slot-value this 'f_rectangleCollisionUtil) (RectangleCollisionUtil.jm_getInstance_0))
    
    
    
    (setf (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) (ItemIndexPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_formTypeItemIndexDx) (ItemIndexDx.jm_getInstance_0))
    (setf (slot-value this 'f_paintable) (ItemPaintableFactory.jm_getInstance_0))
    
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_adjustedExtraBorder) _adjustedExtraBorder)
        (setf (slot-value this 'f_buttonBasicColor) _foregroundBasicColor)
        (setf (slot-value this 'f_border) _border)
        (setf (slot-value this 'f_halfBorder) (ash _border (- (logand 1 31))))
        (setf (slot-value this 'f_paintable) (jm_getInstanceItemPaintable_1 _formPaintableFactory this))))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this ScrollSelectionForm) _rectangle _formType)
  (declare (ignorable this _rectangle _formType))
  (let (_formTypeFactory)
  (declare (ignorable _formTypeFactory))
    (block jreturn
        (call-next-method this _rectangle _formType)
        (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq _formType (slot-value _formTypeFactory 'f_HORIZONTAL_FORM))
            (progn
            (setf (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormHorizontalPaintable.jnew_1 this))
            (setf (slot-value this 'f_formTypeItemIndexDx) (ScrollSelectionFormHorizontalDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
            (progn
            (setf (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormVerticalPaintable.jnew_1 this))
            (setf (slot-value this 'f_formTypeItemIndexDx) (ScrollSelectionFormVericalDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_TEMP_HORIZONTAL_FORM))
            (progn
            (setf (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) (ScrollSelectionFormTempHorizontalPaintable.jnew_1 this))
            (setf (slot-value this 'f_formTypeItemIndexDx) (ScrollSelectionFormTempHorizontalDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_NULL_FORM_TYPE))
            (progn
            nil)
            (progn
            (error (JR.newException "Exception" (slot-value _formTypeFactory 'f_UNK)))))))))))

    
(unless (fboundp 'jm_paintItemHorizontal_5) (defgeneric jm_paintItemHorizontal_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintItemHorizontal_5 ((this ScrollSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let (_width)
  (declare (ignorable _width))
    (block jreturn
        (setf _width (jm_getMinimumWidth_0 _item))
        (return-from jreturn (JR.i32 (+ (JR.i32 (+ _x _width)) (slot-value this 'f_border)))))))

    
(unless (fboundp 'jm_paintItemVertical_5) (defgeneric jm_paintItemVertical_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintItemVertical_5 ((this ScrollSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let (_height)
  (declare (ignorable _height))
    (block jreturn
        (setf _height (jm_getMinimumHeight_0 _item))
        (return-from jreturn (JR.i32 (+ (JR.i32 (+ _y _height)) (slot-value this 'f_border)))))))

    
(unless (fboundp 'jm_paintItemTempHorizontal_5) (defgeneric jm_paintItemTempHorizontal_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintItemTempHorizontal_5 ((this ScrollSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getSelectedIndexForPointHorizontalDx_4) (defgeneric jm_getSelectedIndexForPointHorizontalDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getSelectedIndexForPointHorizontalDx_4 ((this ScrollSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (- _dx (slot-value this 'f_halfBorder)))))))

    
(unless (fboundp 'jm_getSelectedIndexForPointVerticalDx_4) (defgeneric jm_getSelectedIndexForPointVerticalDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getSelectedIndexForPointVerticalDx_4 ((this ScrollSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ _dx (jm_getDiffX_1 this _item)))))))

    
(unless (fboundp 'jm_getSelectedIndexForPointTempHorizontalDx_4) (defgeneric jm_getSelectedIndexForPointTempHorizontalDx_4 (this p1 p2 p3 p4)))
(defmethod jm_getSelectedIndexForPointTempHorizontalDx_4 ((this ScrollSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ _dx (jm_getDiffX_1 this _item)))))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this ScrollSelectionForm) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn
        (return-from jreturn (call-next-method this _item)))))

    
(unless (fboundp 'jm_getSelectedItem_1) (defgeneric jm_getSelectedItem_1 (this p1)))
(defmethod jm_getSelectedItem_1 ((this ScrollSelectionForm) _point)
  (declare (ignorable this _point))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (setf _index (jm_getSelectedIndexForPoint_1 this _point))
        (if (/= _index (JR.i32 (- 1)))
            (progn
            (return-from jreturn (jm_get_1 this _index)))
            (progn
            (return-from jreturn (ABCustomItem.jm_getNullInstance_0)))))))

    
(unless (fboundp 'jm_getItemIndex_1) (defgeneric jm_getItemIndex_1 (this p1)))
(defmethod jm_getItemIndex_1 ((this ScrollSelectionForm) _item)
  (declare (ignorable this _item))
  (let (_nextItem _size _index)
  (declare (ignorable _nextItem _size _index))
    (block jreturn
        (setf _nextItem nil)
        (setf _size (jm_size_0 this))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextItem (jm_get_1 this _index))
            (if (eq _nextItem _item)
                (progn
                (return-from jreturn _index))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_getStartIndex_0) (defgeneric jm_getStartIndex_0 (this)))
(defmethod jm_getStartIndex_0 ((this ScrollSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getSelectedIndexForPoint_1) (defgeneric jm_getSelectedIndexForPoint_1 (this p1)))
(defmethod jm_getSelectedIndexForPoint_1 ((this ScrollSelectionForm) _point)
  (declare (ignorable this _point))
  (let (_start _size _dx _dy _formTypeFactory _commonLabels _stringBuffer _item _width _height _diffX _index)
  (declare (ignorable _start _size _dx _dy _formTypeFactory _commonLabels _stringBuffer _item _width _height _diffX _index))
    (block jreturn
        (setf _start (jm_getStartIndex_0 this))
        (setf _size (jm_size_0 this))
        (setf _dx (jm_getDx_0 this))
        (setf _dy (jm_getDy_0 this))
        (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (setf _commonLabels (CommonLabels.jm_getInstance_0))
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_START_LABEL))
        (jm_appendint_1 _stringBuffer _start)
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_TOTAL_LABEL))
        (jm_appendint_1 _stringBuffer _size)
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (ScrollSelectionForm.jstatic_GET_SELECTED_INDEX))
        (setf _item nil)
        (setf _width 0)
        (setf _height 0)
        (setf _diffX 0)
        (progn
            (setf _index _start)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _item (jm_get_1 this _index))
            (setf _width (jm_getMinimumWidth_0 _item))
            (setf _height (jm_getMinimumHeight_0 _item))
            (setf _diffX (jm_getDx_4 (slot-value this 'f_formTypeItemIndexDx) _index _item _dx _dy))
            (if (jm_isInside_6 (slot-value this 'f_rectangleCollisionUtil) _diffX (JR.i32 (- _dy (slot-value this 'f_halfBorder))) (JR.i32 (+ (JR.i32 (+ _diffX _width)) (slot-value this 'f_border))) (JR.i32 (+ (JR.i32 (+ (JR.i32 (+ _dy _height)) (slot-value this 'f_halfBorder))) 1)) (jm_getX_0 _point) (jm_getY_0 _point))
                (progn
                (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
                (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_ITEM_LABEL))
                (jm_append_1 _stringBuffer (jm_getLabel_0 _item))
                (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
                (jm_append_1 _stringBuffer (slot-value _commonLabels 'f_INDEX_LABEL))
                (jm_appendint_1 _stringBuffer _index)
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this (ScrollSelectionForm.jstatic_GET_SELECTED_INDEX))
                (return-from jreturn _index)))
            (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_HORIZONTAL_FORM))
                (progn
                (setf _dx (JR.i32 (+ (JR.i32 (+ _dx _width)) (slot-value this 'f_border))))
                (if (> _dx (jm_getMaxX_0 (slot-value this 'f_rectangle)))
                    (progn
                    (return-from jbreak))))
                (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
                (progn
                (setf _dy (JR.i32 (+ (JR.i32 (+ _dy _height)) (slot-value this 'f_border))))
                (if (> _dy (jm_getMaxY_0 (slot-value this 'f_rectangle)))
                    (progn
                    (return-from jbreak))))
                (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_NULL_FORM_TYPE))
                (progn
                nil)
                (progn
                (error (JR.newException "Exception" (slot-value _formTypeFactory 'f_UNK))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_processInputKey_1) (defgeneric jm_processInputKey_1 (this p1)))
(defmethod jm_processInputKey_1 ((this ScrollSelectionForm) _gameKeyCode)
  (declare (ignorable this _gameKeyCode))
  (let (_formTypeFactory _index _max)
  (declare (ignorable _formTypeFactory _index _max))
    (block jreturn
        (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (= (jm_size_0 this) 0)
            (progn
            (return-from jreturn (JR.i32 (- 1)))))
        (setf _index (jm_getSelectedIndex_0 this))
        (if (or (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_HORIZONTAL_FORM)) (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_TEMP_HORIZONTAL_FORM)))
            (progn
            (if (= _gameKeyCode (Canvas.jstatic_RIGHT))
                (progn
                (setf _index (JR.i32 (+ _index 1))))
                (if (= _gameKeyCode (Canvas.jstatic_LEFT))
                (progn
                (setf _index (JR.i32 (- _index 1)))))))
            (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
            (progn
            (if (= _gameKeyCode (Canvas.jstatic_DOWN))
                (progn
                (setf _index (JR.i32 (+ _index 1))))
                (if (= _gameKeyCode (Canvas.jstatic_UP))
                (progn
                (setf _index (JR.i32 (- _index 1)))))))
            (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_NULL_FORM_TYPE))
            (progn
            nil)
            (progn
            (error (JR.newException "Exception" (slot-value _formTypeFactory 'f_UNK)))))))
        (setf _max (JR.i32 (- (jm_size_0 this) 1)))
        (if (< _index 0)
            (progn
            (jm_setSelectedIndex_1 this 0))
            (if (> _index _max)
            (progn
            (jm_setSelectedIndex_1 this _max))
            (progn
            (jm_setSelectedIndex_1 this _index))))
        (return-from jreturn (JR.i32 (- 1))))))

    
(unless (fboundp 'jm_isInForm_1) (defgeneric jm_isInForm_1 (this p1)))
(defmethod jm_isInForm_1 ((this ScrollSelectionForm) _point)
  (declare (ignorable this _point))
  (let ()
    (block jreturn
        (if (jm_isInside_6 (slot-value this 'f_rectangleCollisionUtil) (slot-value this 'f_x) (JR.i32 (- (slot-value this 'f_y) (slot-value this 'f_halfBorder))) (JR.i32 (+ (jm_getMaxX_0 (slot-value this 'f_rectangle)) (slot-value this 'f_border))) (JR.i32 (+ (jm_getMaxY_0 (slot-value this 'f_rectangle)) (slot-value this 'f_border))) (jm_getX_0 _point) (jm_getY_0 _point))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (jm_toString_1 (StringUtil.jm_getInstance_0) _point)) (ScrollSelectionForm.jstatic_INSIDE_FORM))) this (ScrollSelectionForm.jstatic_IS_IN_FORM))
            (return-from jreturn t)))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_paintItem_5) (defgeneric jm_paintItem_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintItem_5 ((this ScrollSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let (_width _height _adjustedBorder)
  (declare (ignorable _width _height _adjustedBorder))
    (block jreturn
        (jm_paintXY_3 _item _graphics _x _y)
        (setf _width (jm_getMinimumWidth_0 _item))
        (setf _height (jm_getMinimumHeight_0 _item))
        (jm_setColor_1 _graphics (jm_intValue_0 (jm_getButtonBasicColor_0 this)))
        (setf _adjustedBorder 3)
        (jm_drawRect_4 _graphics (JR.i32 (- (JR.i32 (- _x (slot-value this 'f_halfBorder))) _adjustedBorder)) (JR.i32 (- (JR.i32 (- _y (slot-value this 'f_halfBorder))) _adjustedBorder)) (JR.i32 (+ (JR.i32 (+ _width (slot-value this 'f_border))) (slot-value this 'f_adjustedExtraBorder))) (JR.i32 (+ (JR.i32 (+ _height (slot-value this 'f_border))) (slot-value this 'f_adjustedExtraBorder))))
        (return-from jreturn (jm_paint_5 (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) _graphics _index _item _x _y)))))

    
(unless (fboundp 'jm_paintUnselectedItem_5) (defgeneric jm_paintUnselectedItem_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintUnselectedItem_5 ((this ScrollSelectionForm) _graphics _index _item _x _y)
  (declare (ignorable this _graphics _index _item _x _y))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (jm_intValue_0 (jm_getButtonBasicColor_0 this)))
        (jm_paintUnselected_3 _item _graphics _x _y)
        (return-from jreturn (jm_paint_5 (slot-value this 'f_scrollSelectionFormFormTypeItemIndexPaintable) _graphics _index _item _x _y)))))

    
(unless (fboundp 'jm_getDiffX_1) (defgeneric jm_getDiffX_1 (this p1)))
(defmethod jm_getDiffX_1 ((this ScrollSelectionForm) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this ScrollSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_x)))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this ScrollSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_setButtonBasicColor_1) (defgeneric jm_setButtonBasicColor_1 (this p1)))
(defmethod jm_setButtonBasicColor_1 ((this ScrollSelectionForm) _buttonBasicColor)
  (declare (ignorable this _buttonBasicColor))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_buttonBasicColor) _buttonBasicColor))))

    
(unless (fboundp 'jm_getButtonBasicColor_0) (defgeneric jm_getButtonBasicColor_0 (this)))
(defmethod jm_getButtonBasicColor_0 ((this ScrollSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_buttonBasicColor)))))



