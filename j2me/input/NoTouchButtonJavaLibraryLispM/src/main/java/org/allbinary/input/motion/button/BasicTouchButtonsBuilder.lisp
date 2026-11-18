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
;;;; package org.allbinary.input.motion.button

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicTouchButtonsBuilder (BaseTouchInput)
  ((f_logUtil :initform nil)))

(defvar BasicTouchButtonsBuilder.jcell_SINGLETON :jnone)
(defun BasicTouchButtonsBuilder.jstatic_SINGLETON ()
  (when (eq BasicTouchButtonsBuilder.jcell_SINGLETON :jnone) (setf BasicTouchButtonsBuilder.jcell_SINGLETON (BasicTouchButtonsBuilder.jnew_0)))
  BasicTouchButtonsBuilder.jcell_SINGLETON)
(defun (setf BasicTouchButtonsBuilder.jstatic_SINGLETON) (value) (setf BasicTouchButtonsBuilder.jcell_SINGLETON value))

(defun BasicTouchButtonsBuilder.jnew_0 ()
  (let ((this (make-instance 'BasicTouchButtonsBuilder)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun BasicTouchButtonsBuilder.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BasicTouchButtonsBuilder.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_getList_0) (defgeneric jm_getList_0 (this)))
(defmethod jm_getList_0 ((this BasicTouchButtonsBuilder))
  (declare (ignorable this))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (handler-case (progn
            (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_LIST))
            (setf _list (BasicArrayListD.jnew_0))
            (return-from jreturn _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_GET_LIST) _e)
            (return-from jreturn (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0))))))))



