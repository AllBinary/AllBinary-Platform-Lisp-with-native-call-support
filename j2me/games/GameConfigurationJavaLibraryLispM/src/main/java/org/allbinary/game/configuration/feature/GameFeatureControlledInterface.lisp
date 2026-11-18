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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameFeatureControlledInterface (JObject)
  ())

(defun GameFeatureControlledInterface.jnew_0 ()
  (let ((this (make-instance 'GameFeatureControlledInterface)))
    this))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this GameFeatureControlledInterface) _level)
  (declare (ignorable this _level))
  (error (JR.newException "AbstractMethodError" "init")))

    
(unless (fboundp 'jm_isFeature_0) (defgeneric jm_isFeature_0 (this)))
(defmethod jm_isFeature_0 ((this GameFeatureControlledInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isFeature")))

    
(unless (fboundp 'jm_isLoadingLevel_1) (defgeneric jm_isLoadingLevel_1 (this p1)))
(defmethod jm_isLoadingLevel_1 ((this GameFeatureControlledInterface) _level)
  (declare (ignorable this _level))
  (error (JR.newException "AbstractMethodError" "isLoadingLevel")))



