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

(defclass GameFeatureChoiceGroups (JObject)
  ((f_hashtable :initform nil)))

(defvar GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive :jnone)
(defun GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive ()
  (when (eq GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive :jnone) (setf GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive (GameFeatureChoiceGroups.jnew_0)))
  GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive)
(defun (setf GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive) (value) (setf GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive value))

(defvar GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple :jnone)
(defun GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple ()
  (when (eq GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple :jnone) (setf GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple (GameFeatureChoiceGroups.jnew_0)))
  GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple)
(defun (setf GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple) (value) (setf GameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple value))

    
(defun GameFeatureChoiceGroups.jnew_0 ()
  (let ((this (make-instance 'GameFeatureChoiceGroups)))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
  (let ()
    (block jreturn nil))
    this))

    
(defun GameFeatureChoiceGroups.jm_getExclusiveInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)))))

    
(defun GameFeatureChoiceGroups.jm_getMultipleInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this GameFeatureChoiceGroups))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this GameFeatureChoiceGroups) _name _list)
  (declare (ignorable this _name _list))
  (let ()
    (block jreturn
        (jm_put_2 (slot-value this 'f_hashtable) _name _list))))



