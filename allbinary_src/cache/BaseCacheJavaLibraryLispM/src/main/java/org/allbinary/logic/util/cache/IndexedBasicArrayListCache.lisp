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
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass IndexedBasicArrayListCache (BaseBasicArrayListCache)
  ((f_commonStrings :initform nil)
   (f_size :initform 0)
   (f_index :initform 0)))

    
(defun IndexedBasicArrayListCache.jm_createCache_1 (_size)
  (declare (ignorable _size))
  (let (_indexedBasicArrayListCache)
  (declare (ignorable _indexedBasicArrayListCache))
    (block jreturn
        (setf _indexedBasicArrayListCache (IndexedBasicArrayListCache.jnew_0))
        (jm_init_1 _indexedBasicArrayListCache _size)
        (return-from jreturn _indexedBasicArrayListCache))))

    
(defun IndexedBasicArrayListCache.jnew_0 ()
  (let ((this (make-instance 'IndexedBasicArrayListCache)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_size) 0)
    (setf (slot-value this 'f_index) 0)
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this IndexedBasicArrayListCache) _size)
  (declare (ignorable this _size))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (if (< (slot-value this 'f_size) _size)
            (progn
            (jm_ensureCapacity_1 (slot-value this 'f_list) _size)
            (progn
                (setf _index (JR.i32 (- _size 1)))
                (block jbreak (loop while (>= _index (slot-value this 'f_size)) do
                    (block jcontinue
                (jm_addDefault_0 this))
                    (setf _index (JR.i32 (- _index 1))))))
            (setf (slot-value this 'f_size) _size))))))

    
(unless (fboundp 'jm_getAt_1) (defgeneric jm_getAt_1 (this p1)))
(defmethod jm_getAt_1 ((this IndexedBasicArrayListCache) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index)))))

    
(unless (fboundp 'jm_addDefault_0) (defgeneric jm_addDefault_0 (this)))
(defmethod jm_addDefault_0 ((this IndexedBasicArrayListCache))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_addObject_1) (defgeneric jm_addObject_1 (this p1)))
(defmethod jm_addObject_1 ((this IndexedBasicArrayListCache) _anyType)
  (declare (ignorable this _anyType))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _anyType))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this IndexedBasicArrayListCache) _cacheableInterface)
  (declare (ignorable this _cacheableInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _cacheableInterface))))

    
(unless (fboundp 'jm_addArray_1) (defgeneric jm_addArray_1 (this p1)))
(defmethod jm_addArray_1 ((this IndexedBasicArrayListCache) _cacheableInterfaces)
  (declare (ignorable this _cacheableInterfaces))
  (let ()
    (block jreturn
        (error (JR.newException "Exception" "No Imple")))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this IndexedBasicArrayListCache))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_index) 0))))



