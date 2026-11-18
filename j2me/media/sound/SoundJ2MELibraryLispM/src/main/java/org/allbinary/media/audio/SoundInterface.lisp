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
;;;; package org.allbinary.media.audio

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SoundInterface (JObject)
  ())

(defun SoundInterface.jnew_0 ()
  (let ((this (make-instance 'SoundInterface)))
    this))

    
(unless (fboundp 'jm_getResource_0) (defgeneric jm_getResource_0 (this)))
(defmethod jm_getResource_0 ((this SoundInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getResource")))

    
(unless (fboundp 'jm_getPlayerP_0) (defgeneric jm_getPlayerP_0 (this)))
(defmethod jm_getPlayerP_0 ((this SoundInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getPlayerP")))

    
(unless (fboundp 'jm_init_0) (defgeneric jm_init_0 (this)))
(defmethod jm_init_0 ((this SoundInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "init")))



