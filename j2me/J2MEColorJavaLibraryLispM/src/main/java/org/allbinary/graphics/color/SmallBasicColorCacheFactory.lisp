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
;;;; package org.allbinary.graphics.color

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SmallBasicColorCacheFactory (JObject)
  ((f_SIZE :initform 0)
   (f_INDEX_TO_COLOR :initform nil)
   (f_BASIC_COLOR_ARRAY :initform nil)
   (f_colorIndex :initform 0)))

(defvar SmallBasicColorCacheFactory.jcell_instance :jnone)
(defun SmallBasicColorCacheFactory.jstatic_instance ()
  (when (eq SmallBasicColorCacheFactory.jcell_instance :jnone) (setf SmallBasicColorCacheFactory.jcell_instance (SmallBasicColorCacheFactory.jnew_0)))
  SmallBasicColorCacheFactory.jcell_instance)
(defun (setf SmallBasicColorCacheFactory.jstatic_instance) (value) (setf SmallBasicColorCacheFactory.jcell_instance value))

    
(defun SmallBasicColorCacheFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SmallBasicColorCacheFactory.jstatic_instance)))))

    
(defun SmallBasicColorCacheFactory.jnew_0 ()
  (let ((this (make-instance 'SmallBasicColorCacheFactory)))
    (setf (slot-value this 'f_SIZE) 255)
    (setf (slot-value this 'f_INDEX_TO_COLOR) (JR.newArray 0 (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_BASIC_COLOR_ARRAY) (JR.newArray nil (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_colorIndex) 0)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this SmallBasicColorCacheFactory) _basicDefaultColor)
  (declare (ignorable this _basicDefaultColor))
  (let ()
    (block jreturn
        (setf (aref (slot-value this 'f_BASIC_COLOR_ARRAY) (slot-value this 'f_colorIndex)) _basicDefaultColor)
        (setf (aref (slot-value this 'f_INDEX_TO_COLOR) (slot-value this 'f_colorIndex)) (jm_intValue_0 _basicDefaultColor))
        (setf (slot-value this 'f_colorIndex) (JR.i32 (+ (slot-value this 'f_colorIndex) 1))))))

    
(unless (fboundp 'jm_getAndOrCreate_1) (defgeneric jm_getAndOrCreate_1 (this p1)))
(defmethod jm_getAndOrCreate_1 ((this SmallBasicColorCacheFactory) _colorAsInt)
  (declare (ignorable this _colorAsInt))
  (let (_basicColor _index _ALPHA_MASK)
  (declare (ignorable _basicColor _index _ALPHA_MASK))
    (block jreturn
        (setf _basicColor nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index (slot-value this 'f_SIZE)) do
                (block jcontinue
            (if (= (aref (slot-value this 'f_INDEX_TO_COLOR) _index) _colorAsInt)
                (progn
                (return-from jreturn (aref (slot-value this 'f_BASIC_COLOR_ARRAY) _index)))))
                (setf _index (JR.i32 (+ _index 1))))))
        (setf _ALPHA_MASK #xFF000000)
        (setf _basicColor (jm_createInstanceAN_3 (BasicColorFactory.jm_getInstance_0) (logand _colorAsInt _ALPHA_MASK) (logand _colorAsInt #x00FFFFFF) (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))
        (jm_add_1 this _basicColor)
        (return-from jreturn _basicColor))))



