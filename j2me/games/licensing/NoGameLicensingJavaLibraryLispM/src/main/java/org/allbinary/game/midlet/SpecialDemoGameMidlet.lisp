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

(defclass SpecialDemoGameMidlet (DemoGameMidlet)
  ())

    
(defun SpecialDemoGameMidlet.jnew_4 (_clientInformationFactory _licenseLoadingType _demoSetupFactory _licenseCheckRunnableFactory)
  (declare (ignorable _clientInformationFactory _licenseLoadingType _demoSetupFactory _licenseCheckRunnableFactory))
  (let ((this (make-instance 'SpecialDemoGameMidlet)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_initView_0) (defgeneric jm_initView_0 (this)))
(defmethod jm_initView_0 ((this SpecialDemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_preInit_0) (defgeneric jm_preInit_0 (this)))
(defmethod jm_preInit_0 ((this SpecialDemoGameMidlet))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_init_0 (LicenseServerInitFileUtil.jnew_0)))))



