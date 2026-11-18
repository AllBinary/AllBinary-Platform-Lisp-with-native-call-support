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
;;;; package org.allbinary.game.paint.help

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputMappingHelpPaintable (HelpPaintable)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_commonSeps :initform nil)
   (f_stringUtil :initform nil)
   (f_basicColorFactory :initform nil)
   (f_NONE :initform nil)
   (f_EMPTY_STRING :initform nil)
   (f_gameInputMappingArray :initform nil)
   (f_keyMappingArray :initform nil)
   (f_actionBasicColor :initform nil)
   (f_inputBasicColorArray :initform nil)
   (f_selectedBasicColor :initform nil)
   (f_updateMyFontProperties :initform nil)))

(defvar InputMappingHelpPaintable.jcell_AND :jnone)
(defun InputMappingHelpPaintable.jstatic_AND ()
  (when (eq InputMappingHelpPaintable.jcell_AND :jnone) (setf InputMappingHelpPaintable.jcell_AND " and "))
  InputMappingHelpPaintable.jcell_AND)
(defun (setf InputMappingHelpPaintable.jstatic_AND) (value) (setf InputMappingHelpPaintable.jcell_AND value))

(defvar InputMappingHelpPaintable.jcell_SEP :jnone)
(defun InputMappingHelpPaintable.jstatic_SEP ()
  (when (eq InputMappingHelpPaintable.jcell_SEP :jnone) (setf InputMappingHelpPaintable.jcell_SEP ", "))
  InputMappingHelpPaintable.jcell_SEP)
(defun (setf InputMappingHelpPaintable.jstatic_SEP) (value) (setf InputMappingHelpPaintable.jcell_SEP value))

(defvar InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND :jnone)
(defun InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND ()
  (when (eq InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND :jnone) (setf InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND ", and "))
  InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND)
