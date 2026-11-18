;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;J2SEForJ2ME
(defclass J2SEUtil (JObject)
  ())

(defvar J2SEUtil.jcell_instance :jnone)
(defun J2SEUtil.jstatic_instance ()
  (when (eq J2SEUtil.jcell_instance :jnone) (setf J2SEUtil.jcell_instance (J2SEUtil.jnew_0)))
  J2SEUtil.jcell_instance)
(defun (setf J2SEUtil.jstatic_instance) (value) (setf J2SEUtil.jcell_instance value))

(defun J2SEUtil.jnew_0 ()
  (let ((this (make-instance 'J2SEUtil)))
    this))

    
(defun J2SEUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (J2SEUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getHashMapAsArray_1) (defgeneric jm_getHashMapAsArray_1 (this p1)))
(defmethod jm_getHashMapAsArray_1 ((this J2SEUtil) _hashMap)
  (declare (ignorable this _hashMap))
  (let (_objectArray)
  (declare (ignorable _objectArray))
    (block jreturn
        (setf _objectArray (jm_toArray_0 (jm_keySet_0 _hashMap)))
        (return-from jreturn _objectArray))))

    
(unless (fboundp 'jm_getMapAsArray_1) (defgeneric jm_getMapAsArray_1 (this p1)))
(defmethod jm_getMapAsArray_1 ((this J2SEUtil) _map)
  (declare (ignorable this _map))
  (let (_objectArray)
  (declare (ignorable _objectArray))
    (block jreturn
        (setf _objectArray (jm_toArray_0 (jm_keySet_0 _map)))
        (return-from jreturn _objectArray))))

    
(unless (fboundp 'jm_getSetAsArray_1) (defgeneric jm_getSetAsArray_1 (this p1)))
(defmethod jm_getSetAsArray_1 ((this J2SEUtil) _set)
  (declare (ignorable this _set))
  (let (_objectArray)
  (declare (ignorable _objectArray))
    (block jreturn
        (setf _objectArray (jm_toArray_0 _set))
        (return-from jreturn _objectArray))))



