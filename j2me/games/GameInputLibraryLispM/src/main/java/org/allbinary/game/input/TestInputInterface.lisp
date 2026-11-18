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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass TestInputInterface (JObject)
  ())

(defun TestInputInterface.jnew_0 ()
  (let ((this (make-instance 'TestInputInterface)))
    this))

    
(unless (fboundp 'jm_up_0) (defgeneric jm_up_0 (this)))
(defmethod jm_up_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "up")))

    
(unless (fboundp 'jm_down_0) (defgeneric jm_down_0 (this)))
(defmethod jm_down_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "down")))

    
(unless (fboundp 'jm_left_0) (defgeneric jm_left_0 (this)))
(defmethod jm_left_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "left")))

    
(unless (fboundp 'jm_right_0) (defgeneric jm_right_0 (this)))
(defmethod jm_right_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "right")))

    
(unless (fboundp 'jm_strafeLeft_0) (defgeneric jm_strafeLeft_0 (this)))
(defmethod jm_strafeLeft_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "strafeLeft")))

    
(unless (fboundp 'jm_strafeRight_0) (defgeneric jm_strafeRight_0 (this)))
(defmethod jm_strafeRight_0 ((this TestInputInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "strafeRight")))



