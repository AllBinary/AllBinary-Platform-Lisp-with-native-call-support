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
;;;; package org.allbinary.game.displayable.canvas

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass PopupMenuInterface (JObject)
  ())

(defun PopupMenuInterface.jnew_0 ()
  (let ((this (make-instance 'PopupMenuInterface)))
    this))

    
(unless (fboundp 'jm_popupMenu_0) (defgeneric jm_popupMenu_0 (this)))
(defmethod jm_popupMenu_0 ((this PopupMenuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "popupMenu")))

    
(unless (fboundp 'jm_closeMenu_0) (defgeneric jm_closeMenu_0 (this)))
(defmethod jm_closeMenu_0 ((this PopupMenuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "closeMenu")))

    
(unless (fboundp 'jm_toggleMenu_0) (defgeneric jm_toggleMenu_0 (this)))
(defmethod jm_toggleMenu_0 ((this PopupMenuInterface))
  (declare (ignorable this))
  (error (JR.newException "AbstractMethodError" "toggleMenu")))



