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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullAllBinaryGameCanvas (JObject)
  ())

(defvar NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS :jnone)
(defun NullAllBinaryGameCanvas.jstatic_NULL_ALLBINARY_GAME_CANVAS ()
  (when (eq NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS :jnone) (setf NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS (NullAllBinaryGameCanvas.jnew_0)))
  NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS)
(defun (setf NullAllBinaryGameCanvas.jstatic_NULL_ALLBINARY_GAME_CANVAS) (value) (setf NullAllBinaryGameCanvas.jcell_NULL_ALLBINARY_GAME_CANVAS value))

(defun NullAllBinaryGameCanvas.jnew_0 ()
  (let ((this (make-instance 'NullAllBinaryGameCanvas)))
    this))

    
(unless (fboundp 'jm_getLayerManager_0) (defgeneric jm_getLayerManager_0 (this)))
(defmethod jm_getLayerManager_0 ((this NullAllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this NullAllBinaryGameCanvas) _cmd)
  (declare (ignorable this _cmd))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getHeight_0) (defgeneric jm_getHeight_0 (this)))
(defmethod jm_getHeight_0 ((this NullAllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getWidth_0) (defgeneric jm_getWidth_0 (this)))
(defmethod jm_getWidth_0 ((this NullAllBinaryGameCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_removeCommand_1) (defgeneric jm_removeCommand_1 (this p1)))
(defmethod jm_removeCommand_1 ((this NullAllBinaryGameCanvas) _cmd)
  (declare (ignorable this _cmd))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_setCommandListener_1) (defgeneric jm_setCommandListener_1 (this p1)))
(defmethod jm_setCommandListener_1 ((this NullAllBinaryGameCanvas) _l)
  (declare (ignorable this _l))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))



