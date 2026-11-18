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
;;;; package org.allbinary.game.ag.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LifeInterface (JObject)
  ())

(defun LifeInterface.jnew_0 ()
  (let ((this (make-instance 'LifeInterface)))
    this))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this LifeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "get")))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this LifeInterface) _lives)
  (declare (ignorable this _lives))
  (error (JR.newException "AbstractMethodError" "set")))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this LifeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "reset")))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this LifeInterface) _lives)
  (declare (ignorable this _lives))
  (error (JR.newException "AbstractMethodError" "add")))

    
(unless (fboundp 'jm_deaths_1) (defgeneric jm_deaths_1 (this p1)))
(defmethod jm_deaths_1 ((this LifeInterface) _lives)
  (declare (ignorable this _lives))
  (error (JR.newException "AbstractMethodError" "deaths")))

    
(unless (fboundp 'jm_getMaxlives_0) (defgeneric jm_getMaxlives_0 (this)))
(defmethod jm_getMaxlives_0 ((this LifeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "getMaxlives")))

    
(unless (fboundp 'jm_isAlive_0) (defgeneric jm_isAlive_0 (this)))
(defmethod jm_isAlive_0 ((this LifeInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "isAlive")))



