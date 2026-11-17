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
;;;; package org.allbinary.logic.util.cache

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass KeylessBasicArrayListCache (IndexedBasicArrayListCache)
  ((f_logUtil :initform nil)
   (f_basicArrayListUtil :initform nil)))

    
(defun KeylessBasicArrayListCache.jnew_0 ()
  (let ((this (make-instance 'KeylessBasicArrayListCache)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_basicArrayListUtil) (BasicArrayListUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this KeylessBasicArrayListCache))
  (declare (ignorable this))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (handler-case (progn
            (if (>= (slot-value this 'f_index) (jm_size_0 (slot-value this 'f_list)))
                (progn
                (jm_addDefault_0 this)))
            (setf _list (jm_getAt_1 this (prog1 (slot-value this 'f_index) (setf (slot-value this 'f_index) (JR.i32 (+ (slot-value this 'f_index) 1))))))
            (return-from jreturn _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_GET) _e)
            (return-from jreturn (jm_getImmutableInstance_0 (slot-value this 'f_basicArrayListUtil))))))))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this KeylessBasicArrayListCache))
  (declare (ignorable this))
  (let (_basicArrayList _index)
  (declare (ignorable _basicArrayList _index))
    (block jreturn
        (call-next-method this)
        (setf _basicArrayList nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_list)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _basicArrayList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (jm_clear_0 _basicArrayList))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_log_0) (defgeneric jm_log_0 (this)))
(defmethod jm_log_0 ((this KeylessBasicArrayListCache))
  (declare (ignorable this))
  (let (_stringBuffer _S_LABEL _basicArrayList _index)
  (declare (ignorable _stringBuffer _S_LABEL _basicArrayList _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer "S: ")
        (jm_appendint_1 _stringBuffer (jm_size_0 (slot-value this 'f_list)))
        (setf _S_LABEL " s: ")
        (setf _basicArrayList nil)
        (progn
            (setf _index (JR.i32 (- (jm_size_0 (slot-value this 'f_list)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_append_1 _stringBuffer _S_LABEL)
            (setf _basicArrayList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (jm_appendint_1 _stringBuffer (jm_size_0 _basicArrayList)))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



