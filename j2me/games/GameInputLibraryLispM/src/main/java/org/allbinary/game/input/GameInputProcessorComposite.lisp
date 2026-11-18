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

(defclass GameInputProcessorComposite (PlayerGameInput)
  ((f_name :initform nil)
   (f_gameInputProcessorInterface :initform nil)
   (f_NAME_LABEL :initform nil)))

    
(defun GameInputProcessorComposite.jnew_2 (_name _gameInputProcessorInterface)
  (declare (ignorable _name _gameInputProcessorInterface))
  (let ((this (make-instance 'GameInputProcessorComposite)))
    
    
    (setf (slot-value this 'f_NAME_LABEL) " GameInputProcessorInterface: ")
  (let ()
    (block jreturn
        nil
        (setf (slot-value this 'f_name) _name)
        (setf (slot-value this 'f_gameInputProcessorInterface) _gameInputProcessorInterface)))
    this))

    
(unless (fboundp 'jm_update_0) (defgeneric jm_update_0 (this)))
(defmethod jm_update_0 ((this GameInputProcessorComposite))
  (declare (ignorable this))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (handler-case (progn
            (setf _list (jm_getGameKeyEventList_0 this))
            (jm_onInput_1 (slot-value this 'f_gameInputProcessorInterface) _list))
            (error (_e) (declare (ignorable _e))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_EXCEPTION) this (slot-value (slot-value this 'f_commonStrings) 'f_UPDATE) _e))))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this GameInputProcessorComposite))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_toString_0 (jm_append_1 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (call-next-method this)) (slot-value this 'f_NAME_LABEL)) (slot-value this 'f_name)))))))



