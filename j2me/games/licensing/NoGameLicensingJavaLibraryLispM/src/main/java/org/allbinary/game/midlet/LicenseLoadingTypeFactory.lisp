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
;;;; package org.allbinary.game.midlet

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LicenseLoadingTypeFactory (JObject)
  ((f_INITIAL_LOADING :initform nil)
   (f_GAME_START :initform nil)
   (f_LOGIN :initform nil)
   (f_OTHER :initform nil)))

(defvar LicenseLoadingTypeFactory.jcell_instance :jnone)
(defun LicenseLoadingTypeFactory.jstatic_instance ()
  (when (eq LicenseLoadingTypeFactory.jcell_instance :jnone) (setf LicenseLoadingTypeFactory.jcell_instance (LicenseLoadingTypeFactory.jnew_0)))
  LicenseLoadingTypeFactory.jcell_instance)
(defun (setf LicenseLoadingTypeFactory.jstatic_instance) (value) (setf LicenseLoadingTypeFactory.jcell_instance value))

(defun LicenseLoadingTypeFactory.jnew_0 ()
  (let ((this (make-instance 'LicenseLoadingTypeFactory)))
    (setf (slot-value this 'f_INITIAL_LOADING) (LicenseLoadingType.jnew_1 "Initial Loading"))
    (setf (slot-value this 'f_GAME_START) (LicenseLoadingType.jnew_1 "Game Start"))
    (setf (slot-value this 'f_LOGIN) (LicenseLoadingType.jnew_1 "Login"))
    (setf (slot-value this 'f_OTHER) (LicenseLoadingType.jnew_1 "Other/Usually The First Non Demo Level"))
    this))

    
(defun LicenseLoadingTypeFactory.jm_getIntance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseLoadingTypeFactory.jstatic_instance)))))



