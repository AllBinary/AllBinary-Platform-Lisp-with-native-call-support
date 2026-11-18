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
;;;; package javax.microedition.lcdui

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ChoiceGroupImageFactory (JObject)
  ((f_multiOff :initform nil)
   (f_multiOn :initform nil)
   (f_radioOff :initform nil)
   (f_radioOn :initform nil)
   (f_midpUtil :initform nil)
   (f_imgMultiOffO :initform nil)
   (f_imgMultiOnO :initform nil)
   (f_imgRadioOffO :initform nil)
   (f_imgRadioOnO :initform nil)
   (f_imgMultiOff :initform nil)
   (f_imgMultiOn :initform nil)
   (f_imgRadioOff :initform nil)
   (f_imgRadioOn :initform nil)
   (f_imageArray :initform nil)))

(defvar ChoiceGroupImageFactory.jcell_instance :jnone)
(defun ChoiceGroupImageFactory.jstatic_instance ()
  (when (eq ChoiceGroupImageFactory.jcell_instance :jnone) (setf ChoiceGroupImageFactory.jcell_instance (ChoiceGroupImageFactory.jnew_0)))
  ChoiceGroupImageFactory.jcell_instance)
(defun (setf ChoiceGroupImageFactory.jstatic_instance) (value) (setf ChoiceGroupImageFactory.jcell_instance value))

