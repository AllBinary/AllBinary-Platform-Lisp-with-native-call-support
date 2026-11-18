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
;;;; package org.allbinary.graphics

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScreenCapture (JObject)
  ())

(defun ScreenCapture.jnew_0 ()
  (let ((this (make-instance 'ScreenCapture)))
    this))

    
(unless (fboundp 'jm_saveFrame_0) (defgeneric jm_saveFrame_0 (this)))
(defmethod jm_saveFrame_0 ((this ScreenCapture))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_startRecording_0) (defgeneric jm_startRecording_0 (this)))
(defmethod jm_startRecording_0 ((this ScreenCapture))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_endRecording_0) (defgeneric jm_endRecording_0 (this)))
(defmethod jm_endRecording_0 ((this ScreenCapture))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



