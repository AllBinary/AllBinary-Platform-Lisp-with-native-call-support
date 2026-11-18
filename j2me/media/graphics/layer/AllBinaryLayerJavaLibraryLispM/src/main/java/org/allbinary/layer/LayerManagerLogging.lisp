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
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerManagerLogging (LayerManagerLoggingBase)
  ((f_logUtil :initform nil)
   (f_stringBuilder :initform nil)
   (f_APPEND :initform nil)
   (f_APPEND_ :initform nil)
   (f__AT_ :initform nil)
   (f_ATTEMPT_REMOVE_ :initform nil)
   (f_REMOVE_ :initform nil)
   (f_REMOVE :initform nil)
   (f_DID_NOT_REMOVE :initform nil)
   (f_CLEAR :initform nil)))

(defvar LayerManagerLogging.jcell_instance :jnone)
(defun LayerManagerLogging.jstatic_instance ()
  (when (eq LayerManagerLogging.jcell_instance :jnone) (setf LayerManagerLogging.jcell_instance (LayerManagerLogging.jnew_0)))
  LayerManagerLogging.jcell_instance)
(defun (setf LayerManagerLogging.jstatic_instance) (value) (setf LayerManagerLogging.jcell_instance value))

(defvar LayerManagerLogging.jcell_removeFailed :jnone)
(defun LayerManagerLogging.jstatic_removeFailed ()
  (when (eq LayerManagerLogging.jcell_removeFailed :jnone) (setf LayerManagerLogging.jcell_removeFailed nil))
  LayerManagerLogging.jcell_removeFailed)
(defun (setf LayerManagerLogging.jstatic_removeFailed) (value) (setf LayerManagerLogging.jcell_removeFailed value))

(defun LayerManagerLogging.jnew_0 ()
  (let ((this (make-instance 'LayerManagerLogging)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_stringBuilder) (StringMaker.jnew_0))
    (setf (slot-value this 'f_APPEND) "append")
    (setf (slot-value this 'f_APPEND_) " append: ")
    (setf (slot-value this 'f__AT_) " at: ")
    (setf (slot-value this 'f_ATTEMPT_REMOVE_) " Remove Attempt: ")
    (setf (slot-value this 'f_REMOVE_) " Remove: ")
    (setf (slot-value this 'f_REMOVE) "remove")
    (setf (slot-value this 'f_DID_NOT_REMOVE) " Did not remove: ")
    (setf (slot-value this 'f_CLEAR) " Clear List")
    this))

    
(defun LayerManagerLogging.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LayerManagerLogging.jstatic_instance)))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this LayerManagerLogging) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_APPEND_)) (jm_getName_0 _layerInterface))) this (slot-value this 'f_APPEND)))))

    
(unless (fboundp 'jm_appendAt_2) (defgeneric jm_appendAt_2 (this p1 p2)))
(defmethod jm_appendAt_2 ((this LayerManagerLogging) _layerInterface _index)
  (declare (ignorable this _layerInterface _index))
  (let ()
    (block jreturn
        (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_APPEND_)) (jm_getName_0 _layerInterface)) (slot-value this 'f__AT_)) _index)) this (slot-value this 'f_APPEND)))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this LayerManagerLogging) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (if (null _layerInterface)
            (progn
            (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_ATTEMPT_REMOVE_)) (jm_toString_1 (StringUtil.jm_getInstance_0) _layerInterface))) this (slot-value this 'f_REMOVE)))
            (progn
            (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_ATTEMPT_REMOVE_)) (jm_getName_0 _layerInterface))) this (slot-value this 'f_REMOVE)))))))

    
(unless (fboundp 'jm_removeResult_3) (defgeneric jm_removeResult_3 (this p1 p2 p3)))
(defmethod jm_removeResult_3 ((this LayerManagerLogging) _layerManager _layerInterface _result)
  (declare (ignorable this _layerManager _layerInterface _result))
  (let ()
    (block jreturn
        (if (null _layerInterface)
            (progn
            (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_REMOVE_)) (jm_toString_1 (StringUtil.jm_getInstance_0) _layerInterface))) this (slot-value this 'f_REMOVE)))
            (if _result
            (progn
            (if (LayerManagerLogging.jstatic_removeFailed)
                (progn
                (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_REMOVE_)) (jm_getName_0 _layerInterface))) this (slot-value this 'f_REMOVE)))))
            (progn
            (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_DID_NOT_REMOVE)) (jm_getName_0 _layerInterface))) this (slot-value this 'f_REMOVE))
            (setf (LayerManagerLogging.jstatic_removeFailed) t)))))))

    
(unless (fboundp 'jm_log_1) (defgeneric jm_log_1 (this p1)))
(defmethod jm_log_1 ((this LayerManagerLogging) _layerManager)
  (declare (ignorable this _layerManager))
  (let (_size _commonSeps _allBinaryLayer _index)
  (declare (ignorable _size _commonSeps _allBinaryLayer _index))
    (block jreturn
        (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
        (setf _size (jm_getSize_0 _layerManager))
        (setf _commonSeps (CommonSeps.jm_getInstance_0))
        (jm_append_1 (jm_append_1 (slot-value this 'f_stringBuilder) (Integer.jm_toHexString_1 (jm_hashCode_1 (TsUtil.jm_getInstance_0) _layerManager))) (slot-value _commonSeps 'f_COLON_SEP))
        (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) _size) (slot-value _commonSeps 'f_COLON_SEP))
        (setf _allBinaryLayer nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _allBinaryLayer (jm_getLayerAt_1 _layerManager _index))
            (jm_append_1 (jm_append_1 (slot-value this 'f_stringBuilder) (jm_getName_0 _allBinaryLayer)) (slot-value _commonSeps 'f_COMMA)))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (slot-value this 'f_stringBuilder)) this (slot-value this 'f_REMOVE)))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this LayerManagerLogging))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_delete_2 (slot-value this 'f_stringBuilder) 0 (jm_length_0 (slot-value this 'f_stringBuilder)))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_appendint_1 (slot-value this 'f_stringBuilder) (jm_hashCode_1 (TsUtil.jm_getInstance_0) this)) (slot-value this 'f_CLEAR))) this (slot-value this 'f_CLEAR)))))



