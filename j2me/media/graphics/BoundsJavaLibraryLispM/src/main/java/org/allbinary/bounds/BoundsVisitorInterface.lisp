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
;;;; package org.allbinary.bounds

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BoundsVisitorInterface (JObject)
  ())

(defun BoundsVisitorInterface.jnew_0 ()
  (let ((this (make-instance 'BoundsVisitorInterface)))
    this))

    
(unless (fboundp 'jm_getX_0) (defgeneric jm_getX_0 (this)))
(defmethod jm_getX_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getX")))

    
(unless (fboundp 'jm_getY_0) (defgeneric jm_getY_0 (this)))
(defmethod jm_getY_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getY")))

    
(unless (fboundp 'jm_maxX_0) (defgeneric jm_maxX_0 (this)))
(defmethod jm_maxX_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "maxX")))

    
(unless (fboundp 'jm_maxY_0) (defgeneric jm_maxY_0 (this)))
(defmethod jm_maxY_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "maxY")))

    
(unless (fboundp 'jm_minX_0) (defgeneric jm_minX_0 (this)))
(defmethod jm_minX_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "minX")))

    
(unless (fboundp 'jm_minY_0) (defgeneric jm_minY_0 (this)))
(defmethod jm_minY_0 ((this BoundsVisitorInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "minY")))



