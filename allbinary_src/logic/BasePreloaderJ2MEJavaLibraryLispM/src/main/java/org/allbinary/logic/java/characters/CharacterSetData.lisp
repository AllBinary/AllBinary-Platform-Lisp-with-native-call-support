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
;;;; package org.allbinary.logic.java.characters

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CharacterSetData (JObject)
  ((f_US_ASCII :initform nil)
   (f_ISO_8859_1 :initform nil)
   (f_UTF_8 :initform nil)
   (f_UTF_16 :initform nil)
   (f_UTF_16BE :initform nil)
   (f_UTF_16LE :initform nil)))

(defvar CharacterSetData.jcell_instance :jnone)
(defun CharacterSetData.jstatic_instance ()
  (when (eq CharacterSetData.jcell_instance :jnone) (setf CharacterSetData.jcell_instance (CharacterSetData.jnew_0)))
  CharacterSetData.jcell_instance)

    
(defun CharacterSetData.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CharacterSetData.jstatic_instance)))))

    
(defun CharacterSetData.jnew_0 ()
  (let ((this (make-instance 'CharacterSetData)))
    (setf (slot-value this 'f_US_ASCII) "US-ASCII")
    (setf (slot-value this 'f_ISO_8859_1) "ISO-8859-1")
    (setf (slot-value this 'f_UTF_8) "UTF-8")
    (setf (slot-value this 'f_UTF_16) "UTF-16")
    (setf (slot-value this 'f_UTF_16BE) "UTF-16BE")
    (setf (slot-value this 'f_UTF_16LE) "UTF-16LE")
  (let ()
    (block jreturn nil))
    this))



