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
;;;; package org.allbinary.game.score.displayable

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass HighScoreUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_highScoresFactoryInterface :initform nil)
   (f_highScoresArray :initform nil)
   (f_highScore :initform nil)
   (f_abeClientInformation :initform nil)
   (f_gameInfo :initform nil)
   (f_highScoresHelper :initform nil)
   (f_firstTime :initform nil)))

(defvar HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND :jnone)
(defun HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND ()
  (when (eq HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND :jnone) (setf HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND (Command.jnew_4 "Submit" (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING) (Command.jstatic_SCREEN) 1)))
  HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND)
(defun (setf HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND) (value) (setf HighScoreUtil.jcell_SUBMIT_TEXTBOX_COMMAND value))

    
(defun HighScoreUtil.jnew_7 (_highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore)
  (declare (ignorable _highScoresFactoryInterface _highScoresHelper _abeClientInformation _gameInfo _cmdListener _name _highScore))
  (let ((this (make-instance 'HighScoreUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    
    
    
    
    
    
    (setf (slot-value this 'f_firstTime) t)
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScoresFactoryInterface) _highScoresFactoryInterface)
        (setf (slot-value this 'f_highScoresHelper) _highScoresHelper)
        (setf (slot-value this 'f_highScoresArray) (jm_getHighScoresArray_0 (slot-value this 'f_highScoresHelper)))
        (setf (slot-value this 'f_highScore) _highScore)
        (setf (slot-value this 'f_abeClientInformation) _abeClientInformation)
        (setf (slot-value this 'f_gameInfo) _gameInfo)))
    this))

    
(unless (fboundp 'jm_setHighScoresArray_1) (defgeneric jm_setHighScoresArray_1 (this p1)))
(defmethod jm_setHighScoresArray_1 ((this HighScoreUtil) _highScoresArray)
  (declare (ignorable this _highScoresArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_highScoresArray) _highScoresArray)
        (setf (slot-value this 'f_firstTime) nil)
        (jm_saveHighScore_0 this))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this HighScoreUtil) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (jm_save_3 (HighScoreNamePersistanceSingleton.jm_getInstance_0) (slot-value this 'f_abeClientInformation) (slot-value this 'f_gameInfo) _name)
        (jm_setName_1 (slot-value this 'f_highScore) _name))))

    
(unless (fboundp 'jm_saveHighScore_0) (defgeneric jm_saveHighScore_0 (this)))
(defmethod jm_saveHighScore_0 ((this HighScoreUtil))
  (declare (ignorable this))
  (let (_size _highScores _highScoresAsString _index)
  (declare (ignorable _size _highScores _highScoresAsString _index))
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) (slot-value (slot-value this 'f_commonStrings) 'f_START)) (jm_toString_1 (StringUtil.jm_getInstance_0) (slot-value this 'f_highScore)))) this "saveHighScore")
        (setf _size (length (slot-value this 'f_highScoresArray)))
        (if (and (slot-value this 'f_firstTime) (= _size 0))
            (progn
            (jm_putF_3 (slot-value this 'f_logUtil) "Games canvas did not give us any HighScores" this "saveHighScore")
            (jm_fetchHighScores_2 (slot-value this 'f_highScoresFactoryInterface) (slot-value this 'f_gameInfo) this)
            (return-from jreturn)))
        (setf _highScores nil)
        (setf _highScoresAsString nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _highScores (aref (slot-value this 'f_highScoresArray) _index))
            (jm_addHighScore_1 _highScores (slot-value this 'f_highScore))
            (setf _highScoresAsString (jm_toString_0 _highScores))
            (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Added/Adding Score: ") _highScoresAsString)) this "saveHighScore"))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_setHighScoresArray_1 (slot-value this 'f_highScoresHelper) (slot-value this 'f_highScoresArray)))))

    
(unless (fboundp 'jm_submit_1) (defgeneric jm_submit_1 (this p1)))
(defmethod jm_submit_1 ((this HighScoreUtil) _myCanvas)
  (declare (ignorable this _myCanvas))
  (let (_commandListener)
  (declare (ignorable _commandListener))
    (block jreturn
        (setf _commandListener (jm_getCustomCommandListener_0 _myCanvas))
        (jm_commandAction_2 _commandListener (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND) _myCanvas))))



