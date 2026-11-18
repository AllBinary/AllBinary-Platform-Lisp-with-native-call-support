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

(defclass LicenseLevelUtil (JObject)
  ())

(defvar LicenseLevelUtil.jcell_instance :jnone)
(defun LicenseLevelUtil.jstatic_instance ()
  (when (eq LicenseLevelUtil.jcell_instance :jnone) (setf LicenseLevelUtil.jcell_instance (LicenseLevelUtil.jnew_0)))
  LicenseLevelUtil.jcell_instance)
(defun (setf LicenseLevelUtil.jstatic_instance) (value) (setf LicenseLevelUtil.jcell_instance value))

(defun LicenseLevelUtil.jnew_0 ()
  (let ((this (make-instance 'LicenseLevelUtil)))
    this))

    
(defun LicenseLevelUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LicenseLevelUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_getMaxLevel_2) (defgeneric jm_getMaxLevel_2 (this p1 p2)))
(defmethod jm_getMaxLevel_2 ((this LicenseLevelUtil) _maxLevel _demoLevel)
  (declare (ignorable this _maxLevel _demoLevel))
  (let ()
    (block jreturn
        (return-from jreturn _demoLevel))))



