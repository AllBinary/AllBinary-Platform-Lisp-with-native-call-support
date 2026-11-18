;;;; Generated Code Do Not Modify
;;;; package javax.microedition.lcdui

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullCanvas (Canvas)
  ())

(defvar NullCanvas.jcell_NULL_CANVAS :jnone)
(defun NullCanvas.jstatic_NULL_CANVAS ()
  (when (eq NullCanvas.jcell_NULL_CANVAS :jnone) (setf NullCanvas.jcell_NULL_CANVAS (NullCanvas.jnew_0)))
  NullCanvas.jcell_NULL_CANVAS)
(defun (setf NullCanvas.jstatic_NULL_CANVAS) (value) (setf NullCanvas.jcell_NULL_CANVAS value))

    
(defun NullCanvas.jnew_0 ()
  (let ((this (make-instance 'NullCanvas)))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_setFullScreenMode_1) (defgeneric jm_setFullScreenMode_1 (this p1)))
(defmethod jm_setFullScreenMode_1 ((this NullCanvas) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_sizeChanged_2) (defgeneric jm_sizeChanged_2 (this p1 p2)))
(defmethod jm_sizeChanged_2 ((this NullCanvas) _w _h)
  (declare (ignorable this _w _h))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getCommandStack_0) (defgeneric jm_getCommandStack_0 (this)))
(defmethod jm_getCommandStack_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_isCommand_1) (defgeneric jm_isCommand_1 (this p1)))
(defmethod jm_isCommand_1 ((this NullCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_addCommand_1) (defgeneric jm_addCommand_1 (this p1)))
(defmethod jm_addCommand_1 ((this NullCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_removeCommand_1) (defgeneric jm_removeCommand_1 (this p1)))
(defmethod jm_removeCommand_1 ((this NullCanvas) _command)
  (declare (ignorable this _command))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_removeAllCommands_0) (defgeneric jm_removeAllCommands_0 (this)))
(defmethod jm_removeAllCommands_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setCommandListener_1) (defgeneric jm_setCommandListener_1 (this p1)))
(defmethod jm_setCommandListener_1 ((this NullCanvas) _l)
  (declare (ignorable this _l))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getCustomCommandListener_0) (defgeneric jm_getCustomCommandListener_0 (this)))
(defmethod jm_getCustomCommandListener_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_isPaused_0) (defgeneric jm_isPaused_0 (this)))
(defmethod jm_isPaused_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_removePauseCommand_0) (defgeneric jm_removePauseCommand_0 (this)))
(defmethod jm_removePauseCommand_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pause_0) (defgeneric jm_pause_0 (this)))
(defmethod jm_pause_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_unPause_0) (defgeneric jm_unPause_0 (this)))
(defmethod jm_unPause_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_process_0) (defgeneric jm_process_0 (this)))
(defmethod jm_process_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_paint_1) (defgeneric jm_paint_1 (this p1)))
(defmethod jm_paint_1 ((this NullCanvas) _graphics)
  (declare (ignorable this _graphics))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_destroy_0) (defgeneric jm_destroy_0 (this)))
(defmethod jm_destroy_0 ((this NullCanvas))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setPaused_1) (defgeneric jm_setPaused_1 (this p1)))
(defmethod jm_setPaused_1 ((this NullCanvas) _isPaused)
  (declare (ignorable this _isPaused))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_pointerDragged_2) (defgeneric jm_pointerDragged_2 (this p1 p2)))
(defmethod jm_pointerDragged_2 ((this NullCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pointerPressed_2) (defgeneric jm_pointerPressed_2 (this p1 p2)))
(defmethod jm_pointerPressed_2 ((this NullCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_pointerReleased_2) (defgeneric jm_pointerReleased_2 (this p1 p2)))
(defmethod jm_pointerReleased_2 ((this NullCanvas) _x _y)
  (declare (ignorable this _x _y))
  (let ()
    (block jreturn nil)))



