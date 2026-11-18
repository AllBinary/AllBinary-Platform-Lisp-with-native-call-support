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

(defclass MainGameDemoStatePaintable (Paintable)
  ((f_ownershipPaintableInterface :initform nil)
   (f_menuPaintableInterface :initform nil)))

    
(defun MainGameDemoStatePaintable.jnew_2 (_ownershipPaintableInterface _menuPaintableInterface)
  (declare (ignorable _ownershipPaintableInterface _menuPaintableInterface))
  (let ((this (make-instance 'MainGameDemoStatePaintable)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_ownershipPaintableInterface) _ownershipPaintableInterface)
        (setf (slot-value this 'f_menuPaintableInterface) _menuPaintableInterface)))
    this))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this MainGameDemoStatePaintable) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn
        (jm_paint_1 (slot-value this 'f_menuPaintableInterface) _graphics)
        (jm_paint_1 (slot-value this 'f_ownershipPaintableInterface) _graphics))))

    
(unless (fboundp 'jm_getOwnershipPaintableInterface_0) (defgeneric jm_getOwnershipPaintableInterface_0 (this)))
(defmethod jm_getOwnershipPaintableInterface_0 ((this MainGameDemoStatePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_ownershipPaintableInterface)))))

    
(unless (fboundp 'jm_getMenuPaintableInterface_0) (defgeneric jm_getMenuPaintableInterface_0 (this)))
(defmethod jm_getMenuPaintableInterface_0 ((this MainGameDemoStatePaintable))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_menuPaintableInterface)))))



