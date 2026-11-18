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
;;;; package org.allbinary.game.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LevelLayersFinder (JObject)
  ((f_enumerationUtil :initform nil)))

(defvar LevelLayersFinder.jcell_instance :jnone)
(defun LevelLayersFinder.jstatic_instance ()
  (when (eq LevelLayersFinder.jcell_instance :jnone) (setf LevelLayersFinder.jcell_instance (LevelLayersFinder.jnew_0)))
  LevelLayersFinder.jcell_instance)
(defun (setf LevelLayersFinder.jstatic_instance) (value) (setf LevelLayersFinder.jcell_instance value))

(defun LevelLayersFinder.jnew_0 ()
  (let ((this (make-instance 'LevelLayersFinder)))
    (setf (slot-value this 'f_enumerationUtil) (EnumerationUtil.jm_getInstance_0))
    this))

    
(defun LevelLayersFinder.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (LevelLayersFinder.jstatic_instance)))))

    
(unless (fboundp 'jm_get_1) (defgeneric jm_get_1 (this p1)))
(defmethod jm_get_1 ((this LevelLayersFinder) _hashtable)
  (declare (ignorable this _hashtable))
  (let (_smallIntegerSingletonFactory _list _enumeration _layerHashtableCanBeNull _integerCanBeNull _cachedIntegerCanBeNull)
  (declare (ignorable _smallIntegerSingletonFactory _list _enumeration _layerHashtableCanBeNull _integerCanBeNull _cachedIntegerCanBeNull))
    (block jreturn
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf _list (BasicArrayListD.jnew_0))
        (setf _enumeration (jm_keys_0 _hashtable))
        (setf _layerHashtableCanBeNull nil)
        (setf _integerCanBeNull nil)
        (setf _cachedIntegerCanBeNull nil)
        (block jbreak (loop while (jm_hasMoreElements_1 (slot-value this 'f_enumerationUtil) _enumeration) do
                (block jcontinue
            (setf _layerHashtableCanBeNull (jm_get_1 _hashtable (jm_nextElement_1 (slot-value this 'f_enumerationUtil) _enumeration)))
            (setf _integerCanBeNull (jm_get_1 _layerHashtableCanBeNull (Layer.jstatic_ID)))
            (setf _cachedIntegerCanBeNull (jm_getAt_1 _smallIntegerSingletonFactory (jm_intValue_0 _integerCanBeNull)))
            (if (not (jm_contains_1 _list _cachedIntegerCanBeNull))
                (progn
                (jm_add_1 _list _cachedIntegerCanBeNull))))))
        (return-from jreturn _list))))



