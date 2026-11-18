;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2022 AllBinary 
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
;;;; package org.allbinary.game.score

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LastFetchHighScoresFactory (JObject)
  ((f_highScoresArray :initform nil)))

(defvar LastFetchHighScoresFactory.jcell_instance :jnone)
(defun LastFetchHighScoresFactory.jstatic_instance ()
  (when (eq LastFetchHighScoresFactory.jcell_instance :jnone) (setf LastFetchHighScoresFactory.jcell_instance (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT)))
  LastFetchHighScoresFactory.jcell_instance)
(defun (setf LastFetchHighScoresFactory.jstatic_instance) (value) (setf LastFetchHighScoresFactory.jcell_instance value))

(defun LastFetchHighScoresFactory.jnew_0 ()
  (let ((this (make-instance 'LastFetchHighScoresFactory)))
    (setf (slot-value this 'f_highScoresArray) (slot-value (NoHighScoresFactory.jm_getInstance_0) 'f_NO_HIGH_SCORES))
    this))

    
(defun LastFetchHighScoresFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (if (eq (LastFetchHighScoresFactory.jstatic_instance) (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_OBJECT))
            (progn
            (setf (LastFetchHighScoresFactory.jstatic_instance) (LastFetchHighScoresFactory.jnew_0))))
        (return-from jreturn (LastFetchHighScoresFactory.jstatic_instance)))))



