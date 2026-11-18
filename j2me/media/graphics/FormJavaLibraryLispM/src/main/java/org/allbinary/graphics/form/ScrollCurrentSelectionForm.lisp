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

(defclass ScrollCurrentSelectionForm (ScrollSelectionForm)
  ((f_moveForSmallScreen :initform nil)
   (f_updateMyFontProcessor :initform nil)
   (f_myFontProcessor :initform nil)
   (f_processor :initform nil)
   (f_preItemIndexDx :initform nil)
   (f_dx :initform 0)
   (f_dy :initform 0)
   (f_maxWidth :initform 0)))

    
(defun ScrollCurrentSelectionForm.jnew_8 (_title _items _formPaintableFactory _border _adjustedExtraBorder _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _formPaintableFactory _border _adjustedExtraBorder _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'ScrollCurrentSelectionForm)))
    
    (setf (slot-value this 'f_updateMyFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor))
    (setf (slot-value this 'f_processor) (Processor.jm_getInstance_0))
    (setf (slot-value this 'f_preItemIndexDx) (ItemIndexDx.jm_getInstance_0))
    
    
    (setf (slot-value this 'f_maxWidth) 0)
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_moveForSmallScreen) _moveForSmallScreen)))
    this))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this ScrollCurrentSelectionForm) _rectangle _formType)
  (declare (ignorable this _rectangle _formType))
  (let (_formTypeFactory)
  (declare (ignorable _formTypeFactory))
    (block jreturn
        (call-next-method this _rectangle _formType)
        (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq _formType (slot-value _formTypeFactory 'f_TEMP_HORIZONTAL_FORM))
            (progn
            (setf (slot-value this 'f_processor) (TempHorizontalFormProcessor.jnew_1 this))
            (setf (slot-value this 'f_preItemIndexDx) (TempHorizontalItemIndexDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_HORIZONTAL_FORM))
            (progn
            (setf (slot-value this 'f_processor) (HorizontalFormProcessor.jnew_1 this))
            (setf (slot-value this 'f_preItemIndexDx) (HorizontalItemIndexDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
            (progn
            (setf (slot-value this 'f_processor) (VerticalFormProcessor.jnew_1 this))
            (setf (slot-value this 'f_preItemIndexDx) (VerticalItemIndexDx.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_NULL_FORM_TYPE))
            (progn
            nil)
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value _formTypeFactory 'f_UNK) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT)))))))
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this ScrollCurrentSelectionForm) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_processTempHorizontalForm_0) (defgeneric jm_processTempHorizontalForm_0 (this)))
(defmethod jm_processTempHorizontalForm_0 ((this ScrollCurrentSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_dx) (JR.i32 (+ (JR.i32 (- (slot-value this 'f_x) 30)) (ash (jm_getWidth_0 (slot-value this 'f_rectangle)) (- (logand 1 31))))))
        (setf (slot-value this 'f_dy) (slot-value this 'f_y)))))

    
(unless (fboundp 'jm_processHorizontalForm_0) (defgeneric jm_processHorizontalForm_0 (this)))
(defmethod jm_processHorizontalForm_0 ((this ScrollCurrentSelectionForm))
  (declare (ignorable this))
  (let (_size _totalWidth _item _index _maxTitleHeight)
  (declare (ignorable _size _totalWidth _item _index _maxTitleHeight))
    (block jreturn
        (setf _size (jm_size_0 this))
        (setf _totalWidth 0)
        (setf _item nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _item (jm_get_1 this _index))
            (setf _totalWidth (JR.i32 (+ _totalWidth (JR.i32 (+ (jm_getMinimumWidth_0 _item) (slot-value this 'f_border)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_dx) (JR.i32 (- (JR.i32 (+ (slot-value this 'f_x) (ash (jm_getWidth_0 (slot-value this 'f_rectangle)) (- (logand 1 31))))) (ash _totalWidth (- (logand 1 31))))))
        (setf (slot-value this 'f_dy) (JR.i32 (+ (slot-value this 'f_y) (ash (jm_getHeight_0 (slot-value this 'f_rectangle)) (- (logand 1 31))))))
        (if (slot-value this 'f_moveForSmallScreen)
            (progn
            (setf _maxTitleHeight 175)
            (if (< (slot-value this 'f_dy) _maxTitleHeight)
                (progn
                (setf (slot-value this 'f_dy) _maxTitleHeight))))))))

    
(unless (fboundp 'jm_processVerticalForm_0) (defgeneric jm_processVerticalForm_0 (this)))
(defmethod jm_processVerticalForm_0 ((this ScrollCurrentSelectionForm))
  (declare (ignorable this))
  (let (_totalHeight _size _item2 _index _maxTitleHeight)
  (declare (ignorable _totalHeight _size _item2 _index _maxTitleHeight))
    (block jreturn
        (setf _totalHeight 0)
        (setf _size (jm_size_0 this))
        (setf _item2 nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _item2 (jm_get_1 this _index))
            (if (< (slot-value this 'f_maxWidth) (jm_getMinimumWidth_0 _item2))
                (progn
                (setf (slot-value this 'f_maxWidth) (jm_getMinimumWidth_0 _item2))))
            (setf _totalHeight (JR.i32 (+ _totalHeight (JR.i32 (+ (jm_getMinimumHeight_0 _item2) (slot-value this 'f_border)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_dx) (JR.idiv (JR.i32 (- (jm_getWidth_0 (slot-value this 'f_rectangle)) (slot-value this 'f_maxWidth))) 2))
        (if (> (jm_size_0 this) 0)
            (progn
            (setf (slot-value this 'f_dy) (JR.i32 (+ (slot-value this 'f_y) (JR.idiv (JR.i32 (- (jm_getHeight_0 (slot-value this 'f_rectangle)) _totalHeight)) 2))))
            (if (slot-value this 'f_moveForSmallScreen)
                (progn
                (setf _maxTitleHeight 175)
                (if (< (slot-value this 'f_dy) _maxTitleHeight)
                    (progn
                    (setf (slot-value this 'f_dy) _maxTitleHeight))))))
            (progn
            (setf (slot-value this 'f_dy) (slot-value this 'f_y)))))))

    
(unless (fboundp 'jm_getXTempHorizontalForm_4) (defgeneric jm_getXTempHorizontalForm_4 (this p1 p2 p3 p4)))
(defmethod jm_getXTempHorizontalForm_4 ((this ScrollCurrentSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getDiffX_1 this _item)))))

    
(unless (fboundp 'jm_getXHorizontalForm_4) (defgeneric jm_getXHorizontalForm_4 (this p1 p2 p3 p4)))
(defmethod jm_getXHorizontalForm_4 ((this ScrollCurrentSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getXVerticalForm_4) (defgeneric jm_getXVerticalForm_4 (this p1 p2 p3 p4)))
(defmethod jm_getXVerticalForm_4 ((this ScrollCurrentSelectionForm) _index _item _dx _dy)
  (declare (ignorable this _index _item _dx _dy))
  (let ()
    (block jreturn
        (return-from jreturn (JR.i32 (+ (jm_getDiffX_1 this _item) (slot-value this 'f_halfBorder)))))))

    
(unless (fboundp 'jm_getDiffX_1) (defgeneric jm_getDiffX_1 (this p1)))
(defmethod jm_getDiffX_1 ((this ScrollCurrentSelectionForm) _item)
  (declare (ignorable this _item))
  (let ()
    (block jreturn
        (return-from jreturn (ash (JR.i32 (- (slot-value this 'f_maxWidth) (jm_getMinimumWidth_0 _item))) (- (logand 1 31)))))))

    
(unless (fboundp 'jm_getDx_0) (defgeneric jm_getDx_0 (this)))
(defmethod jm_getDx_0 ((this ScrollCurrentSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dx)))))

    
(unless (fboundp 'jm_getDy_0) (defgeneric jm_getDy_0 (this)))
(defmethod jm_getDy_0 ((this ScrollCurrentSelectionForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_dy)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this ScrollCurrentSelectionForm) _graphics)
  (declare (ignorable this _graphics))
  (let (_delta _deltaX _deltaY _size _formTypeFactory _item _diffX _index)
  (declare (ignorable _delta _deltaX _deltaY _size _formTypeFactory _item _diffX _index))
    (block jreturn
        (handler-case (progn
            (jm_process_0 (slot-value this 'f_processor))
            (setf _delta 0)
            (setf _deltaX (jm_getDx_0 this))
            (setf _deltaY (jm_getDy_0 this))
            (setf _size (jm_size_0 this))
            (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
            (setf _item nil)
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _item (jm_get_1 this _index))
                (setf _diffX (jm_getDx_4 (slot-value this 'f_preItemIndexDx) _index _item (slot-value this 'f_dx) (slot-value this 'f_dy)))
                (if (= _index (jm_getSelectedIndex_0 this))
                    (progn
                    (setf _delta (jm_paintItem_5 this _graphics _index _item (JR.i32 (+ _deltaX _diffX)) _deltaY))
                    (jm_paint_4 (slot-value this 'f_paintable) _graphics _index (JR.i32 (+ _deltaX _diffX)) _deltaY))
                    (progn
                    (setf _delta (jm_paintUnselectedItem_5 this _graphics _index _item (JR.i32 (+ _deltaX _diffX)) _deltaY))
                    (jm_paint_4 (slot-value this 'f_paintable) _graphics _index (JR.i32 (+ _deltaX _diffX)) _deltaY)))
                (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_TEMP_HORIZONTAL_FORM))
                    (progn
                    nil)
                    (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_HORIZONTAL_FORM))
                    (progn
                    (setf _deltaX _delta))
                    (if (eq (slot-value this 'f_formType) (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
                    (progn
                    (setf _deltaY _delta))
                    (progn
                    (error (JR.newException "Exception" (slot-value _formTypeFactory 'f_UNK))))))))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_PAINT) _e))))))



