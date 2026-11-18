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

(defclass BasicTouchInputFactory (JObject)
  ((f_logUtil :initform nil)
   (f_SPECIAL_BUTTON_SIX :initform nil)
   (f_SPECIAL_BUTTON_FIVE :initform nil)
   (f_SPECIAL_BUTTON_FOUR :initform nil)
   (f_SPECIAL_BUTTON_THREE :initform nil)
   (f_SPECIAL_BUTTON_TWO :initform nil)
   (f_SPECIAL_BUTTON_ONE :initform nil)
   (f_UP :initform nil)
   (f_LEFT :initform nil)
   (f_RIGHT :initform nil)
   (f_DOWN :initform nil)
   (f_NONE :initform nil)
   (f_initialized :initform nil)
   (f_list :initform nil)))

(defvar BasicTouchInputFactory.jcell_instance :jnone)
(defun BasicTouchInputFactory.jstatic_instance ()
  (when (eq BasicTouchInputFactory.jcell_instance :jnone) (setf BasicTouchInputFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  BasicTouchInputFactory.jcell_instance)
(defun (setf BasicTouchInputFactory.jstatic_instance) (value) (setf BasicTouchInputFactory.jcell_instance value))

(defun BasicTouchInputFactory.jnew_0 ()
  (let ((this (make-instance 'BasicTouchInputFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_SPECIAL_BUTTON_SIX) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 30)) "Button 6"))
    (setf (slot-value this 'f_SPECIAL_BUTTON_FIVE) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 31)) "Button 5"))
    (setf (slot-value this 'f_SPECIAL_BUTTON_FOUR) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 32)) "Button 4"))
    (setf (slot-value this 'f_SPECIAL_BUTTON_THREE) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 33)) "Button 3"))
    (setf (slot-value this 'f_SPECIAL_BUTTON_TWO) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 34)) "Button 2"))
    (setf (slot-value this 'f_SPECIAL_BUTTON_ONE) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 35)) "Button 1"))
    (setf (slot-value this 'f_UP) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 36)) "Up Button"))
    (setf (slot-value this 'f_LEFT) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 37)) "Left Button"))
    (setf (slot-value this 'f_RIGHT) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 38)) "Right Button"))
    (setf (slot-value this 'f_DOWN) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 39)) "Down Button"))
    (setf (slot-value this 'f_NONE) (TouchButtonInput.jnew_2 (JR.i32 (- (slot-value (InputFactory.jm_getInstance_0) 'f_MAX) 40)) "No Button"))
    (setf (slot-value this 'f_initialized) nil)
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    this))

    
(defun BasicTouchInputFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (BasicTouchInputFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (BasicTouchInputFactory.jstatic_instance) (BasicTouchInputFactory.jnew_0))))
        (return-from jreturn (BasicTouchInputFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this BasicTouchInputFactory) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let ()
    (block jreturn
        (if (not (slot-value this 'f_initialized))
            (progn
            (setf (slot-value this 'f_initialized) t)
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_UP))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_LEFT))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_RIGHT))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_DOWN))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_TWO))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_FOUR))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_THREE))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_ONE))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_FIVE))
            (jm_add_1 (slot-value this 'f_list) (slot-value this 'f_SPECIAL_BUTTON_SIX))
            (jm_updateAllList_2 this (slot-value this 'f_list) _inputToGameKeyMapping))))))

    
(unless (fboundp 'jm_updateAll_1) (defgeneric jm_updateAll_1 (this p1)))
(defmethod jm_updateAll_1 ((this BasicTouchInputFactory) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let ()
    (block jreturn
        (jm_updateAllList_2 this (jm_getList_0 this) _inputToGameKeyMapping))))

    
(unless (fboundp 'jm_updateAllList_2) (defgeneric jm_updateAllList_2 (this p1 p2)))
(defmethod jm_updateAllList_2 ((this BasicTouchInputFactory) _list _inputToGameKeyMapping)
  (declare (ignorable this _list _inputToGameKeyMapping))
  (let (_touchButtonInput _index)
  (declare (ignorable _touchButtonInput _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START)) (jm_size_0 _list))) this "updateAll")
        (progn
            (setf _index (JR.i32 (- (jm_size_0 _list) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _touchButtonInput (jm_get_1 _list _index))
            (jm_update_1 _touchButtonInput _inputToGameKeyMapping))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicTouchInputFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))



