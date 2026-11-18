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

(defclass GameFeatureItemCommandListener (JObject)
  ((f_logUtil :initform nil)
   (f_gameOptionsForm :initform nil)))

    
(defun GameFeatureItemCommandListener.jnew_1 (_gameOptionsForm)
  (declare (ignorable _gameOptionsForm))
  (let ((this (make-instance 'GameFeatureItemCommandListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_gameOptionsForm) _gameOptionsForm)))
    this))

    
(unless (fboundp 'jm_commandAction_2) (defgeneric jm_commandAction_2 (this p1 p2)))
(defmethod jm_commandAction_2 ((this GameFeatureItemCommandListener) _command _item)
  (declare (ignorable this _command _item))
  (let (_itemLabel _commonStrings)
  (declare (ignorable _itemLabel _commonStrings))
    (block jreturn
        (handler-case (progn
            (setf _itemLabel (jm_getLabel_0 _item))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (CommonLabels.jm_getInstance_0) 'f_ITEM_LABEL)) _itemLabel)) this (slot-value (MidletStrings.jm_getInstance_0) 'f_COMMAND_ACTION))
            (if (typep _item 'GameConfigurationGauge)
                (progn
                (jm_change_2 (GameConfigurationUtil.jm_getInstance_0) (slot-value this 'f_gameOptionsForm) _item))))
            (error (_e) (declare (ignorable _e))
            (setf _commonStrings (CommonStrings.jm_getInstance_0))
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value _commonStrings 'f_EXCEPTION) this (slot-value (MidletStrings.jm_getInstance_0) 'f_COMMAND_ACTION) _e))))))



