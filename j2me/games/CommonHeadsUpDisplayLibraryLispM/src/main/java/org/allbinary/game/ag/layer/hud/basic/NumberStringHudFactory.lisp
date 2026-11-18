;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.game.ag.layer.hud.basic

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NumberStringHudFactory (JObject)
  ((f_NULL_NUMBER_STRING_HUD :initform nil)))

(defvar NumberStringHudFactory.jcell_instance :jnone)
(defun NumberStringHudFactory.jstatic_instance ()
  (when (eq NumberStringHudFactory.jcell_instance :jnone) (setf NumberStringHudFactory.jcell_instance (NullUtil.jm_getInstance_0)))
  NumberStringHudFactory.jcell_instance)
(defun (setf NumberStringHudFactory.jstatic_instance) (value) (setf NumberStringHudFactory.jcell_instance value))

(defun NumberStringHudFactory.jnew_0 ()
  (let ((this (make-instance 'NumberStringHudFactory)))
    (setf (slot-value this 'f_NULL_NUMBER_STRING_HUD) (jm_createHud_0 this))
    this))

    
(defun NumberStringHudFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (NumberStringHudFactory.jstatic_instance) (NullUtil.jm_getInstance_0))
            (progn
            (setf (NumberStringHudFactory.jstatic_instance) (NumberStringHudFactory.jnew_0))))
        (return-from jreturn (NumberStringHudFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_createHud_0) (defgeneric jm_createHud_0 (this)))
(defmethod jm_createHud_0 ((this NumberStringHudFactory))
  (declare (ignorable this))
  (let (_logUtil _commonStrings)
  (declare (ignorable _logUtil _commonStrings))
    (block jreturn
        (handler-case (progn
            (return-from jreturn (NumberStringHud.jnew_6 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) 9 (slot-value (BasicHudFactory.jm_getInstance_0) 'f_ABSOLUTE) 1 0 (slot-value (BasicColorFactory.jm_getInstance_0) 'f_NULL_COLOR))))
            (error (_e) (declare (ignorable _e))
            (setf _logUtil (LogUtil.jm_getInstance_0))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 _logUtil (slot-value _commonStrings 'f_EXCEPTION) this (slot-value _commonStrings 'f_CONSTRUCTOR) _e)
            (error (JR.newException "RuntimeException")))))))



