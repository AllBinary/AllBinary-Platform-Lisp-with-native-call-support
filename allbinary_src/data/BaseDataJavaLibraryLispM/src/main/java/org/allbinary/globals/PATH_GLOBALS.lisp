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
;;;; package org.allbinary.globals

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PATH_GLOBALS (JObject)
  ((f_DATA_PATH :initform nil)
   (f_INIT_PATH :initform nil)
   (f_VIEWS_PATH :initform nil)
   (f_LOG_PATH :initform nil)
   (f_BACKUP_PATH :initform nil)))

(defvar PATH_GLOBALS.jcell_instance :jnone)
(defun PATH_GLOBALS.jstatic_instance ()
  (when (eq PATH_GLOBALS.jcell_instance :jnone) (setf PATH_GLOBALS.jcell_instance (PATH_GLOBALS.jnew_0)))
  PATH_GLOBALS.jcell_instance)

    
(defun PATH_GLOBALS.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PATH_GLOBALS.jstatic_instance)))))

    
(defun PATH_GLOBALS.jnew_0 ()
  (let ((this (make-instance 'PATH_GLOBALS)))
    
    
    
    
    
  (let (_stringBuffer _abPathData)
  (declare (ignorable _stringBuffer _abPathData))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _abPathData (AbPathData.jm_getInstance_0))
        (jm_append_1 _stringBuffer "data")
        (jm_append_1 _stringBuffer (slot-value _abPathData 'f_SEPARATOR))
        (setf (slot-value this 'f_DATA_PATH) (jm_toString_0 _stringBuffer))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (jm_append_1 _stringBuffer (slot-value this 'f_DATA_PATH))
        (jm_append_1 _stringBuffer (slot-value (CommonStrings.jm_getInstance_0) 'f_INIT))
        (jm_append_1 _stringBuffer (slot-value _abPathData 'f_SEPARATOR))
        (setf (slot-value this 'f_INIT_PATH) (jm_toString_0 _stringBuffer))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (jm_append_1 _stringBuffer (slot-value this 'f_DATA_PATH))
        (jm_append_1 _stringBuffer "log")
        (jm_append_1 _stringBuffer (slot-value _abPathData 'f_SEPARATOR))
        (setf (slot-value this 'f_LOG_PATH) (jm_toString_0 _stringBuffer))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (jm_append_1 _stringBuffer (slot-value this 'f_DATA_PATH))
        (jm_append_1 _stringBuffer "backup")
        (jm_append_1 _stringBuffer (slot-value _abPathData 'f_SEPARATOR))
        (setf (slot-value this 'f_BACKUP_PATH) (jm_toString_0 _stringBuffer))
        (jm_delete_2 _stringBuffer 0 (jm_length_0 _stringBuffer))
        (jm_append_1 _stringBuffer (slot-value this 'f_INIT_PATH))
        (jm_append_1 _stringBuffer "views")
        (jm_append_1 _stringBuffer (slot-value _abPathData 'f_SEPARATOR))
        (setf (slot-value this 'f_VIEWS_PATH) (jm_toString_0 _stringBuffer))))
    this))



