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
;;;; package org.allbinary.graphics.form.item.validation

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TextItemNumberVisitor (Visitor)
  ((f_logUtil :initform nil)))

    
(defun TextItemNumberVisitor.jnew_0 ()
  (let ((this (make-instance 'TextItemNumberVisitor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this TextItemNumberVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let (_value _stringValidationUtil _commonStrings)
  (declare (ignorable _value _stringValidationUtil _commonStrings))
    (block jreturn
        (setf _value _anyType)
        (if (< (length _value) 2)
            (progn
            (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
            (if (jm_isNumber_1 _stringValidationUtil _value)
                (progn
                (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))
                (progn
                (handler-case (progn
                    (jm_fireError_1 (TextNotificationUtil.jm_getInstance_0) "Numbers Only"))
                    (error (_e) (declare (ignorable _e))
                    (setf _commonStrings (CommonStrings.jm_getInstance_0))
                    (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_VISIT) _e)))
                (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))
            (progn
            (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))))



