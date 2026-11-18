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
;;;; package org.allbinary.data

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CamelCaseUtil (JObject)
  ((f_commonSeps :initform nil)))

(defvar CamelCaseUtil.jcell_instance :jnone)
(defun CamelCaseUtil.jstatic_instance ()
  (when (eq CamelCaseUtil.jcell_instance :jnone) (setf CamelCaseUtil.jcell_instance (CamelCaseUtil.jnew_0)))
  CamelCaseUtil.jcell_instance)
(defun (setf CamelCaseUtil.jstatic_instance) (value) (setf CamelCaseUtil.jcell_instance value))

(defun CamelCaseUtil.jnew_0 ()
  (let ((this (make-instance 'CamelCaseUtil)))
    (setf (slot-value this 'f_commonSeps) (CommonSeps.jm_getInstance_0))
    this))

    
(defun CamelCaseUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (CamelCaseUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getAsCamelCase_2) (defgeneric jm_getAsCamelCase_2 (this p1 p2)))
(defmethod jm_getAsCamelCase_2 ((this CamelCaseUtil) _string _stringBuilder)
  (declare (ignorable this _string _stringBuilder))
  (let (_stringValidationUtil _list _tokenizer _size _word _i)
  (declare (ignorable _stringValidationUtil _list _tokenizer _size _word _i))
    (block jreturn
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (jm_delete_2 _stringBuilder 0 (jm_length_0 _stringBuilder))
        (setf _list (BasicArrayListD.jnew_0))
        (setf _tokenizer (Tokenizer.jnew_1 (slot-value (slot-value this 'f_commonSeps) 'f_UNDERSCORE)))
        (jm_getTokensFromString_2 _tokenizer _string _list)
        (setf _size (jm_size_0 _list))
        (setf _word nil)
        (progn
            (setf _i 0)
            (block jbreak (loop while (< _i _size) do
                (block jcontinue
            (setf _word (jm_get_1 _list _i))
            (setf _word (if (jm_isEmpty_1 _stringValidationUtil _word) _word (jm_toString_0 (jm_append_1 (jm_appendchar_1 (StringMaker.jnew_0) (Character.jm_toUpperCase_1 (JR.charAt _word 0))) (JR.toLowerCase (JR.substring _word 1))))))
            (jm_append_1 _stringBuilder _word))
                (setf _i (JR.i32 (+ _i 1))))))
        (return-from jreturn (jm_toString_0 _stringBuilder)))))