(defun (setf InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND) (value) (setf InputMappingHelpPaintable.jcell_MORE_THAN_TWO_IN_LIST_AND value))

    
(defun InputMappingHelpPaintable.jnew_3 (_gameInputMappingArray _backgroundBasicColor _basicColor)
  (declare (ignorable _gameInputMappingArray _backgroundBasicColor _basicColor))
  (let ((this (make-instance 'InputMappingHelpPaintable)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
    (setf (slot-value this 'f_stringUtil) (StringUtil.jm_getInstance_0))
    (setf (slot-value this 'f_basicColorFactory) (BasicColorFactory.jm_getInstance_0))
    (setf (slot-value this 'f_NONE) (slot-value (GameKeyFactory.jm_getInstance_0) 'f_NONE))
    (setf (slot-value this 'f_EMPTY_STRING) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    
    (setf (slot-value this 'f_keyMappingArray) (JR.newArray nil 0))
    (setf (slot-value this 'f_actionBasicColor) (slot-value (BasicColorUtil.jm_getInstance_0) 'f_ZERO_ARRAY))
    (setf (slot-value this 'f_inputBasicColorArray) (JR.newArray nil 0 0))
    
    (setf (slot-value this 'f_updateMyFontProperties) (UpdateMyFontProperties.jnew_0))
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_gameInputMappingArray) _gameInputMappingArray)
        (jm_update_2 this (slot-value this 'f_NONE) (slot-value this 'f_NONE))
        (if (or (eq _backgroundBasicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE)) (eq _basicColor (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE)))
            (progn
            (setf (slot-value this 'f_selectedBasicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_RED)))
            (progn
            (setf (slot-value this 'f_selectedBasicColor) (slot-value (slot-value this 'f_basicColorFactory) 'f_WHITE))))))
    this))

    
(unless (fboundp 'jm_updateMeasurement_1) (defgeneric jm_updateMeasurement_1 (this p1)))
(defmethod jm_updateMeasurement_1 ((this InputMappingHelpPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_font _updateMyFontProperties _stringMaker _inputInfo _size _list _keyMappings _actionString _input _size2 _index2 _index)
  (declare (ignorable _font _updateMyFontProperties _stringMaker _inputInfo _size _list _keyMappings _actionString _input _size2 _index2 _index))
    (block jreturn
        (setf _font (jm_getFont_0 _graphics))
        (setf _updateMyFontProperties (UpdateMyFontProperties.jnew_0))
        (setf (slot-value _updateMyFontProperties 'f_charHeight) (jm_getHeight_0 _font))
        (setf _stringMaker (StringMaker.jnew_0))
        (setf _inputInfo (slot-value this 'f_inputInfo))
        (setf _size (length _inputInfo))
        (setf (slot-value _updateMyFontProperties 'f_actionStringArray) (JR.newArray nil _size))
        (setf (slot-value _updateMyFontProperties 'f_keymappingBeginWidthArray) (JR.newArray 0 _size))
        (setf (slot-value _updateMyFontProperties 'f_actionStringDeltaXArray) (JR.newArray 0 _size))
        (setf (slot-value _updateMyFontProperties 'f_inputDeltaXArray) (JR.newArray 0 _size 0))
        (setf (slot-value _updateMyFontProperties 'f_sepArray) (JR.newArray nil _size 0))
        (setf (slot-value _updateMyFontProperties 'f_sepWidthArray) (JR.newArray 0 _size 0))
        (setf _list nil)
        (setf _keyMappings nil)
        (setf _actionString nil)
        (setf _input nil)
        (setf _size2 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _list (aref (slot-value this 'f_keyMappingArray) _index))
            (setf _keyMappings (jm_get_1 this _list))
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (setf _actionString (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (aref _inputInfo _index)) (slot-value (slot-value this 'f_commonSeps) 'f_COLON)) (slot-value (slot-value this 'f_commonSeps) 'f_SPACE)) (slot-value (slot-value this 'f_commonSeps) 'f_SPACE))))
            (setf (aref (slot-value _updateMyFontProperties 'f_actionStringArray) _index) _actionString)
            (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
            (setf (aref (slot-value _updateMyFontProperties 'f_keymappingBeginWidthArray) _index) (ash (jm_stringWidth_1 _font (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker (aref (slot-value _updateMyFontProperties 'f_actionStringArray) _index)) _keyMappings))) (- (logand 1 31))))
            (setf (aref (slot-value _updateMyFontProperties 'f_actionStringDeltaXArray) _index) (jm_stringWidth_1 _font _actionString))
            (setf _size2 (jm_size_0 _list))
            (setf (aref (slot-value _updateMyFontProperties 'f_inputDeltaXArray) _index) (JR.newArray 0 _size2))
            (setf (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) (JR.newArray nil _size2))
            (setf (aref (slot-value _updateMyFontProperties 'f_sepWidthArray) _index) (JR.newArray 0 _size2))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size2) do
                    (block jcontinue
                (setf _input (aref (slot-value _list 'f_objectArray) _index2))
                (setf (aref (aref (slot-value _updateMyFontProperties 'f_inputDeltaXArray) _index) _index2) (jm_stringWidth_1 _font (jm_getName_0 _input)))
                (setf (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2) (slot-value this 'f_EMPTY_STRING))
                (if (< (JR.i32 (+ _index2 1)) (jm_size_0 _list))
                    (progn
                    (if (= (jm_size_0 _list) 2)
                        (progn
                        (setf (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2) (InputMappingHelpPaintable.jstatic_AND)))
                        (progn
                        (if (= (JR.i32 (+ _index2 2)) (jm_size_0 _list))
                            (progn
                            (setf (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2) (InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                            (progn
                            (setf (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2) (InputMappingHelpPaintable.jstatic_SEP))))))))
                (if (not (eq (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2) (slot-value this 'f_EMPTY_STRING)))
                    (progn
                    (setf (aref (aref (slot-value _updateMyFontProperties 'f_sepWidthArray) _index) _index2) (jm_stringWidth_1 _font (aref (aref (slot-value _updateMyFontProperties 'f_sepArray) _index) _index2))))))
                    (setf _index2 (JR.i32 (+ _index2 1)))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_updateMyFontProperties) _updateMyFontProperties)
        (call-next-method this _graphics))))

    
(unless (fboundp 'jm_update_2) (defgeneric jm_update_2 (this p1 p2)))
(defmethod jm_update_2 ((this InputMappingHelpPaintable) _selectedGameKey _selectedInput)
  (declare (ignorable this _selectedGameKey _selectedInput))
  (let (_stringMaker _gameKeyMapping _size _keyInfo _keyMappingArray _actionBasicColor _inputBasicColorArray _gameInputMapping _gameKey _list _size2 _index2 _indexOfSelectedInput _index)
  (declare (ignorable _stringMaker _gameKeyMapping _size _keyInfo _keyMappingArray _actionBasicColor _inputBasicColorArray _gameInputMapping _gameKey _list _size2 _index2 _indexOfSelectedInput _index))
    (block jreturn
        (setf _stringMaker (StringMaker.jnew_0))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 _stringMaker (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) "selected GameKey: ") (jm_toString_1 (slot-value this 'f_stringUtil) _selectedGameKey)) " Input: ") (jm_toString_1 (slot-value this 'f_stringUtil) _selectedInput))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
        (setf _gameKeyMapping (jm_getPersistentInputMappingInstance_0 (PlatformInputMappingFactory.jm_getInstance_0)))
        (setf _size (length (slot-value this 'f_gameInputMappingArray)))
        (setf _keyInfo (JR.newArray nil _size))
        (setf _keyMappingArray (JR.newArray nil _size))
        (setf _actionBasicColor (JR.newArray nil _size))
        (setf _inputBasicColorArray (JR.newArray nil _size))
        (setf _gameInputMapping nil)
        (setf _gameKey nil)
        (setf _list nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _gameInputMapping (aref (slot-value this 'f_gameInputMappingArray) _index))
            (setf _gameKey (jm_getGameKey_0 _gameInputMapping))
            (setf _list (jm_getMappedInput_1 (jm_getInputMapping_0 _gameKeyMapping) _gameKey))
            (setf _size2 (jm_size_0 _list))
            (setf (aref _inputBasicColorArray _index) (JR.newArray nil _size2))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size2) do
                    (block jcontinue
                (setf (aref (aref _inputBasicColorArray _index) _index2) (slot-value this 'f_basicColor)))
                    (setf _index2 (JR.i32 (+ _index2 1))))))
            (if (eq _gameKey _selectedGameKey)
                (progn
                (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker "Found: selected GameKey: ") (jm_toString_1 (slot-value this 'f_stringUtil) _selectedGameKey))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                (setf (aref _actionBasicColor _index) (slot-value this 'f_selectedBasicColor))
                (setf _indexOfSelectedInput (jm_indexOf_1 _list _selectedInput))
                (if (>= _indexOfSelectedInput 0)
                    (progn
                    (jm_delete_2 _stringMaker 0 (jm_length_0 _stringMaker))
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 _stringMaker "Found: selected Input: ") (jm_toString_1 (slot-value this 'f_stringUtil) _selectedInput))) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE))
                    (setf (aref (aref _inputBasicColorArray _index) _indexOfSelectedInput) (slot-value this 'f_selectedBasicColor)))))
                (progn
                (setf (aref _actionBasicColor _index) (slot-value this 'f_basicColor))))
            (setf (aref _keyInfo _index) (jm_getName_0 _gameInputMapping))
            (setf (aref _keyMappingArray _index) _list))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf (slot-value this 'f_keyMappingArray) _keyMappingArray)
        (setf (slot-value this 'f_actionBasicColor) _actionBasicColor)
        (setf (slot-value this 'f_inputBasicColorArray) _inputBasicColorArray)
        (jm_setInputInfoP_1 this _keyInfo)
        (setf (slot-value this 'f_myFontProcessor) (slot-value this 'f_updateMyFontProcessor)))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this InputMappingHelpPaintable) _keyList)
  (declare (ignorable this _keyList))
  (let (_stringBuffer _key _size _index)
  (declare (ignorable _stringBuffer _key _size _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _key nil)
        (setf _size (jm_size_0 _keyList))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _key (aref (slot-value _keyList 'f_objectArray) _index))
            (jm_append_1 _stringBuffer (jm_getName_0 _key))
            (if (< (JR.i32 (+ _index 1)) (jm_size_0 _keyList))
                (progn
                (if (= (jm_size_0 _keyList) 2)
                    (progn
                    (jm_append_1 _stringBuffer (InputMappingHelpPaintable.jstatic_AND)))
                    (progn
                    (if (= (JR.i32 (+ _index 2)) (jm_size_0 _keyList))
                        (progn
                        (jm_append_1 _stringBuffer (InputMappingHelpPaintable.jstatic_MORE_THAN_TWO_IN_LIST_AND)))
                        (progn
                        (jm_append_1 _stringBuffer (InputMappingHelpPaintable.jstatic_SEP)))))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this InputMappingHelpPaintable) _graphics)
  (declare (ignorable this _graphics))
  (let (_halfWidth _inputInfo _size _y _deltaX _size2 _actionString _input _list _sep _beginWidth _index2 _index)
  (declare (ignorable _halfWidth _inputInfo _size _y _deltaX _size2 _actionString _input _list _sep _beginWidth _index2 _index))
    (block jreturn
        (jm_process_1 (slot-value this 'f_myFontProcessor) _graphics)
        (setf _halfWidth (jm_getLastHalfWidth_0 (slot-value this 'f_displayInfo)))
        (jm_setColor_1 _graphics (jm_intValue_0 (slot-value this 'f_basicColor)))
        (jm_drawString_4 _graphics (slot-value this 'f_title) (JR.i32 (- _halfWidth (slot-value this 'f_titleBeginWidth))) (slot-value (slot-value this 'f_updateMyFontProperties) 'f_charHeight) (slot-value this 'f_anchor))
        (setf _inputInfo (slot-value this 'f_inputInfo))
        (setf _size (length _inputInfo))
        (setf _y 0)
        (setf _deltaX 0)
        (setf _size2 0)
        (setf _actionString nil)
        (setf _input nil)
        (setf _list nil)
        (setf _sep nil)
        (setf _beginWidth 0)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _y (JR.i32 (* (JR.i32 (+ _index 3)) (slot-value (slot-value this 'f_updateMyFontProperties) 'f_charHeight))))
            (setf _deltaX 0)
            (setf _list (aref (slot-value this 'f_keyMappingArray) _index))
            (setf _size2 (jm_size_0 _list))
            (setf _beginWidth (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_keymappingBeginWidthArray) _index))
            (jm_setColor_1 _graphics (jm_intValue_0 (aref (slot-value this 'f_actionBasicColor) _index)))
            (setf _actionString (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_actionStringArray) _index))
            (jm_drawString_4 _graphics _actionString (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (slot-value this 'f_anchor))
            (setf _deltaX (JR.i32 (+ _deltaX (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_actionStringDeltaXArray) _index))))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size2) do
                    (block jcontinue
                (setf _input (aref (slot-value _list 'f_objectArray) _index2))
                (jm_setColor_1 _graphics (jm_intValue_0 (aref (aref (slot-value this 'f_inputBasicColorArray) _index) _index2)))
                (jm_drawString_4 _graphics (jm_getName_0 _input) (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (slot-value this 'f_anchor))
                (setf _deltaX (JR.i32 (+ _deltaX (aref (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_inputDeltaXArray) _index) _index2))))
                (setf _sep (aref (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_sepArray) _index) _index2))
                (jm_setColor_1 _graphics (jm_intValue_0 (slot-value this 'f_basicColor)))
                (jm_drawString_4 _graphics _sep (JR.i32 (+ (JR.i32 (- _halfWidth _beginWidth)) _deltaX)) _y (slot-value this 'f_anchor))
                (setf _deltaX (JR.i32 (+ _deltaX (aref (aref (slot-value (slot-value this 'f_updateMyFontProperties) 'f_sepWidthArray) _index) _index2)))))
                    (setf _index2 (JR.i32 (+ _index2 1)))))))
                (setf _index (JR.i32 (+ _index 1)))))))))



