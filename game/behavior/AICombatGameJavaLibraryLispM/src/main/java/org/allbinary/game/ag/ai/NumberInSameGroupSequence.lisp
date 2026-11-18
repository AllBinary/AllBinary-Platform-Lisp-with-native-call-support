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
;;;; package org.allbinary.game.ag.ai

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NumberInSameGroupSequence (JObject)
  ((f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE :initform nil)
   (f_NUMBER_ON_SAME_TEAM_SEQUENCE :initform nil)))

    
(defun NumberInSameGroupSequence.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (NumberInSameGroupSequence.jnew_0)))))

    
(defun NumberInSameGroupSequence.jnew_0 ()
  (let ((this (make-instance 'NumberInSameGroupSequence)))
    
    
    
    
    
    
    
    
    
    
    
  (let (_smallIntegerSingletonFactory)
  (declare (ignorable _smallIntegerSingletonFactory))
    (block jreturn
        (setf _smallIntegerSingletonFactory (SmallIntegerSingletonFactory.jm_getInstance_0))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO) (jm_getAt_1 _smallIntegerSingletonFactory 100))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE) (jm_getAt_1 _smallIntegerSingletonFactory 101))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO) (jm_getAt_1 _smallIntegerSingletonFactory 102))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE) (jm_getAt_1 _smallIntegerSingletonFactory 103))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR) (jm_getAt_1 _smallIntegerSingletonFactory 104))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE) (jm_getAt_1 _smallIntegerSingletonFactory 105))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX) (jm_getAt_1 _smallIntegerSingletonFactory 106))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN) (jm_getAt_1 _smallIntegerSingletonFactory 107))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT) (jm_getAt_1 _smallIntegerSingletonFactory 108))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE) (jm_getAt_1 _smallIntegerSingletonFactory 109))
        (setf (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE) (vector (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT) (slot-value this 'f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE)))))
    this))



