;;;;
;;;; AllBinary Open License Version 1
;;;; Copyright (c) 2026 AllBinary
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
;;;; package org.allbinary

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

;like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
(defclass MIDPUtil (JObject)
  ())

(defvar MIDPUtil.jcell_instance :jnone)
(defun MIDPUtil.jstatic_instance ()
  (when (eq MIDPUtil.jcell_instance :jnone) (setf MIDPUtil.jcell_instance (MIDPUtil.jnew_0)))
  MIDPUtil.jcell_instance)
(defun (setf MIDPUtil.jstatic_instance) (value) (setf MIDPUtil.jcell_instance value))

(defun MIDPUtil.jnew_0 ()
  (let ((this (make-instance 'MIDPUtil)))
    this))

    
(defun MIDPUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (MIDPUtil.jstatic_instance)))))

    
(unless (fboundp 'jm_createImageWH_2) (defgeneric jm_createImageWH_2 (this p1 p2)))
(defmethod jm_createImageWH_2 ((this MIDPUtil) _width _height)
  (declare (ignorable this _width _height))
  (let ()
    (block jreturn
        (return-from jreturn (Image.jm_createImageWH_2 _width _height)))))

    
(unless (fboundp 'jm_createImageFromByteArray_3) (defgeneric jm_createImageFromByteArray_3 (this p1 p2 p3)))
(defmethod jm_createImageFromByteArray_3 ((this MIDPUtil) _imageData _imageOffset _imageLength)
  (declare (ignorable this _imageData _imageOffset _imageLength))
  (let ()
    (block jreturn
        (return-from jreturn (Image.jm_createImageFromByteArray_3 _imageData _imageOffset _imageLength)))))

    
(unless (fboundp 'jm_createImageFromInputStream_1) (defgeneric jm_createImageFromInputStream_1 (this p1)))
(defmethod jm_createImageFromInputStream_1 ((this MIDPUtil) _inputStream)
  (declare (ignorable this _inputStream))
  (let ()
    (block jreturn
        (return-from jreturn (Image.jm_createImageFromInputStream_1 _inputStream)))))

    
(unless (fboundp 'jm_createPlayerFromInputStream_2) (defgeneric jm_createPlayerFromInputStream_2 (this p1 p2)))
(defmethod jm_createPlayerFromInputStream_2 ((this MIDPUtil) _inputStream _type)
  (declare (ignorable this _inputStream _type))
  (let ()
    (block jreturn
        (return-from jreturn (Manager.jm_createPlayerFromInputStream_2 _inputStream _type)))))

    
(unless (fboundp 'jm_appendItem_2) (defgeneric jm_appendItem_2 (this p1 p2)))
(defmethod jm_appendItem_2 ((this MIDPUtil) _form _item)
  (declare (ignorable this _form _item))
  (let ()
    (block jreturn
        (return-from jreturn (jm_append_1 _form _item)))))



