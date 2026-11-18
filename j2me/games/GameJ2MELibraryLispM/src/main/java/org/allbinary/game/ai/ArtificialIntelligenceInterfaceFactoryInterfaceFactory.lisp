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
;;;; package org.allbinary.game.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ArtificialIntelligenceInterfaceFactoryInterfaceFactory (JObject)
  ((f_list :initform nil)))

(defvar ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON :jnone)
(defun ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON ()
  (when (eq ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON :jnone) (setf ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jnew_0)))
  ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON)
(defun (setf ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON) (value) (setf ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jcell_SINGLETON value))

(defun ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jnew_0 ()
  (let ((this (make-instance 'ArtificialIntelligenceInterfaceFactoryInterfaceFactory)))
    (setf (slot-value this 'f_list) (jm_getImmutableInstance_0 (BasicArrayListUtil.jm_getInstance_0)))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this ArtificialIntelligenceInterfaceFactoryInterfaceFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0)))))

    
(defun ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jstatic_SINGLETON)))))

    
(unless (fboundp 'jm_getInstanceFromCollection_1) (defgeneric jm_getInstanceFromCollection_1 (this p1)))
(defmethod jm_getInstanceFromCollection_1 ((this ArtificialIntelligenceInterfaceFactoryInterfaceFactory) _hashtable)
  (declare (ignorable this _hashtable))
  (let (_typeInteger _type _artificialIntelligenceInterfaceFactoryInterface)
  (declare (ignorable _typeInteger _type _artificialIntelligenceInterfaceFactoryInterface))
    (block jreturn
        (setf _typeInteger (jm_get_1 _hashtable (BasicAI.jstatic_ID)))
        (setf _type (jm_intValue_0 _typeInteger))
        (setf _artificialIntelligenceInterfaceFactoryInterface (aref (slot-value (slot-value this 'f_list) 'f_objectArray) (JR.i32 (- _type 1))))
        (return-from jreturn _artificialIntelligenceInterfaceFactoryInterface))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this ArtificialIntelligenceInterfaceFactoryInterfaceFactory) _artificialIntelligenceInterfaceFactoryInterface)
  (declare (ignorable this _artificialIntelligenceInterfaceFactoryInterface))
  (let ()
    (block jreturn
        (jm_add_1 (slot-value this 'f_list) _artificialIntelligenceInterfaceFactoryInterface))))



