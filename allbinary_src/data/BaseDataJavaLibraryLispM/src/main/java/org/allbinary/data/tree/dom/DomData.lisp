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
;;;; package org.allbinary.data.tree.dom

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DomData (JObject)
  ())

(defvar DomData.jcell_ID :jnone)
(defun DomData.jstatic_ID ()
  (when (eq DomData.jcell_ID :jnone) (setf DomData.jcell_ID "id"))
  DomData.jcell_ID)

(defvar DomData.jcell_CHILD :jnone)
(defun DomData.jstatic_CHILD ()
  (when (eq DomData.jcell_CHILD :jnone) (setf DomData.jcell_CHILD "child"))
  DomData.jcell_CHILD)

(defvar DomData.jcell_NAME :jnone)
(defun DomData.jstatic_NAME ()
  (when (eq DomData.jcell_NAME :jnone) (setf DomData.jcell_NAME "name"))
  DomData.jcell_NAME)

(defvar DomData.jcell_VALUE :jnone)
(defun DomData.jstatic_VALUE ()
  (when (eq DomData.jcell_VALUE :jnone) (setf DomData.jcell_VALUE "value"))
  DomData.jcell_VALUE)

(defvar DomData.jcell_INDEX :jnone)
(defun DomData.jstatic_INDEX ()
  (when (eq DomData.jcell_INDEX :jnone) (setf DomData.jcell_INDEX "index"))
  DomData.jcell_INDEX)

    
(defun DomData.jnew_0 ()
  (let ((this (make-instance 'DomData)))
  (let ()
    (block jreturn nil))
    this))



