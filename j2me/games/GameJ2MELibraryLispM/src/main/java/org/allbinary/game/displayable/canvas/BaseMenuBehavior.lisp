;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass BaseMenuBehavior (JObject)
  ())

(defvar BaseMenuBehavior.jcell_instance :jnone)
(defun BaseMenuBehavior.jstatic_instance ()
  (when (eq BaseMenuBehavior.jcell_instance :jnone) (setf BaseMenuBehavior.jcell_instance (BaseMenuBehavior.jnew_0)))
  BaseMenuBehavior.jcell_instance)
(defun (setf BaseMenuBehavior.jstatic_instance) (value) (setf BaseMenuBehavior.jcell_instance value))

(defun BaseMenuBehavior.jnew_0 ()
  (let ((this (make-instance 'BaseMenuBehavior)))
    this))

    
(defun BaseMenuBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (BaseMenuBehavior.jstatic_instance)))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_2) (defgeneric jm_onDisplayChangeEvent_2 (this p1 p2)))
(defmethod jm_onDisplayChangeEvent_2 ((this BaseMenuBehavior) _allBinaryGameCanvas _displayChangeEvent)
  (declare (ignorable this _allBinaryGameCanvas _displayChangeEvent))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initSpecialPaint_1) (defgeneric jm_initSpecialPaint_1 (this p1)))
(defmethod jm_initSpecialPaint_1 ((this BaseMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_setNonBotPaintableP_1 _allBinaryGameCanvas (NullPaintable.jm_getInstance_0)))))

    
(unless (fboundp 'jm_initMenu_1) (defgeneric jm_initMenu_1 (this p1)))
(defmethod jm_initMenu_1 ((this BaseMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_updateMenu_1) (defgeneric jm_updateMenu_1 (this p1)))
(defmethod jm_updateMenu_1 ((this BaseMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_popupMenu_1) (defgeneric jm_popupMenu_1 (this p1)))
(defmethod jm_popupMenu_1 ((this BaseMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_closeMenu_1) (defgeneric jm_closeMenu_1 (this p1)))
(defmethod jm_closeMenu_1 ((this BaseMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn nil)))



