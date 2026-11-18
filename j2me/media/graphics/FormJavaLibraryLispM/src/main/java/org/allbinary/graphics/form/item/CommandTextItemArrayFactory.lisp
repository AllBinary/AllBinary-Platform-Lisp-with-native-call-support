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

(defclass CommandTextItemArrayFactory (JObject)
  ((f_list :initform nil)
   (f_visitorInterface :initform nil)))

    
(defun CommandTextItemArrayFactory.jnew_1 (_visitorInterface)
  (declare (ignorable _visitorInterface))
  (let ((this (make-instance 'CommandTextItemArrayFactory)))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_visitorInterface) _visitorInterface)))
    this))

    
(unless (fboundp 'jm_getInstance_3) (defgeneric jm_getInstance_3 (this p1 p2 p3)))
(defmethod jm_getInstance_3 ((this CommandTextItemArrayFactory) _vector _backgroundBasicColor _foregroundBasicColor)
  (declare (ignorable this _vector _backgroundBasicColor _foregroundBasicColor))
  (let (_vectorUtil _size _textItem _priorityLimit _displayInfo _isLargeEnoughDisplayForBigMenu _command _aBoolean _index _textItemArray _size2)
  (declare (ignorable _vectorUtil _size _textItem _priorityLimit _displayInfo _isLargeEnoughDisplayForBigMenu _command _aBoolean _index _textItemArray _size2))
    (block jreturn
        (setf _vectorUtil (VectorUtil.jm_getInstance_0))
        (setf _size (jm_getSize_1 _vectorUtil _vector))
        (jm_clear_0 (slot-value this 'f_list))
        (setf _textItem nil)
        (setf _priorityLimit 7)
        (setf _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (setf _isLargeEnoughDisplayForBigMenu (or (and (jm_isPortrait_0 _displayInfo) (>= (jm_getLastHeight_0 _displayInfo) (slot-value (ScreenInfo.jm_getInstance_0) 'f_MEDIUM_WIDTH))) (and (not (jm_isPortrait_0 _displayInfo)) (>= (jm_getLastWidth_0 _displayInfo) (slot-value (ScreenInfo.jm_getInstance_0) 'f_MEDIUM_WIDTH)))))
        (if (and (not _isLargeEnoughDisplayForBigMenu) (> _size 3))
            (progn
            (setf _priorityLimit 3)))
        (setf _command nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _command (jm_elementAt_2 _vectorUtil _vector _index))
            (if (< (jm_getPriority_0 _command) _priorityLimit)
                (progn
                (setf _aBoolean (jm_visit_1 (slot-value this 'f_visitorInterface) _command))
                (if (jm_booleanValue_0 _aBoolean)
                    (progn
                    (setf _textItem (CommandTextItem.jnew_5 _command (LcduiImageItem.jstatic_LAYOUT_DEFAULT) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) _backgroundBasicColor _foregroundBasicColor))
                    (jm_add_1 (slot-value this 'f_list) _textItem))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _textItemArray (JR.newArray nil (jm_size_0 (slot-value this 'f_list))))
        (setf _size2 (length _textItemArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size2) do
                (block jcontinue
            (setf (aref _textItemArray _index) (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index)))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _textItemArray))))



