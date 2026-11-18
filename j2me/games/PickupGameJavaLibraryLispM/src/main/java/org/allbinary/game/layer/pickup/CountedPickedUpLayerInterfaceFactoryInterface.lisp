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
;;;; package org.allbinary.game.layer.pickup

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CountedPickedUpLayerInterfaceFactoryInterface (JObject)
  ())

(defun CountedPickedUpLayerInterfaceFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'CountedPickedUpLayerInterfaceFactoryInterface)))
    this))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this CountedPickedUpLayerInterfaceFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getId")))

    
(unless (fboundp 'jm_getTotal_0) (defgeneric jm_getTotal_0 (this)))
(defmethod jm_getTotal_0 ((this CountedPickedUpLayerInterfaceFactoryInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getTotal")))



