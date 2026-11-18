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
;;;; package org.allbinary.logic.io.path

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AbFilePath (AbPath)
  ())

    
(defun AbFilePath.jnew_1 (_aPath)
  (declare (ignorable _aPath))
  (let ((this (make-instance 'AbFilePath)))
  (let (_pathData _abPathUtil)
  (declare (ignorable _pathData _abPathUtil))
    (block jreturn
        nil
        (setf _pathData (AbPathData.jm_getInstance_0))
        (setf _abPathUtil (PathUtil.jm_getInstance_0))
        (setf (slot-value this 'f_schema) (jm_getSchema_1 this _aPath))
        (jm_setName_1 this (jm_getNameFromPath_1 _pathData _aPath))
        (jm_setPath_1 this (jm_adjust_1 _abPathUtil (jm_getPathFromPath_1 this (JR.toString (jm_removeNameFromPath_1 _abPathUtil _aPath)))))))
    this))



