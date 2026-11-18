;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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

(defclass SpriteFactory (JObject)
  ((f_logUtil :initform nil)))

(defvar SpriteFactory.jcell_instance :jnone)
(defun SpriteFactory.jstatic_instance ()
  (when (eq SpriteFactory.jcell_instance :jnone) (setf SpriteFactory.jcell_instance (SpriteFactory.jnew_0)))
  SpriteFactory.jcell_instance)
(defun (setf SpriteFactory.jstatic_instance) (value) (setf SpriteFactory.jcell_instance value))

(defun SpriteFactory.jnew_0 ()
  (let ((this (make-instance 'SpriteFactory)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    this))

    
(defun SpriteFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (SpriteFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_createSprite_3) (defgeneric jm_createSprite_3 (this p1 p2 p3)))
(defmethod jm_createSprite_3 ((this SpriteFactory) _image _frameWidth _frameHeight)
  (declare (ignorable this _image _frameWidth _frameHeight))
  (let ()
    (block jreturn
        (return-from jreturn (Sprite.jnew_3 _image _frameWidth _frameHeight)))))



