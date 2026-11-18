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
;;;; package org.allbinary.thirdparty.store

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ThirdPartyMessageFactory (JObject)
  ((f_AUTHORIZED :initform nil)
   (f_NOT_AUTHORIZED :initform nil)
   (f_LINKAGE_ERROR :initform nil)))

(defvar ThirdPartyMessageFactory.jcell_instance :jnone)
(defun ThirdPartyMessageFactory.jstatic_instance ()
  (when (eq ThirdPartyMessageFactory.jcell_instance :jnone) (setf ThirdPartyMessageFactory.jcell_instance (ThirdPartyMessageFactory.jnew_0)))
  ThirdPartyMessageFactory.jcell_instance)
(defun (setf ThirdPartyMessageFactory.jstatic_instance) (value) (setf ThirdPartyMessageFactory.jcell_instance value))

(defun ThirdPartyMessageFactory.jnew_0 ()
  (let ((this (make-instance 'ThirdPartyMessageFactory)))
    (setf (slot-value this 'f_AUTHORIZED) "Authorized")
    (setf (slot-value this 'f_NOT_AUTHORIZED) "Not Authorized")
    (setf (slot-value this 'f_LINKAGE_ERROR) "Linkage Error")
    this))

    
(defun ThirdPartyMessageFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ThirdPartyMessageFactory.jstatic_instance)))))



