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

(defclass TextItemUserIdentifierVisitor (Visitor)
  ((f_logUtil :initform nil)))

    
(defun TextItemUserIdentifierVisitor.jnew_0 ()
  (let ((this (make-instance 'TextItemUserIdentifierVisitor)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_visit_1) (defgeneric jm_visit_1 (this p1)))
(defmethod jm_visit_1 ((this TextItemUserIdentifierVisitor) _anyType)
  (declare (ignorable this _anyType))
  (let (_value _charValue _stringValidationUtil _commonStrings)
  (declare (ignorable _value _charValue _stringValidationUtil _commonStrings))
    (block jreturn
        (setf _value _anyType)
        (if (< (length _value) 2)
            (progn
            (setf _charValue (JR.charAt _value 0))
            (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
            (if (jm_isNumber_1 _stringValidationUtil _value)
                (progn
                (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))
                (if (jm_isLetter_1 this _charValue)
                (progn
                (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_TRUE)))
                (progn
                (handler-case (progn
                    (jm_fireError_1 (TextNotificationUtil.jm_getInstance_0) "Only Letters & Numbers Allowed"))
                    (error (_e) (declare (ignorable _e))
                    (setf _commonStrings (CommonStrings.jm_getInstance_0))
                    (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_VISIT) _e)))
                (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE))))))
            (progn
            (return-from jreturn (slot-value (BooleanFactory.jm_getInstance_0) 'f_FALSE)))))))

    
(unless (fboundp 'jm_isLetter_1) (defgeneric jm_isLetter_1 (this p1)))
(defmethod jm_isLetter_1 ((this TextItemUserIdentifierVisitor) _charValue)
  (declare (ignorable this _charValue))
  (let (_value)
  (declare (ignorable _value))
    (block jreturn
        (setf _value _charValue)
        (return-from jreturn (or (and (> _value 64) (< _value 91)) (and (> _value 96) (< _value 123)))))))



