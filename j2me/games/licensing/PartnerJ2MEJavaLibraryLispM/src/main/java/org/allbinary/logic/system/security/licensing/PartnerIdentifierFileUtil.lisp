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
;;;; package org.allbinary.logic.system.security.licensing

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PartnerIdentifierFileUtil (JObject)
  ((f_logUtil :initform nil)
   (f_FILE_NAME :initform nil)))

(defvar PartnerIdentifierFileUtil.jcell_instance :jnone)
(defun PartnerIdentifierFileUtil.jstatic_instance ()
  (when (eq PartnerIdentifierFileUtil.jcell_instance :jnone) (setf PartnerIdentifierFileUtil.jcell_instance (PartnerIdentifierFileUtil.jnew_0)))
  PartnerIdentifierFileUtil.jcell_instance)
(defun (setf PartnerIdentifierFileUtil.jstatic_instance) (value) (setf PartnerIdentifierFileUtil.jcell_instance value))

(defun PartnerIdentifierFileUtil.jnew_0 ()
  (let ((this (make-instance 'PartnerIdentifierFileUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_FILE_NAME) "partner.txt")
    this))

    
(defun PartnerIdentifierFileUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (PartnerIdentifierFileUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this PartnerIdentifierFileUtil))
  (declare (ignorable this))
  (let (_resourceUtil _inputStream _inputStreamReader _chars _size _partnerString _commonStrings)
  (declare (ignorable _resourceUtil _inputStream _inputStreamReader _chars _size _partnerString _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _resourceUtil (ResourceUtil.jm_getInstance_0))
            (setf _inputStream (jm_getResourceAsStream_1 _resourceUtil (slot-value this 'f_FILE_NAME)))
            (setf _inputStreamReader (InputStreamReader.jnew_1 _inputStream))
            (setf _chars (JR.newArray 0 30))
            (setf _size (jm_read_1 _inputStreamReader _chars))
            (setf _partnerString (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING))
            (if (> _size 0)
                (progn
                (setf _partnerString (JR.fromChars _chars 0 _size))))
            (jm_close_0 _inputStreamReader)
            (return-from jreturn _partnerString))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_GET) _e)
            (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_NULL_STRING)))))))



