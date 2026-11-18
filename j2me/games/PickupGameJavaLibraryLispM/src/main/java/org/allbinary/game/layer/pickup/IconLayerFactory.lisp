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

(defclass IconLayerFactory (JObject)
  ())

(defun IconLayerFactory.jnew_0 ()
  (let ((this (make-instance 'IconLayerFactory)))
    this))

    
(defun IconLayerFactory.jm_getInstance_3 (_animationInterface _width _height)
  (declare (ignorable _animationInterface _width _height))
  (let ()
    (block jreturn
        (return-from jreturn (IconLayer.jnew_3 _animationInterface _width _height)))))



