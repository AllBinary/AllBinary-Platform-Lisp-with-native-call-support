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
;;;; package org.allbinary.view

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ViewPositionBase (GPoint)
  ())

(defvar ViewPositionBase.jcell_NULL_VIEW_POSITION :jnone)
(defun ViewPositionBase.jstatic_NULL_VIEW_POSITION ()
  (when (eq ViewPositionBase.jcell_NULL_VIEW_POSITION :jnone) (setf ViewPositionBase.jcell_NULL_VIEW_POSITION (ViewPositionBase.jnew_3 0 0 0)))
  ViewPositionBase.jcell_NULL_VIEW_POSITION)
(defun (setf ViewPositionBase.jstatic_NULL_VIEW_POSITION) (value) (setf ViewPositionBase.jcell_NULL_VIEW_POSITION value))

    
(defun ViewPositionBase.jnew_3 (_x _y _z)
  (declare (ignorable _x _y _z))
  (let ((this (make-instance 'ViewPositionBase)))
  (let ()
    (block jreturn
        nil))
    this))

    
(unless (fboundp 'jm_getX2_0) (defgeneric jm_getX2_0 (this)))
(defmethod jm_getX2_0 ((this ViewPositionBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getX_0 this)))))

    
(unless (fboundp 'jm_getY2_0) (defgeneric jm_getY2_0 (this)))
(defmethod jm_getY2_0 ((this ViewPositionBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getY_0 this)))))

    
(unless (fboundp 'jm_getZ2_0) (defgeneric jm_getZ2_0 (this)))
(defmethod jm_getZ2_0 ((this ViewPositionBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getZ_0 this)))))

    
(unless (fboundp 'jm_setAllbinaryLayer_1) (defgeneric jm_setAllbinaryLayer_1 (this p1)))
(defmethod jm_setAllbinaryLayer_1 ((this ViewPositionBase) _allbinaryLayer)
  (declare (ignorable this _allbinaryLayer))
  (let ()
    (block jreturn nil)))



