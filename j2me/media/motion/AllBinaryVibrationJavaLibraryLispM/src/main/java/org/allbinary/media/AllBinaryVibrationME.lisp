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
;;;; package org.allbinary.media

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AllBinaryVibrationME (JObject)
  ())

(defun AllBinaryVibrationME.jnew_0 ()
  (let ((this (make-instance 'AllBinaryVibrationME)))
    this))

    
(unless (fboundp 'jm_vibrate_3) (defgeneric jm_vibrate_3 (this p1 p2 p3)))
(defmethod jm_vibrate_3 ((this AllBinaryVibrationME) _duration _type _volume)
  (declare (ignorable this _duration _type _volume))
  (let ()
    (block jreturn nil)))



