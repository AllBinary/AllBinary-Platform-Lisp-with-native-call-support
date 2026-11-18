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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PlatformKeyFactory (JObject)
  ())

(defvar PlatformKeyFactory.jcell_instance :jnone)
(defun PlatformKeyFactory.jstatic_instance ()
  (when (eq PlatformKeyFactory.jcell_instance :jnone) (setf PlatformKeyFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  PlatformKeyFactory.jcell_instance)
(defun (setf PlatformKeyFactory.jstatic_instance) (value) (setf PlatformKeyFactory.jcell_instance value))

(defun PlatformKeyFactory.jnew_0 ()
  (let ((this (make-instance 'PlatformKeyFactory)))
    this))

    
(defun PlatformKeyFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (PlatformKeyFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (PlatformKeyFactory.jstatic_instance) (PlatformKeyFactory.jnew_0))))
        (return-from jreturn (PlatformKeyFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getString_1) (defgeneric jm_getString_1 (this p1)))
(defmethod jm_getString_1 ((this PlatformKeyFactory) _keyCode)
  (declare (ignorable this _keyCode))
  (let ()
    (block jreturn
        (return-from jreturn (PCGameKey.jm_getString_1 _keyCode)))))

    
(unless (fboundp 'jm_isSubmission_1) (defgeneric jm_isSubmission_1 (this p1)))
(defmethod jm_isSubmission_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isSubmission_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isDelete_1) (defgeneric jm_isDelete_1 (this p1)))
(defmethod jm_isDelete_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isDelete_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isBackSpace_1) (defgeneric jm_isBackSpace_1 (this p1)))
(defmethod jm_isBackSpace_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isBackSpace_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isUp_1) (defgeneric jm_isUp_1 (this p1)))
(defmethod jm_isUp_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isUp_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isDown_1) (defgeneric jm_isDown_1 (this p1)))
(defmethod jm_isDown_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isDown_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isEnter_1) (defgeneric jm_isEnter_1 (this p1)))
(defmethod jm_isEnter_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isEnter_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isLeft_1) (defgeneric jm_isLeft_1 (this p1)))
(defmethod jm_isLeft_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isLeft_1 (PCKeyFactory.jm_getInstance_0) _input)))))

    
(unless (fboundp 'jm_isRight_1) (defgeneric jm_isRight_1 (this p1)))
(defmethod jm_isRight_1 ((this PlatformKeyFactory) _input)
  (declare (ignorable this _input))
  (let ()
    (block jreturn
        (return-from jreturn (jm_isRight_1 (PCKeyFactory.jm_getInstance_0) _input)))))



