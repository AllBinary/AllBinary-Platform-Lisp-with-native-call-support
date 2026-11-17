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
;;;; package org.allbinary.logic.system.hardware

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SystemHardwareFactory (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_hardwareInterface :initform nil)))

(defvar SystemHardwareFactory.jcell_instance :jnone)
(defun SystemHardwareFactory.jstatic_instance ()
  (when (eq SystemHardwareFactory.jcell_instance :jnone) (setf SystemHardwareFactory.jcell_instance (SystemHardwareFactory.jnew_0)))
  SystemHardwareFactory.jcell_instance)

    
(defun SystemHardwareFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SystemHardwareFactory.jstatic_instance)))))

    
(defun SystemHardwareFactory.jnew_0 ()
  (let ((this (make-instance 'SystemHardwareFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_hardwareInterface) (NoHardware.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this SystemHardwareFactory) _operatingSystemInterface)
  (declare (ignorable this _operatingSystemInterface))
  (let ()
    (block jreturn
        (handler-case (progn
            (if (eq (slot-value this 'f_hardwareInterface) (NoHardware.jm_getInstance_0))
                (progn
                (setf (slot-value this 'f_hardwareInterface) (jm_getInstance_1 (HardwareFactory.jm_getInstance_0) _operatingSystemInterface))))
            (jm_putF_3 (slot-value this 'f_logUtil) "Found Hardware" this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR)))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) _e)))
        (return-from jreturn (slot-value this 'f_hardwareInterface)))))

    
(defun SystemHardwareFactory.jm_static_toString_0 ()
  (let (_systemHardwareFactory _osBuffer)
  (declare (ignorable _systemHardwareFactory _osBuffer))
    (block jreturn
        (setf _systemHardwareFactory (SystemHardwareFactory.jm_getInstance_0))
        (setf _osBuffer (StringMaker.jnew_0))
        (jm_append_1 _osBuffer (JR.unescape "Hardware Info: \\n"))
        (if (not (null (slot-value _systemHardwareFactory 'f_hardwareInterface)))
            (progn
            (jm_append_1 _osBuffer (JR.toString (slot-value _systemHardwareFactory 'f_hardwareInterface))))
            (progn
            (jm_append_1 _osBuffer (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING))))
        (return-from jreturn (jm_toString_0 _osBuffer)))))



