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

(defclass InGameMenuBehavior (BaseMenuBehavior)
  ())

(defvar InGameMenuBehavior.jcell_instanceC :jnone)
(defun InGameMenuBehavior.jstatic_instanceC ()
  (when (eq InGameMenuBehavior.jcell_instanceC :jnone) (setf InGameMenuBehavior.jcell_instanceC (InGameMenuBehavior.jnew_0)))
  InGameMenuBehavior.jcell_instanceC)
(defun (setf InGameMenuBehavior.jstatic_instanceC) (value) (setf InGameMenuBehavior.jcell_instanceC value))

(defun InGameMenuBehavior.jnew_0 ()
  (let ((this (make-instance 'InGameMenuBehavior)))
    this))

    
(defun InGameMenuBehavior.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InGameMenuBehavior.jstatic_instanceC)))))

    
(unless (fboundp 'jm_onDisplayChangeEvent_2) (defgeneric jm_onDisplayChangeEvent_2 (this p1 p2)))
(defmethod jm_onDisplayChangeEvent_2 ((this InGameMenuBehavior) _allBinaryGameCanvas _displayChangeEvent)
  (declare (ignorable this _allBinaryGameCanvas _displayChangeEvent))
  (let ()
    (block jreturn
        (jm_updateMenuFromEvent_1 _allBinaryGameCanvas _displayChangeEvent))))

    
(unless (fboundp 'jm_initSpecialPaint_1) (defgeneric jm_initSpecialPaint_1 (this p1)))
(defmethod jm_initSpecialPaint_1 ((this InGameMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_setNonBotPaintableP_1 _allBinaryGameCanvas (GameCanvasNonBotPaintable.jnew_1 _allBinaryGameCanvas)))))

    
(unless (fboundp 'jm_initMenu_1) (defgeneric jm_initMenu_1 (this p1)))
(defmethod jm_initMenu_1 ((this InGameMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_initMenu2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_updateMenu_1) (defgeneric jm_updateMenu_1 (this p1)))
(defmethod jm_updateMenu_1 ((this InGameMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_initMenu2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_popupMenu_1) (defgeneric jm_popupMenu_1 (this p1)))
(defmethod jm_popupMenu_1 ((this InGameMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_popupMenu2_0 _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_closeMenu_1) (defgeneric jm_closeMenu_1 (this p1)))
(defmethod jm_closeMenu_1 ((this InGameMenuBehavior) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (jm_closeMenu2_0 _allBinaryGameCanvas))))



