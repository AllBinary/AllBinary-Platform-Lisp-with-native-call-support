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
;;;; package org.allbinary.game.combat.destroy.event

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass DestroyedEvent (AllBinaryEventObject)
  ((f_allBinaryGameCanvas :initform nil)
   (f_allBinaryLayerInterface :initform nil)))

    
(defun DestroyedEvent.jnew_1 (_combatGameCanvas)
  (declare (ignorable _combatGameCanvas))
  (let ((this (make-instance 'DestroyedEvent)))
    (setf (slot-value this 'f_allBinaryGameCanvas) (NullGameCanvas.jm_getInstance_0))
    (setf (slot-value this 'f_allBinaryLayerInterface) (AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER))
  (let ()
    (block jreturn
        nil
        (jm_setAllBinaryGameCanvas_1 this _combatGameCanvas)))
    this))

    
(unless (fboundp 'jm_getAllBinaryGameCanvas_0) (defgeneric jm_getAllBinaryGameCanvas_0 (this)))
(defmethod jm_getAllBinaryGameCanvas_0 ((this DestroyedEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_allBinaryGameCanvas)))))

    
(unless (fboundp 'jm_getLayerInterface_0) (defgeneric jm_getLayerInterface_0 (this)))
(defmethod jm_getLayerInterface_0 ((this DestroyedEvent))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_allBinaryLayerInterface)))))

    
(unless (fboundp 'jm_setAllBinaryGameCanvas_1) (defgeneric jm_setAllBinaryGameCanvas_1 (this p1)))
(defmethod jm_setAllBinaryGameCanvas_1 ((this DestroyedEvent) _allBinaryGameCanvas)
  (declare (ignorable this _allBinaryGameCanvas))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryGameCanvas) _allBinaryGameCanvas))))

    
(unless (fboundp 'jm_setLayerInterfaceForCircularStaticPool_1) (defgeneric jm_setLayerInterfaceForCircularStaticPool_1 (this p1)))
(defmethod jm_setLayerInterfaceForCircularStaticPool_1 ((this DestroyedEvent) _allBinaryLayerInterface)
  (declare (ignorable this _allBinaryLayerInterface))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_allBinaryLayerInterface) _allBinaryLayerInterface))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this DestroyedEvent))
  (declare (ignorable this))
  (let (_stringBuffer)
  (declare (ignorable _stringBuffer))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (jm_append_1 _stringBuffer (JR.unescape "DestroyedEvent: \\n"))
        (jm_append_1 _stringBuffer "AllBinaryLayerInterface: ")
        (jm_append_1 _stringBuffer (jm_toString_0 (slot-value this 'f_allBinaryLayerInterface)))
        (jm_append_1 _stringBuffer (JR.unescape "\\nAllBinaryGameCanvas: "))
        (jm_append_1 _stringBuffer (jm_toString_1 (StringUtil.jm_getInstance_0) (jm_getAllBinaryGameCanvas_0 this)))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))



