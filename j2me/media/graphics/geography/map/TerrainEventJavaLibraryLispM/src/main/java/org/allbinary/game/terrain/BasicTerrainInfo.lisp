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
;;;; package org.allbinary.game.terrain

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BasicTerrainInfo (JObject)
  ((f_angle :initform nil)))

(defvar BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO :jnone)
(defun BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO ()
  (when (eq BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO :jnone) (setf BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO (BasicTerrainInfo.jnew_1 (slot-value (AngleFactory.jm_getInstance_0) 'f_NOT_ANGLE))))
  BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO)
(defun (setf BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO) (value) (setf BasicTerrainInfo.jcell_NULL_BASIC_TERRAIN_INFO value))

    
(defun BasicTerrainInfo.jnew_1 (_angle)
  (declare (ignorable _angle))
  (let ((this (make-instance 'BasicTerrainInfo)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_angle) _angle)))
    this))

    
(unless (fboundp 'jm_getAngle_0) (defgeneric jm_getAngle_0 (this)))
(defmethod jm_getAngle_0 ((this BasicTerrainInfo))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_angle)))))

    
(unless (fboundp 'jm_setAngle_1) (defgeneric jm_setAngle_1 (this p1)))
(defmethod jm_setAngle_1 ((this BasicTerrainInfo) _angle)
  (declare (ignorable this _angle))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_angle) _angle))))



