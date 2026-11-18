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

(defclass TerrainEvent (AllBinaryEventObject)
  ((f_basicTerrainInfo :initform nil)))

    
(defun TerrainEvent.jnew_1 (_basicTerrainInfo)
  (declare (ignorable _basicTerrainInfo))
  (let ((this (make-instance 'TerrainEvent)))
    (setf (slot-value this 'f_basicTerrainInfo) (BasicTerrainInfo.jstatic_NULL_BASIC_TERRAIN_INFO))
  (let ()
    (block jreturn
        nil
        (jm_setBasicTerrainInfo_1 this (slot-value this 'f_basicTerrainInfo))))
    this))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this TerrainEvent))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (JR.unescape "TerrainEvent: \\n"))
        (jm_append_1 _stringBuffer "LayerInterface: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_basicTerrainInfo)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getBasicTerrainInfo_0) (defgeneric jm_getBasicTerrainInfo_0 (this)))
(defmethod jm_getBasicTerrainInfo_0 ((this TerrainEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_basicTerrainInfo)))))

    
(unless (fboundp 'jm_setBasicTerrainInfo_1) (defgeneric jm_setBasicTerrainInfo_1 (this p1)))
(defmethod jm_setBasicTerrainInfo_1 ((this TerrainEvent) _basicTerrainInfo)
  (declare (ignorable this _basicTerrainInfo))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicTerrainInfo) _basicTerrainInfo))))

    
(unless (fboundp 'jm_setBasicTerrainInfoForCircularStaticPool_1) (defgeneric jm_setBasicTerrainInfoForCircularStaticPool_1 (this p1)))
(defmethod jm_setBasicTerrainInfoForCircularStaticPool_1 ((this TerrainEvent) _basicTerrainInfo)
  (declare (ignorable this _basicTerrainInfo))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_basicTerrainInfo) _basicTerrainInfo))))



