;;;; Generated Code Do Not Modify
;;;; package org.allbinary.graphics.form

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MultipleScrollSelectionHorizontalForm (ScrollSelectionForm)
  ((f_rectPaintable :initform nil)
   (f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable :initform nil)
   (f_backgroundColor :initform 0)
   (f_myFontProcessor :initform nil)
   (f_logged :initform nil)
   (f_fontHeight :initform 0)))

    
(defun MultipleScrollSelectionHorizontalForm.jm_createForm_7 (_title _items _rectangle _formType _border _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _rectangle _formType _border _backgroundBasicColor _foregroundBasicColor))
  (let (_scrollSelectionForm)
  (declare (ignorable _scrollSelectionForm))
    (block jreturn
        (setf _scrollSelectionForm (MultipleScrollSelectionHorizontalForm.jnew_6 _title _items (ItemPaintableFactory.jm_getInstance_0) _border _backgroundBasicColor _foregroundBasicColor))
        (jm_init_2 _scrollSelectionForm _rectangle _formType)
        (return-from jreturn _scrollSelectionForm))))

    
(defun MultipleScrollSelectionHorizontalForm.jnew_6 (_title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _title _items _formPaintableFactory _border _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'MultipleScrollSelectionHorizontalForm)))
    (setf (slot-value this 'f_rectPaintable) (NullPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) (ItemIndexPaintable.jm_getInstance_0))
    (setf (slot-value this 'f_backgroundColor) (jm_intValue_0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_TRANSPARENT_GREY)))
    (setf (slot-value this 'f_myFontProcessor) (UpdateMyFontProcessor.jnew_1 this))
    (setf (slot-value this 'f_logged) nil)
    (setf (slot-value this 'f_fontHeight) 0)
  (let ()
    (block jreturn
        nil
        (if (or (J2MEUtil.jm_isJ2ME_0) (J2MEUtil.jm_isHTML_0))
            (progn
            nil)
            (progn
            (setf (slot-value this 'f_rectPaintable) (MultipleScrollSelectionFormRectPaintable.jnew_1 this))))))
    this))

    
(unless (fboundp 'jm_fillRect_1) (defgeneric jm_fillRect_1 (this p1)))
(defmethod jm_fillRect_1 ((this MultipleScrollSelectionHorizontalForm) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (slot-value this 'f_backgroundColor))
        (jm_fillRect_4 _graphics (slot-value this 'f_x) (slot-value this 'f_y) (jm_getWidth_0 (slot-value this 'f_rectangle)) (jm_getHeight_0 (slot-value this 'f_rectangle))))))

    
(unless (fboundp 'jm_init_2) (defgeneric jm_init_2 (this p1 p2)))
(defmethod jm_init_2 ((this MultipleScrollSelectionHorizontalForm) _rectangle _formType)
  (declare (ignorable this _rectangle _formType))
  (let (_formTypeFactory)
  (declare (ignorable _formTypeFactory))
    (block jreturn
        (call-next-method this _rectangle _formType)
        (setf _formTypeFactory (FormTypeFactory.jm_getInstance_0))
        (if (eq _formType (slot-value _formTypeFactory 'f_HORIZONTAL_FORM))
            (progn
            (setf (slot-value this 'f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) (MultipleScrollSelectionFormHorizontalPaintable.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_VERTICAL_CENTER_FORM))
            (progn
            (setf (slot-value this 'f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) (MultipleScrollSelectionFormVerticalPaintable.jnew_1 this)))
            (if (eq _formType (slot-value _formTypeFactory 'f_NULL_FORM_TYPE))
            (progn
            nil)
            (progn
            (error (JR.newException "Exception" (slot-value _formTypeFactory 'f_UNK))))))))))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this MultipleScrollSelectionHorizontalForm) _graphics)
  (declare (ignorable this _graphics))
  (let (_font)
  (declare (ignorable _font))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf (slot-value this 'f_fontHeight) (jm_getHeight_0 _font))
        (setf (slot-value this 'f_myFontProcessor) (MyFontProcessor.jm_getInstance_0)))))

    
(unless (fboundp 'jm_paintHorizontal_5) (defgeneric jm_paintHorizontal_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintHorizontal_5 ((this MultipleScrollSelectionHorizontalForm) _graphics _index _item _dx _dy)
  (declare (ignorable this _graphics _index _item _dx _dy))
  (let (_dx2)
  (declare (ignorable _dx2))
    (block jreturn
        (setf _dx2 (JR.i32 (+ (jm_paintItem_5 this _graphics _index _item _dx _dy) (slot-value this 'f_border))))
        (jm_paint_4 (slot-value this 'f_paintable) _graphics _index _dx _dy)
        (setf _dx _dx2)
        (return-from jreturn _dx))))

    
(unless (fboundp 'jm_paintVertical_5) (defgeneric jm_paintVertical_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_paintVertical_5 ((this MultipleScrollSelectionHorizontalForm) _graphics _index _item _dx _dy)
  (declare (ignorable this _graphics _index _item _dx _dy))
  (let ()
    (block jreturn
        (jm_paintItem_5 this _graphics _index _item _dx _dy)
        (jm_paint_4 (slot-value this 'f_paintable) _graphics _index _dx _dy)
        (return-from jreturn _dx))))

    
(unless (fboundp 'jm_getStartIndex_0) (defgeneric jm_getStartIndex_0 (this)))
(defmethod jm_getStartIndex_0 ((this MultipleScrollSelectionHorizontalForm))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getSelectedIndex_0 this)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this MultipleScrollSelectionHorizontalForm) _graphics)
  (declare (ignorable this _graphics))
  (let (_start _size _dx _dy _item _index)
  (declare (ignorable _start _size _dx _dy _item _index))
    (block jreturn
        (handler-case (progn
            (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
            (setf _start (jm_getStartIndex_0 this))
            (setf _size (jm_size_0 this))
            (setf _dx (slot-value this 'f_x))
            (setf _dy (slot-value this 'f_y))
            (jm_paint_1 (slot-value this 'f_rectPaintable) _graphics)
            (jm_drawString_4 _graphics (jm_getTitle_0 this) (slot-value this 'f_x) (JR.i32 (- (slot-value this 'f_y) (slot-value this 'f_fontHeight))) 0)
            (setf _item nil)
            (progn
                (setf _index _start)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _item (jm_get_1 this _index))
                (if (>= _dx (jm_getMaxX_0 (slot-value this 'f_rectangle)))
                    (progn
                    (if (slot-value this 'f_logged)
                        (progn
                        nil)
                        (progn
                        (setf (slot-value this 'f_logged) t)
                        (PreLogUtil.jm_put_3 (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "painting beyond maxx: ") (jm_getMaxX_0 (slot-value this 'f_rectangle)))) this (slot-value (slot-value this 'f_canvasStrings) 'f_PAINT))))))
                (setf _dx (jm_paint_5 (slot-value this 'f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable) _graphics _index _item _dx _dy)))
                    (setf _index (JR.i32 (+ _index 1)))))))
            (error (_e) (declare (ignorable _e))
            (PreLogUtil.jm_put_3 (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_canvasStrings) 'f_PAINT)))))))



