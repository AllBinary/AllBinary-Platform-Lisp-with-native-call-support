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
;;;; package org.allbinary.game.part.weapon

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass SalvoInterface (JObject)
  ())

(defun SalvoInterface.jnew_0 ()
  (let ((this (make-instance 'SalvoInterface)))
    this))

    
(unless (fboundp 'jm_process_3) (defgeneric jm_process_3 (this p1 p2 p3)))
(defmethod jm_process_3 ((this SalvoInterface) _allbinaryLayerManager _angle _otherAngle)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle))
  (error (JR.newException "AbstractMethodError" "process")))

    
(unless (fboundp 'jm_processScore_5) (defgeneric jm_processScore_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_processScore_5 ((this SalvoInterface) _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface)
  (declare (ignorable this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface))
  (error (JR.newException "AbstractMethodError" "processScore")))



