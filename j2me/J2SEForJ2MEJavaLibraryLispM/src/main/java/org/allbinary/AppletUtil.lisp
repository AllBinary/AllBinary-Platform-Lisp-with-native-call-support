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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;import org.allbinary.logic.communication.log.PreLogUtil;
(defclass AppletUtil (JObject)
  ())

(defvar AppletUtil.jcell_applet :jnone)
(defun AppletUtil.jstatic_applet ()
  (when (eq AppletUtil.jcell_applet :jnone) (setf AppletUtil.jcell_applet nil))
  AppletUtil.jcell_applet)
(defun (setf AppletUtil.jstatic_applet) (value) (setf AppletUtil.jcell_applet value))

    
(defun AppletUtil.jnew_0 ()
  (let ((this (make-instance 'AppletUtil)))
  (let ()
    (block jreturn nil))
    this))

    
(defun AppletUtil.jm_setApplet_0 ()
  (let ()
    (block jreturn
        (setf (AppletUtil.jstatic_applet) t))))

    
(defun AppletUtil.jm_isAppletLoader_1 (_anyType)
  (declare (ignorable _anyType))
  (let ()
    (block jreturn
        (return-from jreturn (AppletUtil.jstatic_applet)))))



