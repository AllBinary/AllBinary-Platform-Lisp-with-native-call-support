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
;;;; package org.allbinary.game.configuration

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GameConfigurationSingleton (JObject)
  ((f_list :initform nil)
   (f_hashtable :initform nil)))

(defvar GameConfigurationSingleton.jcell_SINGLETON :jnone)
(defun GameConfigurationSingleton.jstatic_SINGLETON ()
  (when (eq GameConfigurationSingleton.jcell_SINGLETON :jnone) (setf GameConfigurationSingleton.jcell_SINGLETON (GameConfigurationSingleton.jnew_0)))
  GameConfigurationSingleton.jcell_SINGLETON)
(defun (setf GameConfigurationSingleton.jstatic_SINGLETON) (value) (setf GameConfigurationSingleton.jcell_SINGLETON value))

    
(defun GameConfigurationSingleton.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameConfigurationSingleton.jstatic_SINGLETON)))))

    
(defun GameConfigurationSingleton.jnew_0 ()
  (let ((this (make-instance 'GameConfigurationSingleton)))
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
        (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))))
    this))

    
(unless (fboundp 'jm_getInstanceByName_1) (defgeneric jm_getInstanceByName_1 (this p1)))
(defmethod jm_getInstanceByName_1 ((this GameConfigurationSingleton) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (return-from jreturn (jm_get_1 (slot-value this 'f_hashtable) _name)))))

    
(unless (fboundp 'jm_getOptionsBasicArrayList_0) (defgeneric jm_getOptionsBasicArrayList_0 (this)))
(defmethod jm_getOptionsBasicArrayList_0 ((this GameConfigurationSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_list)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this GameConfigurationSingleton) _gameConfiguration)
  (declare (ignorable this _gameConfiguration))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _gameConfiguration))))

    
(unless (fboundp 'jm_getHashtable_0) (defgeneric jm_getHashtable_0 (this)))
(defmethod jm_getHashtable_0 ((this GameConfigurationSingleton))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))



