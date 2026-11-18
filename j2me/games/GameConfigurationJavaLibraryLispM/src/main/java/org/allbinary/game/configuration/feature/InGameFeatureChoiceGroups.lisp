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

(defclass InGameFeatureChoiceGroups (JObject)
  ((f_hashtable :initform nil)))

(defvar InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive :jnone)
(defun InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive ()
  (when (eq InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive :jnone) (setf InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive (InGameFeatureChoiceGroups.jnew_0)))
  InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive)
(defun (setf InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive) (value) (setf InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsExclusive value))

(defvar InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple :jnone)
(defun InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple ()
  (when (eq InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple :jnone) (setf InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple (InGameFeatureChoiceGroups.jnew_0)))
  InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple)
(defun (setf InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple) (value) (setf InGameFeatureChoiceGroups.jcell_gameFeatureChoiceGroupsMultiple value))

    
(defun InGameFeatureChoiceGroups.jnew_0 ()
  (let ((this (make-instance 'InGameFeatureChoiceGroups)))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
  (let ()
    (block jreturn nil))
    this))

    
(defun InGameFeatureChoiceGroups.jm_getExclusiveInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsExclusive)))))

    
(defun InGameFeatureChoiceGroups.jm_getMultipleInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (InGameFeatureChoiceGroups.jstatic_gameFeatureChoiceGroupsMultiple)))))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this InGameFeatureChoiceGroups))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_add_2) (defgeneric jm_add_2 (this p1 p2)))
(defmethod jm_add_2 ((this InGameFeatureChoiceGroups) _name _list)
  (declare (ignorable this _name _list))
  (let ()
    (block jreturn
        (jm_put_2 (slot-value this 'f_hashtable) _name _list))))



