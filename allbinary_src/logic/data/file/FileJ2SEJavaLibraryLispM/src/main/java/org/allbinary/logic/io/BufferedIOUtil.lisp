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
;;;; package org.allbinary.logic.io

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BufferedIOUtil (JObject)
  ())

(defun BufferedIOUtil.jnew_0 ()
  (let ((this (make-instance 'BufferedIOUtil)))
    this))

    
(defun BufferedIOUtil.jm_copy_2 (_backupFile _backupFileBak)
  (declare (ignorable _backupFile _backupFileBak))
  (let (_line _tmpOut _tmpIn)
  (declare (ignorable _line _tmpOut _tmpIn))
    (block jreturn
        (setf _line (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (setf _tmpOut (BufferedWriter.jnew_1 (FileWriter.jnew_1 (AbFileNativeUtil.jm_get_1 _backupFileBak))))
        (setf _tmpIn (BufferedReader.jnew_1 (FileReader.jnew_1 (AbFileNativeUtil.jm_get_1 _backupFile))))
        (block jbreak (loop while (jm_ready_0 _tmpIn) do
                (block jcontinue
            (setf _line (jm_readLine_0 _tmpIn))
            (jm_write_3 _tmpOut _line 0 (length _line))
            (jm_newLine_0 _tmpOut))))
        (jm_flush_0 _tmpOut))))



