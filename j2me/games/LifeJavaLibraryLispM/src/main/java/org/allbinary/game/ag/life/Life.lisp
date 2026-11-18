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
;;;; package org.allbinary.game.ag.life

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Life (JObject)
  ((f_lives :initform 0)
   (f_startLives :initform 0)
   (f_maxlives :initform 0)))

(defvar Life.jcell_NO_LIFE :jnone)
(defun Life.jstatic_NO_LIFE ()
  (when (eq Life.jcell_NO_LIFE :jnone) (setf Life.jcell_NO_LIFE (Life.jm_createLife_0)))
  Life.jcell_NO_LIFE)
(defun (setf Life.jstatic_NO_LIFE) (value) (setf Life.jcell_NO_LIFE value))

    
(defun Life.jm_createLife_0 ()
  (let ()
    (block jreturn
        (handler-case (progn
            (return-from jreturn (Life.jnew_2 (JR.i16 0) (JR.i16 0))))
            (error (_e) (declare (ignorable _e))
            (error (JR.newException "RuntimeException")))))))

    
(defun Life.jnew_2 (_lives _maxlives)
  (declare (ignorable _lives _maxlives))
  (let ((this (make-instance 'Life)))
    
    
    
  (let ()
    (block jreturn
        (setf (slot-value this 'f_maxlives) _maxlives)
        (if (> _lives (slot-value this 'f_maxlives))
            (progn
            (error (JR.newException "Exception" "To Many Lives"))))
        (setf (slot-value this 'f_lives) _lives)
        (setf (slot-value this 'f_startLives) _lives)))
    this))

    
(unless (fboundp 'jm_get_0) (defgeneric jm_get_0 (this)))
(defmethod jm_get_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_lives)))))

    
(unless (fboundp 'jm_set_1) (defgeneric jm_set_1 (this p1)))
(defmethod jm_set_1 ((this Life) _lives)
  (declare (ignorable this _lives))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lives) _lives))))

    
(unless (fboundp 'jm_reset_0) (defgeneric jm_reset_0 (this)))
(defmethod jm_reset_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_lives) (slot-value this 'f_startLives)))))

    
(unless (fboundp 'jm_add_1) (defgeneric jm_add_1 (this p1)))
(defmethod jm_add_1 ((this Life) _lives)
  (declare (ignorable this _lives))
  (let ()
    (block jreturn
        (if (not (jm_reachedLimit_0 this))
            (progn
            (if (<= (JR.i32 (+ (slot-value this 'f_lives) _lives)) (jm_getMaxlives_0 this))
                (progn
                (setf (slot-value this 'f_lives) (JR.i16 (JR.i32 (+ (slot-value this 'f_lives) _lives)))))
                (progn
                (setf (slot-value this 'f_lives) (jm_getMaxlives_0 this)))))))))

    
(unless (fboundp 'jm_isAlive_0) (defgeneric jm_isAlive_0 (this)))
(defmethod jm_isAlive_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (<= (slot-value this 'f_lives) 0)
            (progn
            (return-from jreturn nil))
            (progn
            (return-from jreturn t))))))

    
(unless (fboundp 'jm_getMaxlives_0) (defgeneric jm_getMaxlives_0 (this)))
(defmethod jm_getMaxlives_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_maxlives)))))

    
(unless (fboundp 'jm_reachedLimit_0) (defgeneric jm_reachedLimit_0 (this)))
(defmethod jm_reachedLimit_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (if (or (> (slot-value this 'f_lives) (slot-value this 'f_maxlives)) (< (slot-value this 'f_lives) 0))
            (progn
            (return-from jreturn t))
            (progn
            (return-from jreturn nil))))))

    
(unless (fboundp 'jm_deaths_1) (defgeneric jm_deaths_1 (this p1)))
(defmethod jm_deaths_1 ((this Life) _lives)
  (declare (ignorable this _lives))
  (let ()
    (block jreturn
        (if (not (jm_reachedLimit_0 this))
            (progn
            (if (>= (JR.i32 (- (slot-value this 'f_lives) _lives)) 0)
                (progn
                (setf (slot-value this 'f_lives) (JR.i16 (JR.i32 (- (slot-value this 'f_lives) _lives)))))
                (progn
                (setf (slot-value this 'f_lives) 0))))))))

    
(unless (fboundp 'jm_getStartLives_0) (defgeneric jm_getStartLives_0 (this)))
(defmethod jm_getStartLives_0 ((this Life))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_startLives)))))

    
(unless (fboundp 'jm_setStartLives_1) (defgeneric jm_setStartLives_1 (this p1)))
(defmethod jm_setStartLives_1 ((this Life) _startLives)
  (declare (ignorable this _startLives))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_startLives) _startLives))))



