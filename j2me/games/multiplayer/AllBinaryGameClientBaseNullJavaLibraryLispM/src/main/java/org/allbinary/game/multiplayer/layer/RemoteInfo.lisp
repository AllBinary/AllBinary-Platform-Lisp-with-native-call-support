;;;; 
;;;; To change this license header, choose License Headers in Project Properties. 
;;;; To change this template file, choose Tools | Templates 
;;;; and open the template in the editor.  
;;;; Generated Code Do Not Modify
;;;; package org.allbinary.game.multiplayer.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass RemoteInfo (JObject)
  ())

(defvar RemoteInfo.jcell_NEW_PLAYER_ID :jnone)
(defun RemoteInfo.jstatic_NEW_PLAYER_ID ()
  (when (eq RemoteInfo.jcell_NEW_PLAYER_ID :jnone) (setf RemoteInfo.jcell_NEW_PLAYER_ID 0))
  RemoteInfo.jcell_NEW_PLAYER_ID)
(defun (setf RemoteInfo.jstatic_NEW_PLAYER_ID) (value) (setf RemoteInfo.jcell_NEW_PLAYER_ID value))

(defvar RemoteInfo.jcell_REMOTE_INFO :jnone)
(defun RemoteInfo.jstatic_REMOTE_INFO ()
  (when (eq RemoteInfo.jcell_REMOTE_INFO :jnone) (setf RemoteInfo.jcell_REMOTE_INFO (RemoteInfo.jnew_4 (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (JR.i32 (- 1)) (JR.i32 (- 1)) (RemoteInfo.jstatic_NEW_PLAYER_ID))))
  RemoteInfo.jcell_REMOTE_INFO)
(defun (setf RemoteInfo.jstatic_REMOTE_INFO) (value) (setf RemoteInfo.jcell_REMOTE_INFO value))

    
(defun RemoteInfo.jnew_4 (_username _actorSessionId _playerInputId _id)
  (declare (ignorable _username _actorSessionId _playerInputId _id))
  (let ((this (make-instance 'RemoteInfo)))
  (let ()
    (block jreturn nil))
    this))



