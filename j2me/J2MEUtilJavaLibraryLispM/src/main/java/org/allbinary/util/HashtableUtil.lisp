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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HashtableUtil (JObject)
  ((f_enumerationUtil :initform nil)))

(defvar HashtableUtil.jcell_instance :jnone)
(defun HashtableUtil.jstatic_instance ()
  (when (eq HashtableUtil.jcell_instance :jnone) (setf HashtableUtil.jcell_instance (HashtableUtil.jnew_0)))
  HashtableUtil.jcell_instance)
(defun (setf HashtableUtil.jstatic_instance) (value) (setf HashtableUtil.jcell_instance value))

(defun HashtableUtil.jnew_0 ()
  (let ((this (make-instance 'HashtableUtil)))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    this))

    
(defun HashtableUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (HashtableUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_putAll_2) (defgeneric jm_putAll_2 (this p1 p2)))
(defmethod jm_putAll_2 ((this HashtableUtil) _fromHashtable _hashtable)
  (declare (ignorable this _fromHashtable _hashtable))
  (let (_enumeration _keyCanBeNull _valueCanBeNull)
  (declare (ignorable _enumeration _keyCanBeNull _valueCanBeNull))
    (block jreturn
        (setf _enumeration (jm_keys_0 _fromHashtable))
        (setf _keyCanBeNull nil)
        (setf _valueCanBeNull nil)
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (setf _keyCanBeNull (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration))
            (setf _valueCanBeNull (jm_get_1 _hashtable _keyCanBeNull))
            (if (null _valueCanBeNull)
                (progn
                nil)
                (progn
                (jm_put_2 _hashtable _keyCanBeNull _valueCanBeNull)))))))))

    
(unless (fboundp 'jm_getKeysAsArray_1) (defgeneric jm_getKeysAsArray_1 (this p1)))
(defmethod jm_getKeysAsArray_1 ((this HashtableUtil) _hashtable)
  (declare (ignorable this _hashtable))
  (let (_objectArray _index _enumeration)
  (declare (ignorable _objectArray _index _enumeration))
    (block jreturn
        (setf _objectArray (JR.newArray nil (jm_size_0 _hashtable)))
        (setf _index 0)
        (setf _enumeration (jm_keys_0 _hashtable))
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (setf (aref _objectArray (prog1 _index (setf _index (JR.i32 (+ _index 1))))) (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration)))))
        (return-from jreturn _objectArray))))

    
(unless (fboundp 'jm_getKeysAsList_1) (defgeneric jm_getKeysAsList_1 (this p1)))
(defmethod jm_getKeysAsList_1 ((this HashtableUtil) _hashtable)
  (declare (ignorable this _hashtable))
  (let (_list _enumeration)
  (declare (ignorable _list _enumeration))
    (block jreturn
        (setf _list (BasicArrayListS.jnew_1 (jm_size_0 _hashtable)))
        (setf _enumeration (jm_keys_0 _hashtable))
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (jm_add_1 _list (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration)))))
        (return-from jreturn _list))))



