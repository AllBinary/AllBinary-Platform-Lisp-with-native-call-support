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
;;;; package org.allbinary.game.input.mapping

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass InputToGameKeyMapping (InputMapping)
  ((f_gameKeyFactory :initform nil)
   (f_mappedGameKeys :initform nil)
   (f_platformToGameKeyMapping :initform nil)
   (f_negativePlatformToGameKeyMapping :initform nil)))

(defvar InputToGameKeyMapping.jcell_instance :jnone)
(defun InputToGameKeyMapping.jstatic_instance ()
  (when (eq InputToGameKeyMapping.jcell_instance :jnone) (setf InputToGameKeyMapping.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  InputToGameKeyMapping.jcell_instance)
(defun (setf InputToGameKeyMapping.jstatic_instance) (value) (setf InputToGameKeyMapping.jcell_instance value))

    
(defun InputToGameKeyMapping.jm_getNullInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (InputToGameKeyMapping.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (InputToGameKeyMapping.jstatic_instance) (InputToGameKeyMapping.jnew_0))))
        (return-from jreturn (InputToGameKeyMapping.jstatic_instance)))))

    
(defun InputToGameKeyMapping.jnew_0 ()
  (let ((this (make-instance 'InputToGameKeyMapping)))
    (setf (slot-value this 'f_gameKeyFactory) (GameKeyFactory.jm_getInstance_0))
    (setf (slot-value this 'f_mappedGameKeys) (vector (slot-value (slot-value this 'f_gameKeyFactory) 'f_UP) (slot-value (slot-value this 'f_gameKeyFactory) 'f_DOWN) (slot-value (slot-value this 'f_gameKeyFactory) 'f_LEFT) (slot-value (slot-value this 'f_gameKeyFactory) 'f_RIGHT)))
    (setf (slot-value this 'f_platformToGameKeyMapping) (JR.newArray nil (slot-value (InputFactory.jm_getInstance_0) 'f_MAX)))
    (setf (slot-value this 'f_negativePlatformToGameKeyMapping) (JR.newArray nil 0))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (jm_clear_0 this)))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this InputToGameKeyMapping))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_platformToGameKeyMapping)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_platformToGameKeyMapping) _index) (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE)))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_removeAll_0) (defgeneric jm_removeAll_0 (this)))
(defmethod jm_removeAll_0 ((this InputToGameKeyMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (call-next-method this)
        (jm_clear_0 this))))

    
(unless (fboundp 'jm_addMapping_1) (defgeneric jm_addMapping_1 (this p1)))
(defmethod jm_addMapping_1 ((this InputToGameKeyMapping) _inputToGameKeyMapping)
  (declare (ignorable this _inputToGameKeyMapping))
  (let (_input _index)
  (declare (ignorable _input _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (jm_getMaxMappable_0 _inputToGameKeyMapping) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _input (jm_getInstance_1 _inputToGameKeyMapping _index))
            (if (not (eq _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE)))
                (progn
                (jm_addAll_2 this _input (jm_getMappedInput_1 _inputToGameKeyMapping _input)))))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_addAll_2) (defgeneric jm_addAll_2 (this p1 p2)))
(defmethod jm_addAll_2 ((this InputToGameKeyMapping) _input _list)
  (declare (ignorable this _input _list))
  (let (_mappedToInput _index)
  (declare (ignorable _mappedToInput _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (jm_size_0 _list) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _mappedToInput (aref (slot-value _list 'f_objectArray) _index))
            (jm_add_2 this _input _mappedToInput))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this InputToGameKeyMapping) _input _mappedToInput)
  (declare (ignorable this _input _mappedToInput))
  (let ()
    (block jreturn
        (call-next-method this _input _mappedToInput)
        (jm_set_2 this _input _mappedToInput))))

    
(unless (fboundp 'jm_remove_2) (defgeneric jm_remove_2 (this p1 p2)))
(defmethod jm_remove_2 ((this InputToGameKeyMapping) _input _mappedToInput)
  (declare (ignorable this _input _mappedToInput))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_START_LABEL)) (jm_toString_1 (StringUtil.jm_getInstance_0) _input)) " == ") (jm_toString_1 (StringUtil.jm_getInstance_0) _mappedToInput))) this "InputToGameKeyMapping::remove")
        (call-next-method this _input _mappedToInput)
        (jm_set_2 this _input (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE)))))

    
(unless (fboundp 'jm_set_2) (defgeneric jm_set_2 (this p1 p2)))
(defmethod jm_set_2 ((this InputToGameKeyMapping) _input _mappedToInput)
  (declare (ignorable this _input _mappedToInput))
  (let (_id)
  (declare (ignorable _id))
    (block jreturn
        (setf _id (jm_getId_0 _mappedToInput))
        (if (and (>= _id 0) (< _id (length (slot-value this 'f_platformToGameKeyMapping))))
            (progn
            (setf (aref (slot-value this 'f_platformToGameKeyMapping) _id) _input))))))

    
(unless (fboundp 'jm_getMaxMappable_0) (defgeneric jm_getMaxMappable_0 (this)))
(defmethod jm_getMaxMappable_0 ((this InputToGameKeyMapping))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (length (slot-value this 'f_platformToGameKeyMapping))))))

    
(unless (fboundp 'jm_getReverseInstance_1) (defgeneric jm_getReverseInstance_1 (this p1)))
(defmethod jm_getReverseInstance_1 ((this InputToGameKeyMapping) _id)
  (declare (ignorable this _id))
  (let (_list _inputFactory _input _index)
  (declare (ignorable _list _inputFactory _input _index))
    (block jreturn
        (setf _list (BasicArrayListD.jnew_0))
        (setf _inputFactory (InputFactory.jm_getInstance_0))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (length (slot-value this 'f_platformToGameKeyMapping))) do
                (block jcontinue
            (if (eq (jm_getId_0 (aref (slot-value this 'f_platformToGameKeyMapping) _index)) _id)
                (progn
                (setf _input (jm_getInstanceById_1 _inputFactory _index))
                (if (not (null _input))
                    (progn
                    (jm_add_1 _list _input))))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _list))))

    
(unless (fboundp 'jm_initGameKey_2) (defgeneric jm_initGameKey_2 (this p1 p2)))
(defmethod jm_initGameKey_2 ((this InputToGameKeyMapping) _canvas _gameKey)
  (declare (ignorable this _canvas _gameKey))
  (let (_key)
  (declare (ignorable _key))
    (block jreturn
        (setf _key (jm_getKeyCode_1 _canvas (jm_getId_0 _gameKey)))
        (if (and (< _key 0) (< (JR.i32 (- _key)) (length (slot-value this 'f_negativePlatformToGameKeyMapping))))
            (progn
            (setf (aref (slot-value this 'f_negativePlatformToGameKeyMapping) (JR.i32 (- _key))) _gameKey))
            (if (> _key 0)
            (progn
            (if (eq (aref (slot-value this 'f_platformToGameKeyMapping) _key) (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE))
                (progn
                (setf (aref (slot-value this 'f_platformToGameKeyMapping) _key) _gameKey))))
            (progn
            (PreLogUtil.jm_putOE_4 (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (jm_toString_0 _gameKey)) (slot-value (CommonSeps.jm_getInstance_0) 'f_COLON_SEP)) _key)) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) (JR.newException "Exception"))))))))

    
(unless (fboundp 'jm_getSmallestCanvasGameKeyCode_1) (defgeneric jm_getSmallestCanvasGameKeyCode_1 (this p1)))
(defmethod jm_getSmallestCanvasGameKeyCode_1 ((this InputToGameKeyMapping) _canvas)
  (declare (ignorable this _canvas))
  (let (_nextKey _smallestKey _index)
  (declare (ignorable _nextKey _smallestKey _index))
    (block jreturn
        (setf _nextKey 0)
        (setf _smallestKey 0)
        (progn
            (setf _index (length (slot-value this 'f_mappedGameKeys)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _nextKey (jm_getKeyCode_1 _canvas (jm_getId_0 (aref (slot-value this 'f_mappedGameKeys) _index))))
            (if (< _nextKey _smallestKey)
                (progn
                (setf _smallestKey _nextKey)))))))
        (return-from jreturn _smallestKey))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this InputToGameKeyMapping) _canvas)
  (declare (ignorable this _canvas))
  (let (_negativePlatformToGameKeyMapping _smallestKey _index)
  (declare (ignorable _negativePlatformToGameKeyMapping _smallestKey _index))
    (block jreturn
        (handler-case (progn
            (setf _negativePlatformToGameKeyMapping (JR.newArray nil 0))
            (setf _smallestKey (jm_getSmallestCanvasGameKeyCode_1 this _canvas))
            (if (< _smallestKey 0)
                (progn
                (setf _smallestKey (JR.i32 (- _smallestKey 1)))
                (if (< _smallestKey (JR.i32 (- 256)))
                    (progn
                    (setf _smallestKey (JR.i32 (- 256)))))
                (setf _negativePlatformToGameKeyMapping (JR.newArray nil (JR.i32 (- _smallestKey))))
                (progn
                    (setf _index (length _negativePlatformToGameKeyMapping))
                    (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                        (block jcontinue
                    (setf (aref _negativePlatformToGameKeyMapping _index) (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE))))))
                (setf (slot-value this 'f_negativePlatformToGameKeyMapping) _negativePlatformToGameKeyMapping)))
            (progn
                (setf _index (length (slot-value this 'f_mappedGameKeys)))
                (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                    (block jcontinue
                (jm_initGameKey_2 this _canvas (aref (slot-value this 'f_mappedGameKeys) _index)))))))
            (error (_t) (declare (ignorable _t))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_INIT) _t))))))

    
(unless (fboundp 'jm_getInstanceForCanvas_2) (defgeneric jm_getInstanceForCanvas_2 (this p1 p2)))
(defmethod jm_getInstanceForCanvas_2 ((this InputToGameKeyMapping) _canvas _id)
  (declare (ignorable this _canvas _id))
  (let ()
    (block jreturn
        (if (and (>= _id 0) (< _id (length (slot-value this 'f_platformToGameKeyMapping))))
            (progn
            (return-from jreturn (aref (slot-value this 'f_platformToGameKeyMapping) _id)))
            (if (and (< _id 0) (< (JR.i32 (- _id)) (length (slot-value this 'f_negativePlatformToGameKeyMapping))))
            (progn
            (return-from jreturn (aref (slot-value this 'f_negativePlatformToGameKeyMapping) (JR.i32 (- _id)))))
            (progn
            (return-from jreturn (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE))))))))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this InputToGameKeyMapping) _id)
  (declare (ignorable this _id))
  (let ()
    (block jreturn
        (if (and (>= _id 0) (< _id (length (slot-value this 'f_platformToGameKeyMapping))))
            (progn
            (return-from jreturn (aref (slot-value this 'f_platformToGameKeyMapping) _id)))
            (if (and (< _id 0) (< (JR.i32 (- _id)) (length (slot-value this 'f_negativePlatformToGameKeyMapping))))
            (progn
            (return-from jreturn (aref (slot-value this 'f_negativePlatformToGameKeyMapping) (JR.i32 (- _id)))))
            (progn
            (return-from jreturn (slot-value (slot-value this 'f_gameKeyFactory) 'f_NONE))))))))



