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
;;;; package org.allbinary.graphics.form.item

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomTextBox (GameCommandCanvas)
  ((f_textFieldItem :initform nil)
   (f_inputFactory :initform nil)))

    
(defun CustomTextBox.jnew_8 (_cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable _cmdListener _label _text _maxSize _constraints _font _backgroundBasicColor _foregroundBasicColor))
  (let ((this (make-instance 'CustomTextBox)))
    
    (setf (slot-value this 'f_inputFactory) (InputFactory.jm_getInstance_0))
  (let (_stringUtil _textFieldItem)
  (declare (ignorable _stringUtil _textFieldItem))
    (block jreturn
        nil
        (setf _stringUtil (StringUtil.jm_getInstance_0))
        (setf _textFieldItem (ABTextFieldItem.jnew_10 this (TextItemVisitor.jnew_0) (slot-value _stringUtil 'f_EMPTY_STRING) (slot-value _stringUtil 'f_EMPTY_STRING) _maxSize 0 (slot-value _stringUtil 'f_EMPTY_STRING) _font _backgroundBasicColor _foregroundBasicColor))
        (jm_setString_1 _textFieldItem _text)
        (setf (slot-value this 'f_textFieldItem) _textFieldItem)
        (jm_setTitle_1 this _label)))
    this))

    
(unless (fboundp 'jm_submit_0) (defgeneric jm_submit_0 (this)))
(defmethod jm_submit_0 ((this CustomTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_onEventRaw_3) (defgeneric jm_onEventRaw_3 (this p1 p2 p3)))
(defmethod jm_onEventRaw_3 ((this CustomTextBox) _keyCode _deviceId _repeated)
  (declare (ignorable this _keyCode _deviceId _repeated))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) _keyCode)) this "onEvent")
        (jm_keyPressedByDevice_2 this _keyCode _deviceId))))

    
(unless (fboundp 'jm_keyPressed_1) (defgeneric jm_keyPressed_1 (this p1)))
(defmethod jm_keyPressed_1 ((this CustomTextBox) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyPressedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyReleased_1) (defgeneric jm_keyReleased_1 (this p1)))
(defmethod jm_keyReleased_1 ((this CustomTextBox) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyReleasedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyRepeated_1) (defgeneric jm_keyRepeated_1 (this p1)))
(defmethod jm_keyRepeated_1 ((this CustomTextBox) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (jm_keyRepeatedByDevice_2 this _keyCode 0))))

    
(unless (fboundp 'jm_keyPressedByDevice_2) (defgeneric jm_keyPressedByDevice_2 (this p1 p2)))
(defmethod jm_keyPressedByDevice_2 ((this CustomTextBox) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let (_platformKeyFactory _input)
  (declare (ignorable _platformKeyFactory _input))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE)) _keyCode)) this (slot-value (slot-value this 'f_gameInputStrings) 'f_KEY_PRESSED))
            (setf _platformKeyFactory (PlatformKeyFactory.jm_getInstance_0))
            (setf _input (jm_getInstanceById_1 (slot-value this 'f_inputFactory) _keyCode))
            (if (jm_isSubmission_1 _platformKeyFactory _input)
                (progn
                (jm_submit_0 this))
                (progn
                (jm_keyPressed_1 (slot-value this 'f_textFieldItem) _keyCode))))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_gameInputStrings) 'f_KEY_PRESSED) _e))))))

    
(unless (fboundp 'jm_keyReleasedByDevice_2) (defgeneric jm_keyReleasedByDevice_2 (this p1 p2)))
(defmethod jm_keyReleasedByDevice_2 ((this CustomTextBox) _keyCode _deviceId)
  (declare (ignorable this _keyCode _deviceId))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this CustomTextBox) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_setColor_1 _graphics (slot-value this 'f_backgroundColor))
        (jm_fillRect_4 _graphics 0 0 (jm_getLastWidth_0 (slot-value this 'f_displayInfo)) (jm_getLastHeight_0 (slot-value this 'f_displayInfo)))
        (jm_setColor_1 _graphics (slot-value this 'f_foregroundColor))
        (if (not (J2MEUtil.jm_isJ2ME_0))
            (progn
            (jm_drawString_4 _graphics (jm_getTitle_0 this) 8 1 0)))
        (jm_paintXY_3 this _graphics 8 (JR.i32 (+ (jm_getHeight_0 (jm_getFont_0 _graphics)) 2)))
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_paintXY_3) (defgeneric jm_paintXY_3 (this p1 p2 p3)))
(defmethod jm_paintXY_3 ((this CustomTextBox) _graphics _x _y)
  (declare (ignorable this _graphics _x _y))
  (let ()
    (block jreturn
        (jm_paintXY_3 (slot-value this 'f_textFieldItem) _graphics _x _y))))

    
(unless (fboundp 'jm_getTextFieldItem_0) (defgeneric jm_getTextFieldItem_0 (this)))
(defmethod jm_getTextFieldItem_0 ((this CustomTextBox))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_textFieldItem)))))



