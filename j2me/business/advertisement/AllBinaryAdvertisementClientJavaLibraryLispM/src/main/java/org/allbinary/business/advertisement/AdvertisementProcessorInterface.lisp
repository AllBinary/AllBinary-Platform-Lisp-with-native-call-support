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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass AdvertisementProcessorInterface (JObject)
  ())

(defun AdvertisementProcessorInterface.jnew_0 ()
  (let ((this (make-instance 'AdvertisementProcessorInterface)))
    this))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this AdvertisementProcessorInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_start_0) (defgeneric jm_start_0 (this)))
(defmethod jm_start_0 ((this AdvertisementProcessorInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_stop_0) (defgeneric jm_stop_0 (this)))
(defmethod jm_stop_0 ((this AdvertisementProcessorInterface))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



