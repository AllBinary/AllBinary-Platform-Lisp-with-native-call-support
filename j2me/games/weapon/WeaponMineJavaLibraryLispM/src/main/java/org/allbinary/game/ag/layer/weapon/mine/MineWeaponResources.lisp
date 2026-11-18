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
;;;; package org.allbinary.game.ag.layer.weapon.mine

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass MineWeaponResources (BasicGameResources)
  ((f_DROP_TEXT_RESOURCE :initform nil)
   (f_DROP_RESOURCE :initform nil)
   (f_DROP_ICON_RESOURCE :initform nil)))

(defvar MineWeaponResources.jcell_instance :jnone)
(defun MineWeaponResources.jstatic_instance ()
  (when (eq MineWeaponResources.jcell_instance :jnone) (setf MineWeaponResources.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  MineWeaponResources.jcell_instance)
(defun (setf MineWeaponResources.jstatic_instance) (value) (setf MineWeaponResources.jcell_instance value))

    
(defun MineWeaponResources.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (MineWeaponResources.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (MineWeaponResources.jstatic_instance) (MineWeaponResources.jnew_0))))
        (return-from jreturn (MineWeaponResources.jstatic_instance)))))

    
(defun MineWeaponResources.jnew_0 ()
  (let ((this (make-instance 'MineWeaponResources)))
    (setf (slot-value this 'f_DROP_TEXT_RESOURCE) "/mine_drop_text_20_by_20.png")
    (setf (slot-value this 'f_DROP_RESOURCE) "/mine_drop_20_by_20.png")
    (setf (slot-value this 'f_DROP_ICON_RESOURCE) "/mine_drop_icon_20_by_20.png")
  (let (_ROOT _SMALL _MEDIUM _SIZE_FOUR _SIZE_FIVE _SIZE_SIX _SIZE)
  (declare (ignorable _ROOT _SMALL _MEDIUM _SIZE_FOUR _SIZE_FIVE _SIZE_SIX _SIZE))
    (block jreturn
        (setf _ROOT "/mine")
        (setf _SMALL "_20_by_20.png")
        (setf _MEDIUM _SMALL)
        (setf _SIZE_FOUR _SMALL)
        (setf _SIZE_FIVE _SMALL)
        (setf _SIZE_SIX _SMALL)
        (setf _SIZE (vector _SMALL _MEDIUM _SIZE_FOUR _SIZE_FIVE _SIZE_SIX))
        (jm_init_2 this _ROOT _SIZE)))
    this))



