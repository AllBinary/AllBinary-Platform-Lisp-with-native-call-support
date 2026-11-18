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
;;;; package org.allbinary.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageCacheBase (JObject)
  ((f_logUtil :initform nil)
   (f_imageFactory :initform nil)
   (f_hashtable :initform nil)
   (f_SIZE :initform 0)
   (f_widths :initform nil)
   (f_heights :initform nil)
   (f_listOfList :initform nil)
   (f_availableListOfList :initform nil)
   (f_volume :initform 0)
   (f_nextIndex :initform 0)))

    
(defun ImageCacheBase.jnew_0 ()
  (let ((this (make-instance 'ImageCacheBase)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_imageFactory) (ImageFactory.jm_getInstance_0))
    (setf (slot-value this 'f_hashtable) (jm_createHashtable_0 (StdUtil.jm_getInstance_0)))
    (setf (slot-value this 'f_SIZE) 128)
    (setf (slot-value this 'f_widths) (JR.newArray 0 (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_heights) (JR.newArray 0 (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_listOfList) (JR.newArray nil (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_availableListOfList) (JR.newArray nil (slot-value this 'f_SIZE)))
    (setf (slot-value this 'f_volume) 0)
    (setf (slot-value this 'f_nextIndex) 0)
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_listOfList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_listOfList) _index) (BasicArrayListD.jnew_0)))
                (setf _index (JR.i32 (- _index 1))))))
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_availableListOfList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf (aref (slot-value this 'f_availableListOfList) _index) (BasicArrayListD.jnew_0)))
                (setf _index (JR.i32 (- _index 1))))))))
    this))

    
(unless (fboundp 'jm_getImage_1) (defgeneric jm_getImage_1 (this p1)))
(defmethod jm_getImage_1 ((this ImageCacheBase) _resourceId)
  (declare (ignorable this _resourceId))
  (let (_imageCanBeNull)
  (declare (ignorable _imageCanBeNull))
    (block jreturn
        (setf _imageCanBeNull (jm_get_1 (slot-value this 'f_hashtable) _resourceId))
        (if (null _imageCanBeNull)
            (progn
            (return-from jreturn (NullImage.jstatic_NULL_IMAGE))))
        (return-from jreturn _imageCanBeNull))))

    
(unless (fboundp 'jm_releaseAll_0) (defgeneric jm_releaseAll_0 (this)))
(defmethod jm_releaseAll_0 ((this ImageCacheBase))
  (declare (ignorable this))
  (let (_index)
  (declare (ignorable _index))
    (block jreturn
        (progn
            (setf _index (JR.i32 (- (length (slot-value this 'f_listOfList)) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (jm_clear_0 (aref (slot-value this 'f_availableListOfList) _index))
            (jm_addAllList_1 (aref (slot-value this 'f_availableListOfList) _index) (aref (slot-value this 'f_listOfList) _index)))
                (setf _index (JR.i32 (- _index 1))))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "ImageCache: ") (jm_toString_0 this))) this "releaseAll"))))

    
(unless (fboundp 'jm_getIndexWH_2) (defgeneric jm_getIndexWH_2 (this p1 p2)))
(defmethod jm_getIndexWH_2 ((this ImageCacheBase) _width _height)
  (declare (ignorable this _width _height))
  (let (_foundIndex _size _index)
  (declare (ignorable _foundIndex _size _index))
    (block jreturn
        (setf _foundIndex (JR.i32 (- 1)))
        (setf _size (length (slot-value this 'f_widths)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (and (= (aref (slot-value this 'f_widths) _index) _width) (= (aref (slot-value this 'f_heights) _index) _height))
                (progn
                (setf _foundIndex _index)
                (return-from jreturn _foundIndex))))
                (setf _index (JR.i32 (+ _index 1))))))
        (return-from jreturn _foundIndex))))

    
(unless (fboundp 'jm_getFromAvailable_3) (defgeneric jm_getFromAvailable_3 (this p1 p2 p3)))
(defmethod jm_getFromAvailable_3 ((this ImageCacheBase) _foundIndex _width _height)
  (declare (ignorable this _foundIndex _width _height))
  (let (_list)
  (declare (ignorable _list))
    (block jreturn
        (if (/= _foundIndex (JR.i32 (- 1)))
            (progn
            (if (> (jm_size_0 (aref (slot-value this 'f_availableListOfList) _foundIndex)) 0)
                (progn
                (setf _list (aref (slot-value this 'f_availableListOfList) _foundIndex))
                (return-from jreturn (jm_removeAt_1 _list (JR.i32 (- (jm_size_0 _list) 1))))))))
        (return-from jreturn (NullImage.jstatic_NULL_IMAGE)))))

    
(unless (fboundp 'jm_get_3) (defgeneric jm_get_3 (this p1 p2 p3)))
(defmethod jm_get_3 ((this ImageCacheBase) _caller _width _height)
  (declare (ignorable this _caller _width _height))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_getWithKey_1) (defgeneric jm_getWithKey_1 (this p1)))
(defmethod jm_getWithKey_1 ((this ImageCacheBase) _key)
  (declare (ignorable this _key))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_createImage_3) (defgeneric jm_createImage_3 (this p1 p2 p3)))
(defmethod jm_createImage_3 ((this ImageCacheBase) _caller _width _height)
  (declare (ignorable this _caller _width _height))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImage_3 (slot-value this 'f_imageFactory) _caller _width _height)))))

    
(unless (fboundp 'jm_createImageFromInputStream_2) (defgeneric jm_createImageFromInputStream_2 (this p1 p2)))
(defmethod jm_createImageFromInputStream_2 ((this ImageCacheBase) _key _inputStream)
  (declare (ignorable this _key _inputStream))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImageFromInputStream_2 (slot-value this 'f_imageFactory) _key _inputStream)))))

    
(unless (fboundp 'jm_toString_0) (defgeneric jm_toString_0 (this)))
(defmethod jm_toString_0 ((this ImageCacheBase))
  (declare (ignorable this))
  (let (_stringBuffer _width _height _total _totalAvailable _index)
  (declare (ignorable _stringBuffer _width _height _total _totalAvailable _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (progn
            (setf _index (JR.i32 (- (slot-value this 'f_nextIndex) 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _width (aref (slot-value this 'f_widths) _index))
            (setf _height (aref (slot-value this 'f_heights) _index))
            (setf _total (jm_size_0 (aref (slot-value this 'f_listOfList) _index)))
            (setf _totalAvailable (jm_size_0 (aref (slot-value this 'f_availableListOfList) _index)))
            (jm_append_1 _stringBuffer " w: ")
            (jm_appendint_1 _stringBuffer _width)
            (jm_append_1 _stringBuffer " h: ")
            (jm_appendint_1 _stringBuffer _height)
            (jm_append_1 _stringBuffer (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
            (jm_append_1 _stringBuffer (slot-value (CommonLabels.jm_getInstance_0) 'f_TOTAL_LABEL))
            (jm_appendint_1 _stringBuffer _total)
            (jm_append_1 _stringBuffer " available: ")
            (jm_appendint_1 _stringBuffer _totalAvailable))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn (jm_toString_0 _stringBuffer)))))

    
(unless (fboundp 'jm_getHashtableP_0) (defgeneric jm_getHashtableP_0 (this)))
(defmethod jm_getHashtableP_0 ((this ImageCacheBase))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value this 'f_hashtable)))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this ImageCacheBase) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_initProgress_0) (defgeneric jm_initProgress_0 (this)))
(defmethod jm_initProgress_0 ((this ImageCacheBase))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))



