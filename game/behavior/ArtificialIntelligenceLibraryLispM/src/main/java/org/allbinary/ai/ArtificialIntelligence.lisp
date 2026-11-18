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
;;;; package org.allbinary.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ArtificialIntelligence (JObject)
  ())

(defvar ArtificialIntelligence.jcell_AI_ID :jnone)
(defun ArtificialIntelligence.jstatic_AI_ID ()
  (when (eq ArtificialIntelligence.jcell_AI_ID :jnone) (setf ArtificialIntelligence.jcell_AI_ID 2))
  ArtificialIntelligence.jcell_AI_ID)
(defun (setf ArtificialIntelligence.jstatic_AI_ID) (value) (setf ArtificialIntelligence.jcell_AI_ID value))

(defvar ArtificialIntelligence.jcell_instance :jnone)
(defun ArtificialIntelligence.jstatic_instance ()
  (when (eq ArtificialIntelligence.jcell_instance :jnone) (setf ArtificialIntelligence.jcell_instance (ArtificialIntelligence.jnew_0)))
  ArtificialIntelligence.jcell_instance)
(defun (setf ArtificialIntelligence.jstatic_instance) (value) (setf ArtificialIntelligence.jcell_instance value))

    
(defun ArtificialIntelligence.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ArtificialIntelligence.jstatic_instance)))))

    
(defun ArtificialIntelligence.jnew_0 ()
  (let ((this (make-instance 'ArtificialIntelligence)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_processAI_1) (defgeneric jm_processAI_1 (this p1)))
(defmethod jm_processAI_1 ((this ArtificialIntelligence) _layerManager)
  (declare (ignorable this _layerManager))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getId_0) (defgeneric jm_getId_0 (this)))
(defmethod jm_getId_0 ((this ArtificialIntelligence))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 1))))



