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
;;;; package org.allbinary.game.paint

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ColorFillPaintableFactory (JObject)
  ())

(defvar ColorFillPaintableFactory.jcell_instance :jnone)
(defun ColorFillPaintableFactory.jstatic_instance ()
  (when (eq ColorFillPaintableFactory.jcell_instance :jnone) (setf ColorFillPaintableFactory.jcell_instance (ColorFillPaintableFactory.jnew_0)))
  ColorFillPaintableFactory.jcell_instance)
(defun (setf ColorFillPaintableFactory.jstatic_instance) (value) (setf ColorFillPaintableFactory.jcell_instance value))

(defun ColorFillPaintableFactory.jnew_0 ()
  (let ((this (make-instance 'ColorFillPaintableFactory)))
    this))

    
(defun ColorFillPaintableFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ColorFillPaintableFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getInstance_2) (defgeneric jm_getInstance_2 (this p1 p2)))
(defmethod jm_getInstance_2 ((this ColorFillPaintableFactory) _basicColor _forThreedCanvas)
  (declare (ignorable this _basicColor _forThreedCanvas))
  (let (_operatingSystem)
  (declare (ignorable _operatingSystem))
    (block jreturn
        (setf _operatingSystem (jm_getOperatingSystemInstance_0 (OperatingSystemFactory.jm_getInstance_0)))
        (if (jm_isOverScan_0 _operatingSystem)
            (progn
            (return-from jreturn (OverScanColorFillPaintable.jnew_1 _basicColor)))
            (progn
            (return-from jreturn (ColorFillPaintable.jnew_1 _basicColor)))))))



