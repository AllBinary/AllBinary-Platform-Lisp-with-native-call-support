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

(defclass BufferedLineReader (JObject)
  ((f_tmpIn :initform nil)))

    
(defun BufferedLineReader.jnew_1 (_file)
  (declare (ignorable _file))
  (let ((this (make-instance 'BufferedLineReader)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_tmpIn) (BufferedReader.jnew_1 (FileReader.jnew_1 (AbFileNativeUtil.jm_get_1 _file))))))
    this))

    
(unless (fboundp 'jm_readUpToLines_1) (defgeneric jm_readUpToLines_1 (this p1)))
(defmethod jm_readUpToLines_1 ((this BufferedLineReader) _readAheadIndex)
  (declare (ignorable this _readAheadIndex))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_readLine_0) (defgeneric jm_readLine_0 (this)))
(defmethod jm_readLine_0 ((this BufferedLineReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_readLine_0 (slot-value this 'f_tmpIn))))))

    
(unless (fboundp 'jm_ready_0) (defgeneric jm_ready_0 (this)))
(defmethod jm_ready_0 ((this BufferedLineReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_ready_0 (slot-value this 'f_tmpIn))))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this BufferedLineReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_getCurrent_0) (defgeneric jm_getCurrent_0 (this)))
(defmethod jm_getCurrent_0 ((this BufferedLineReader))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))



