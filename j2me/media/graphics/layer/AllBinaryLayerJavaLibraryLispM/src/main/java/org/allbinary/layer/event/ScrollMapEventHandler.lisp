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
;;;; package org.allbinary.layer.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ScrollMapEventHandler (BasicEventHandler)
  ())

(defvar ScrollMapEventHandler.jcell_SINGLETON :jnone)
(defun ScrollMapEventHandler.jstatic_SINGLETON ()
  (when (eq ScrollMapEventHandler.jcell_SINGLETON :jnone) (setf ScrollMapEventHandler.jcell_SINGLETON (ScrollMapEventHandler.jnew_0)))
  ScrollMapEventHandler.jcell_SINGLETON)
(defun (setf ScrollMapEventHandler.jstatic_SINGLETON) (value) (setf ScrollMapEventHandler.jcell_SINGLETON value))

    
(defun ScrollMapEventHandler.jnew_0 ()
  (let ((this (make-instance 'ScrollMapEventHandler)))
  (let ()
    (block jreturn nil))
    this))

    
(defun ScrollMapEventHandler.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ScrollMapEventHandler.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_process_2) (defgeneric jm_process_2 (this p1 p2)))
(defmethod jm_process_2 ((this ScrollMapEventHandler) _eventObject _eventListenerInterface)
  (declare (ignorable this _eventObject _eventListenerInterface))
  (let (_scrollMapEventListenerInterface)
  (declare (ignorable _scrollMapEventListenerInterface))
    (block jreturn
        (setf _scrollMapEventListenerInterface _eventListenerInterface)
        (jm_onMoveEvent_1 _scrollMapEventListenerInterface _eventObject))))



