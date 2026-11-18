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

(defclass StreamUtil (JObject)
  ((f_logUtil :initform nil)))

(defvar StreamUtil.jcell_instance :jnone)
(defun StreamUtil.jstatic_instance ()
  (when (eq StreamUtil.jcell_instance :jnone) (setf StreamUtil.jcell_instance (StreamUtil.jnew_0)))
  StreamUtil.jcell_instance)
(defun (setf StreamUtil.jstatic_instance) (value) (setf StreamUtil.jcell_instance value))

    
(defun StreamUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (StreamUtil.jstatic_instance)))))

    
(defun StreamUtil.jnew_0 ()
  (let ((this (make-instance 'StreamUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_get_3) (defgeneric jm_get_3 (this p1 p2 p3)))
(defmethod jm_get_3 ((this StreamUtil) _inputStream _outputStream _buffer)
  (declare (ignorable this _inputStream _outputStream _buffer))
  (let (_len)
  (declare (ignorable _len))
    (block jreturn
        (setf _len 0)
        (block jbreak (loop while t do
                (block jcontinue
            (setf _len (jm_read_3 _inputStream _buffer 0 (length _buffer)))
            (if (/= _len (JR.i32 (- 1)))
                (progn
                nil)
                (progn
                (return-from jbreak)))
            (jm_write_3 _outputStream _buffer 0 _len))))
        (return-from jreturn _outputStream))))

    
(unless (fboundp 'jm_getByteArray_3) (defgeneric jm_getByteArray_3 (this p1 p2 p3)))
(defmethod jm_getByteArray_3 ((this StreamUtil) _inputStream _outputStream2 _byteArray)
  (declare (ignorable this _inputStream _outputStream2 _byteArray))
  (let (_outputStream)
  (declare (ignorable _outputStream))
    (block jreturn
        (setf _outputStream _outputStream2)
        (unwind-protect (handler-case (progn
            (jm_get_3 this _inputStream _outputStream _byteArray)
            (return-from jreturn (jm_toByteArray_0 _outputStream)))
            (error (_e) (declare (ignorable _e))
            (error _e)))
            (progn
            (jm_close_1 this _outputStream))))))

    
(unless (fboundp 'jm_close_1) (defgeneric jm_close_1 (this p1)))
(defmethod jm_close_1 ((this StreamUtil) _closeable)
  (declare (ignorable this _closeable))
  (let (_commonStrings)
  (declare (ignorable _commonStrings))
    (block jreturn
        (handler-case (progn
            (if (not (null _closeable))
                (progn
                (jm_close_0 _closeable)))
            (return-from jreturn t))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CLOSE) _e)
            (return-from jreturn nil))))))



