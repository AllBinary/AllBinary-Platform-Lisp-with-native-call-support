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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CurrentlyPressedTouchButtonSingletonDebug (CurrentlyPressedTouchButtonSingleton)
  ((f_string :initform nil)
   (f_listString :initform nil)
   (f_appendText :initform nil)
   (f_PRESSED_AND_FIRED :initform nil)
   (f_PRESSED_AND_NOT_FIRED :initform nil)
   (f_ASSOCIATED_RELEASED_AND_FIRED :initform nil)
   (f_RELEASED_AND_FIRED :initform nil)
   (f_RELEASED_AND_FIRED_2 :initform nil)
   (f_RELEASED_AND_NOT_FIRED :initform nil)))

(defvar CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC :jnone)
(defun CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC ()
  (when (eq CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC :jnone) (setf CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC (CurrentlyPressedTouchButtonSingletonDebug.jnew_0)))
  CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC)
(defun (setf CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC) (value) (setf CurrentlyPressedTouchButtonSingletonDebug.jcell_instanceC value))

(defun CurrentlyPressedTouchButtonSingletonDebug.jnew_0 ()
  (let ((this (make-instance 'CurrentlyPressedTouchButtonSingletonDebug)))
    (setf (slot-value this 'f_string) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_listString) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_appendText) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
    (setf (slot-value this 'f_PRESSED_AND_FIRED) "pressed & fired")
    (setf (slot-value this 'f_PRESSED_AND_NOT_FIRED) "pressed in button but not fired")
    (setf (slot-value this 'f_ASSOCIATED_RELEASED_AND_FIRED) "assoc. rel & fired")
    (setf (slot-value this 'f_RELEASED_AND_FIRED) "rel & fired 1")
    (setf (slot-value this 'f_RELEASED_AND_FIRED_2) "rel & fired 2")
    (setf (slot-value this 'f_RELEASED_AND_NOT_FIRED) "rel & not fired")
    this))

    
(defun CurrentlyPressedTouchButtonSingletonDebug.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CurrentlyPressedTouchButtonSingletonDebug.jstatic_instanceC)))))

    
(unless (fboundp 'jm_appendTouchButtonInput_2) (defgeneric jm_appendTouchButtonInput_2 (this p1 p2)))
(defmethod jm_appendTouchButtonInput_2 ((this CurrentlyPressedTouchButtonSingletonDebug) _append _touchButtonInput)
  (declare (ignorable this _append _touchButtonInput))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (jm_toString_0 _touchButtonInput))
        (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (jm_append_1 _stringBuffer _append)
        (setf (slot-value this 'f_appendText) (jm_toString_0 _stringBuffer))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText)))))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _append)
  (declare (ignorable this _append))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_appendText) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_appendText)) _append)))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText)))))))

    
(unless (fboundp 'jm_clearLog_2) (defgeneric jm_clearLog_2 (this p1 p2)))
(defmethod jm_clearLog_2 ((this CurrentlyPressedTouchButtonSingletonDebug) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_appendText) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (GPoint.jm_toStringStatic_3 _x _y 0)) (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText)))))))

    
(unless (fboundp 'jm_releaseAndNotFired_0) (defgeneric jm_releaseAndNotFired_0 (this)))
(defmethod jm_releaseAndNotFired_0 ((this CurrentlyPressedTouchButtonSingletonDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_append_1 this (slot-value this 'f_RELEASED_AND_NOT_FIRED)))))

    
(unless (fboundp 'jm_releaseAndFired_1) (defgeneric jm_releaseAndFired_1 (this p1)))
(defmethod jm_releaseAndFired_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_appendTouchButtonInput_2 this (slot-value this 'f_RELEASED_AND_FIRED) _touchButtonInput))))

    
(unless (fboundp 'jm_releaseAndFired2_1) (defgeneric jm_releaseAndFired2_1 (this p1)))
(defmethod jm_releaseAndFired2_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_appendTouchButtonInput_2 this (slot-value this 'f_RELEASED_AND_FIRED_2) _touchButtonInput))))

    
(unless (fboundp 'jm_releaseAndFiredAssociated_1) (defgeneric jm_releaseAndFiredAssociated_1 (this p1)))
(defmethod jm_releaseAndFiredAssociated_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_appendTouchButtonInput_2 this (slot-value this 'f_ASSOCIATED_RELEASED_AND_FIRED) _touchButtonInput))))

    
(unless (fboundp 'jm_pressedAndFired_1) (defgeneric jm_pressedAndFired_1 (this p1)))
(defmethod jm_pressedAndFired_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_appendTouchButtonInput_2 this (slot-value this 'f_PRESSED_AND_FIRED) _touchButtonInput))))

    
(unless (fboundp 'jm_pressedAndNotFired_1) (defgeneric jm_pressedAndNotFired_1 (this p1)))
(defmethod jm_pressedAndNotFired_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (jm_appendTouchButtonInput_2 this (slot-value this 'f_PRESSED_AND_NOT_FIRED) _touchButtonInput))))

    
(unless (fboundp 'jm_removeAt_1) (defgeneric jm_removeAt_1 (this p1)))
(defmethod jm_removeAt_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _index)
  (declare (ignorable this _index))
  (let (_touchButtonInput)
  (declare (ignorable _touchButtonInput))
    (block jreturn
        (setf _touchButtonInput (call-next-method this _index))
        (setf (slot-value this 'f_listString) (JR.toString (slot-value this 'f_list)))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText))))
        (return-from jreturn _touchButtonInput))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let (_isRemoved)
  (declare (ignorable _isRemoved))
    (block jreturn
        (setf _isRemoved (call-next-method this _touchButtonInput))
        (setf (slot-value this 'f_listString) (JR.toString (slot-value this 'f_list)))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText))))
        (return-from jreturn _isRemoved))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this CurrentlyPressedTouchButtonSingletonDebug) _touchButtonInput)
  (declare (ignorable this _touchButtonInput))
  (let ()
    (block jreturn
        (call-next-method this _touchButtonInput)
        (setf (slot-value this 'f_listString) (JR.toString (slot-value this 'f_list)))
        (setf (slot-value this 'f_string) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value this 'f_listString)) (slot-value this 'f_appendText)))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this CurrentlyPressedTouchButtonSingletonDebug))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_string)))))



