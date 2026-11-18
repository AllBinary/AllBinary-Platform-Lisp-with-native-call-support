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
;;;; package org.allbinary.game.input

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameKeyUtil (JObject)
  ())

(defvar GameKeyUtil.jcell_instance :jnone)
(defun GameKeyUtil.jstatic_instance ()
  (when (eq GameKeyUtil.jcell_instance :jnone) (setf GameKeyUtil.jcell_instance (GameKeyUtil.jnew_0)))
  GameKeyUtil.jcell_instance)
(defun (setf GameKeyUtil.jstatic_instance) (value) (setf GameKeyUtil.jcell_instance value))

(defun GameKeyUtil.jnew_0 ()
  (let ((this (make-instance 'GameKeyUtil)))
    this))

    
(unless (fboundp 'jm_isDirectionKey_1) (defgeneric jm_isDirectionKey_1 (this p1)))
(defmethod jm_isDirectionKey_1 ((this GameKeyUtil) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (if (or (or (or (= _key (Canvas.jstatic_UP)) (= _key (Canvas.jstatic_DOWN))) (= _key (Canvas.jstatic_LEFT))) (= _key (Canvas.jstatic_RIGHT)))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(defun GameKeyUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameKeyUtil.jstatic_instance)))))



