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
;;;; package org.allbinary.util

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;ArkTs does not have this.  So this is for the ArkTs build.
(defclass EnumerationUtil (JObject)
  ())

(defvar EnumerationUtil.jcell_instance :jnone)
(defun EnumerationUtil.jstatic_instance ()
  (when (eq EnumerationUtil.jcell_instance :jnone) (setf EnumerationUtil.jcell_instance (EnumerationUtil.jnew_0)))
  EnumerationUtil.jcell_instance)

(defun EnumerationUtil.jnew_0 ()
  (let ((this (make-instance 'EnumerationUtil)))
    this))

    
(defun EnumerationUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (EnumerationUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_hasMoreElements_1) (defgeneric jm_hasMoreElements_1 (this p1)))
(defmethod jm_hasMoreElements_1 ((this EnumerationUtil) _enumeration)
  (declare (ignorable this _enumeration))
  (let ()
    (block jreturn
        (return-from jreturn (jm_hasMoreElements_0 _enumeration)))))

    
(unless (fboundp 'jm_nextElement_1) (defgeneric jm_nextElement_1 (this p1)))
(defmethod jm_nextElement_1 ((this EnumerationUtil) _enumeration)
  (declare (ignorable this _enumeration))
  (let ()
    (block jreturn
        (return-from jreturn (jm_nextElement_0 _enumeration)))))

    
(unless (fboundp 'jm_getAsArray_1) (defgeneric jm_getAsArray_1 (this p1)))
(defmethod jm_getAsArray_1 ((this EnumerationUtil) _enumeration)
  (declare (ignorable this _enumeration))
  (let (_basicArrayList)
  (declare (ignorable _basicArrayList))
    (block jreturn
        (setf _basicArrayList (BasicArrayListD.jnew_0))
        (block jbreak (loop while (jm_hasMoreElements_1 this _enumeration) do
                (block jcontinue
            (jm_add_1 _basicArrayList (jm_nextElement_1 this _enumeration)))))
        (return-from jreturn (jm_toArray_0 _basicArrayList)))))



