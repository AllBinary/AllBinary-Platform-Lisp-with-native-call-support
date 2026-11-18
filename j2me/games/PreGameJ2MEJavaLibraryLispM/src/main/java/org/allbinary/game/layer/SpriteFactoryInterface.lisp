;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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

(defclass SpriteFactoryInterface (JObject)
  ())

(defun SpriteFactoryInterface.jnew_0 ()
  (let ((this (make-instance 'SpriteFactoryInterface)))
    this))

    
(unless (fboundp 'jm_createSprite_3) (defgeneric jm_createSprite_3 (this p1 p2 p3)))
(defmethod jm_createSprite_3 ((this SpriteFactoryInterface) _image _frameWidth _frameHeight)
  (declare (ignorable this _image _frameWidth _frameHeight))
  (error (JR.newException "AbstractMethodError" "createSprite")))



