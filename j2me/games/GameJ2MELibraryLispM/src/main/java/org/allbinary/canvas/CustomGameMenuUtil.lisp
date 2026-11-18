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
;;;; package org.allbinary.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass CustomGameMenuUtil (JObject)
  ())

(defun CustomGameMenuUtil.jnew_0 ()
  (let ((this (make-instance 'CustomGameMenuUtil)))
    this))

    
(defun CustomGameMenuUtil.jm_add_1 (_canvas)
  (declare (ignorable _canvas))
  (let (_gameCommandsFactory)
  (declare (ignorable _gameCommandsFactory))
    (block jreturn
        (setf _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (if (AppletUtil.jm_isAppletLoader_1 _canvas)
            (progn
            nil)
            (if (J2MEUtil.jm_isHTML_0)
            (progn
            nil)
            (progn
            (jm_addCommand_1 _canvas (slot-value _gameCommandsFactory 'f_EXIT_COMMAND))))))))