(defun ChoiceGroupImageFactory.jnew_0 ()
  (let ((this (make-instance 'ChoiceGroupImageFactory)))
    (setf (slot-value this 'f_multiOff) (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR.i8 (JR.i32 (- 12))) (JR.i8 (JR.i32 (- 117))) 0 0 0 6 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 57))) 75 (JR.i8 (JR.i32 (- 33))) (JR.i8 (JR.i32 (- 8))) 0 0 0 30 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 96 96 96 12 101 (JR.i8 (JR.i32 (- 8))) (JR.i8 (JR.i32 (- 51))) (JR.i8 (JR.i32 (- 32))) (JR.i8 (JR.i32 (- 64))) 32 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 60))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 128))) 11 51 (JR.i8 (JR.i32 (- 122))) 50 (JR.i8 (JR.i32 (- 4))) 6 0 63 116 3 1 53 (JR.i8 (JR.i32 (- 108))) 39 (JR.i8 (JR.i32 (- 26))) 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (setf (slot-value this 'f_multiOn) (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR.i8 (JR.i32 (- 12))) (JR.i8 (JR.i32 (- 117))) 0 0 0 12 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 2 2 2 106 (JR.i8 (JR.i32 (- 103))) 14 (JR.i8 (JR.i32 (- 47))) 0 0 0 53 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 96 124 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 16))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 77))) 3 (JR.i8 (JR.i32 (- 45))) 65 (JR.i8 (JR.i32 (- 111))) 15 76 12 108 12 76 12 (JR.i8 (JR.i32 (- 4))) 12 76 12 18 12 76 (JR.i8 (JR.i32 (- 68))) 127 24 (JR.i8 (JR.i32 (- 104))) 126 45 96 96 (JR.i8 (JR.i32 (- 7))) (JR.i8 (JR.i32 (- 11))) (JR.i8 (JR.i32 (- 109))) (JR.i8 (JR.i32 (- 127))) (JR.i8 (JR.i32 (- 23))) (JR.i8 (JR.i32 (- 65))) 3 3 (JR.i8 (JR.i32 (- 29))) 127 (JR.i8 (JR.i32 (- 122))) (JR.i8 (JR.i32 (- 113))) 0 5 37 12 (JR.i8 (JR.i32 (- 34))) 1 (JR.i8 (JR.i32 (- 99))) (JR.i8 (JR.i32 (- 83))) 100 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (setf (slot-value this 'f_radioOff) (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 97))) (JR.i8 (JR.i32 (- 75))) 0 0 0 9 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 (JR.i8 (JR.i32 (- 44))) 13 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 24))) 0 0 0 42 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 99 96 90 (JR.i8 (JR.i32 (- 59))) (JR.i8 (JR.i32 (- 64))) 32 (JR.i8 (JR.i32 (- 63))) 48 (JR.i8 (JR.i32 (- 127))) 65 (JR.i8 (JR.i32 (- 127))) 65 (JR.i8 (JR.i32 (- 127))) 41 (JR.i8 (JR.i32 (- 127))) (JR.i8 (JR.i32 (- 31))) 5 19 3 3 3 50 102 80 96 80 96 (JR.i8 (JR.i32 (- 6))) (JR.i8 (JR.i32 (- 63))) 80 (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 64))) (JR.i8 (JR.i32 (- 76))) (JR.i8 (JR.i32 (- 118))) 1 0 113 24 5 61 73 (JR.i8 (JR.i32 (- 68))) (JR.i8 (JR.i32 (- 100))) 98 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (setf (slot-value this 'f_radioOn) (vector (JR.i8 (JR.i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 62))) (JR.i8 (JR.i32 (- 97))) (JR.i8 (JR.i32 (- 75))) 0 0 0 12 80 76 84 69 (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 1))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) (JR.i8 (JR.i32 (- 69))) 106 106 106 2 2 2 106 (JR.i8 (JR.i32 (- 103))) 14 (JR.i8 (JR.i32 (- 47))) 0 0 0 50 73 68 65 84 120 (JR.i8 (JR.i32 (- 38))) 5 (JR.i8 (JR.i32 (- 63))) 65 13 0 32 12 4 (JR.i8 (JR.i32 (- 63))) (JR.i8 (JR.i32 (- 19))) (JR.i8 (JR.i32 (- 11))) (JR.i8 (JR.i32 (- 117))) 1 18 68 (JR.i8 (JR.i32 (- 100))) 10 52 19 94 72 64 17 101 (JR.i8 (JR.i32 (- 122))) 44 (JR.i8 (JR.i32 (- 44))) (JR.i8 (JR.i32 (- 29))) 98 (JR.i8 (JR.i32 (- 52))) 89 77 (JR.i8 (JR.i32 (- 102))) 40 2 85 (JR.i8 (JR.i32 (- 95))) (JR.i8 (JR.i32 (- 73))) (JR.i8 (JR.i32 (- 63))) (JR.i8 (JR.i32 (- 104))) (JR.i8 (JR.i32 (- 63))) 37 (JR.i8 (JR.i32 (- 117))) 15 (JR.i8 (JR.i32 (- 40))) 119 10 41 78 26 (JR.i8 (JR.i32 (- 79))) 59 0 0 0 0 73 69 78 68 (JR.i8 (JR.i32 (- 82))) 66 96 (JR.i8 (JR.i32 (- 126)))))
    (setf (slot-value this 'f_midpUtil) (MIDPUtil.jm_getInstance_0))
    (setf (slot-value this 'f_imgMultiOffO) (jm_createImageFromByteArray_3 (slot-value this 'f_midpUtil) (slot-value this 'f_multiOff) 0 (length (slot-value this 'f_multiOff))))
    (setf (slot-value this 'f_imgMultiOnO) (jm_createImageFromByteArray_3 (slot-value this 'f_midpUtil) (slot-value this 'f_multiOn) 0 (length (slot-value this 'f_multiOn))))
    (setf (slot-value this 'f_imgRadioOffO) (jm_createImageFromByteArray_3 (slot-value this 'f_midpUtil) (slot-value this 'f_radioOff) 0 (length (slot-value this 'f_radioOff))))
    (setf (slot-value this 'f_imgRadioOnO) (jm_createImageFromByteArray_3 (slot-value this 'f_midpUtil) (slot-value this 'f_radioOn) 0 (length (slot-value this 'f_radioOn))))
    (setf (slot-value this 'f_imgMultiOff) (slot-value this 'f_imgMultiOffO))
    (setf (slot-value this 'f_imgMultiOn) (slot-value this 'f_imgMultiOnO))
    (setf (slot-value this 'f_imgRadioOff) (slot-value this 'f_imgRadioOffO))
    (setf (slot-value this 'f_imgRadioOn) (slot-value this 'f_imgRadioOnO))
    (setf (slot-value this 'f_imageArray) (vector (slot-value this 'f_imgMultiOff) (slot-value this 'f_imgMultiOn) (slot-value this 'f_imgRadioOff) (slot-value this 'f_imgRadioOn)))
    this))

    
(defun ChoiceGroupImageFactory.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ChoiceGroupImageFactory.jstatic_instance)))))

    
(unless (fboundp 'jm_getImageArray_0) (defgeneric jm_getImageArray_0 (this)))
(defmethod jm_getImageArray_0 ((this ChoiceGroupImageFactory))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_imageArray)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this ChoiceGroupImageFactory) _imageArray)
  (declare (ignorable this _imageArray))
  (let ()
    (block jreturn
        (setf (slot-value this 'f_imgMultiOff) (aref _imageArray 0))
        (setf (aref (slot-value this 'f_imageArray) 0) (slot-value this 'f_imgMultiOff))
        (setf (slot-value this 'f_imgMultiOn) (aref _imageArray 1))
        (setf (aref (slot-value this 'f_imageArray) 1) (slot-value this 'f_imgMultiOn))
        (setf (slot-value this 'f_imgRadioOff) (aref _imageArray 2))
        (setf (aref (slot-value this 'f_imageArray) 2) (slot-value this 'f_imgRadioOff))
        (setf (slot-value this 'f_imgRadioOn) (aref _imageArray 3))
        (setf (aref (slot-value this 'f_imageArray) 3) (slot-value this 'f_imgRadioOn)))))



