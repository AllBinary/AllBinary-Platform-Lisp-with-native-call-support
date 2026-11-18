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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory (JObject)
  ())

(defun GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)))
    this))

    
(unless (fboundp 'jm_getInstance_1) (defgeneric jm_getInstance_1 (this p1)))
(defmethod jm_getInstance_1 ((this GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) _level)
  (declare (ignorable this _level))
  (error (JR.newException "AbstractMethodError" "getInstance")))

    
(unless (fboundp 'jm_size_0) (defgeneric jm_size_0 (this)))
(defmethod jm_size_0 ((this GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "size")))



