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
;;;; package org.allbinary.game.configuration.feature

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Feature (JObject)
  ((f_name :initform nil)))

(defvar Feature.jcell_hashtable :jnone)
(defun Feature.jstatic_hashtable ()
  (when (eq Feature.jcell_hashtable :jnone) (setf Feature.jcell_hashtable (jm_createHashtable_0 (StdUtil.jm_getInstance_0))))
  Feature.jcell_hashtable)
(defun (setf Feature.jstatic_hashtable) (value) (setf Feature.jcell_hashtable value))

    
(defun Feature.jnew_1 (_name)
  (declare (ignorable _name))
  (let ((this (make-instance 'Feature)))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_name) _name)
        (Feature.jm_add_2 _name this)
        (jm_add_1 (ChangedGameFeatureListener.jm_getInstance_0) this)))
    this))

    
(defun Feature.jm_getInstance_1 (_name)
  (declare (ignorable _name))
  (let ()
    (block jreturn
        (return-from jreturn (jm_get_1 (Feature.jstatic_hashtable) _name)))))

    
(defun Feature.jm_add_2 (_name _gameFeature)
  (declare (ignorable _name _gameFeature))
  (let ()
    (block jreturn
        (jm_put_2 (Feature.jstatic_hashtable) _name _gameFeature))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this Feature))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_getName_0 this)))))

    
(unless (fboundp 'jm_getName_0) (defgeneric jm_getName_0 (this)))
(defmethod jm_getName_0 ((this Feature))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_name)))))



