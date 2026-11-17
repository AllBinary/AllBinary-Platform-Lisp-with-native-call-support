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
;;;; package org.allbinary.logic.system.os

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GenericOperatingSystem (JObject)
  ((f_osName :initform nil)
   (f_osArch :initform nil)
   (f_osVersion :initform nil)
   (f_characterSet :initform nil)
   (f_scalable :initform nil)))

    
(defun GenericOperatingSystem.jnew_0 ()
  (let ((this (make-instance 'GenericOperatingSystem)))
    
    
    
    (setf (slot-value this 'f_characterSet) (CharacterSet.jnew_0))
    (setf (slot-value this 'f_scalable) nil)
  (let (_systemProperties _stringValidationUtil _EMPTY_STRING)
  (declare (ignorable _systemProperties _stringValidationUtil _EMPTY_STRING))
    (block jreturn
        (setf _systemProperties (SystemProperties.jm_getInstance_0))
        (setf _stringValidationUtil (StringValidationUtil.jm_getInstance_0))
        (setf _EMPTY_STRING (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
        (if (jm_isEmpty_1 _stringValidationUtil (jm_getName_0 _systemProperties))
            (progn
            (setf (slot-value this 'f_osName) _EMPTY_STRING))
            (progn
            (setf (slot-value this 'f_osName) (jm_getName_0 _systemProperties))))
        (if (jm_isEmpty_1 _stringValidationUtil (jm_getArch_0 _systemProperties))
            (progn
            (setf (slot-value this 'f_osArch) _EMPTY_STRING))
            (progn
            (setf (slot-value this 'f_osArch) (jm_getArch_0 _systemProperties))))
        (if (jm_isEmpty_1 _stringValidationUtil (jm_getVersion_0 _systemProperties))
            (progn
            (setf (slot-value this 'f_osVersion) _EMPTY_STRING))
            (progn
            (setf (slot-value this 'f_osVersion) (jm_getVersion_0 _systemProperties))))))
    this))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_osName)))))

    
(unless (fboundp 'jm_getVersion_0) (defgeneric jm_getVersion_0 (this)))
(defmethod jm_getVersion_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_osVersion)))))

    
(unless (fboundp 'jm_getArch_0) (defgeneric jm_getArch_0 (this)))
(defmethod jm_getArch_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_osArch)))))

    
(unless (fboundp 'jm_getCharacterSet_0) (defgeneric jm_getCharacterSet_0 (this)))
(defmethod jm_getCharacterSet_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_characterSet)))))

    
(unless (fboundp 'jm_isOverScan_0) (defgeneric jm_isOverScan_0 (this)))
(defmethod jm_isOverScan_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_getOverScanXPercent_0) (defgeneric jm_getOverScanXPercent_0 (this)))
(defmethod jm_getOverScanXPercent_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 100))))

    
(unless (fboundp 'jm_getOverScanYPercent_0) (defgeneric jm_getOverScanYPercent_0 (this)))
(defmethod jm_getOverScanYPercent_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 100))))

    
(unless (fboundp 'jm_isScalable_0) (defgeneric jm_isScalable_0 (this)))
(defmethod jm_isScalable_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_scalable)))))

    
(unless (fboundp 'jm_isAutoHide_0) (defgeneric jm_isAutoHide_0 (this)))
(defmethod jm_isAutoHide_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GenericOperatingSystem))
  (declare (ignorable this))
  (let (_NEW_LINE _osBuffer)
  (declare (ignorable _NEW_LINE _osBuffer))
    (block jreturn
        (setf _NEW_LINE (slot-value (CommonSeps.jm_getInstance_0) 'f_NEW_LINE))
        (setf _osBuffer (StringMaker.jnew_0))
        (jm_append_1 _osBuffer (JR.unescape "Operating System Info: \\n"))
        (jm_append_1 _osBuffer (jm_getName_0 this))
        (jm_append_1 _osBuffer _NEW_LINE)
        (jm_append_1 _osBuffer (jm_getArch_0 this))
        (jm_append_1 _osBuffer _NEW_LINE)
        (jm_append_1 _osBuffer (jm_getVersion_0 this))
        (jm_append_1 _osBuffer _NEW_LINE)
        (jm_append_1 _osBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getCharacterSet_0 this)))
        (jm_append_1 _osBuffer _NEW_LINE)
        (return-from jreturn (jm_toString_0 _osBuffer)))))



