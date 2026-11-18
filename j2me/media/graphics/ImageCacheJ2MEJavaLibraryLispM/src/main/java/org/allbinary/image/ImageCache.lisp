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

(defclass ImageCache (ImageCacheBase)
  ((f_commonStrings :initform nil)
   (f_tsUtil :initform nil)))

(defvar ImageCache.jcell_NULL_IMAGE_CACHE :jnone)
(defun ImageCache.jstatic_NULL_IMAGE_CACHE ()
  (when (eq ImageCache.jcell_NULL_IMAGE_CACHE :jnone) (setf ImageCache.jcell_NULL_IMAGE_CACHE (ImageCache.jnew_0)))
  ImageCache.jcell_NULL_IMAGE_CACHE)
(defun (setf ImageCache.jstatic_NULL_IMAGE_CACHE) (value) (setf ImageCache.jcell_NULL_IMAGE_CACHE value))

    
(defun ImageCache.jnew_0 ()
  (let ((this (make-instance 'ImageCache)))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_addListener_1) (defgeneric jm_addListener_1 (this p1)))
(defmethod jm_addListener_1 ((this ImageCache) _renderer)
  (declare (ignorable this _renderer))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getIndex_1) (defgeneric jm_getIndex_1 (this p1)))
(defmethod jm_getIndex_1 ((this ImageCache) _key)
  (declare (ignorable this _key))
  (let (_gdResources _resourceStringArray _size _index)
  (declare (ignorable _gdResources _resourceStringArray _size _index))
    (block jreturn
        (setf _gdResources (GDResources.jm_getInstance_0))
        (setf _resourceStringArray (slot-value _gdResources 'f_resourceStringArray))
        (setf _size (length _resourceStringArray))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (if (eq (aref _resourceStringArray _index) _key)
                (progn
                (return-from jreturn _index))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "unable to find key: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _key))) this (slot-value (slot-value this 'f_commonStrings) 'f_RUN))
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_get_3) (defgeneric jm_get_3 (this p1 p2 p3)))
(defmethod jm_get_3 ((this ImageCache) _caller _width _height)
  (declare (ignorable this _caller _width _height))
  (let (_foundIndex _image _widths)
  (declare (ignorable _foundIndex _image _widths))
    (block jreturn
        (setf _foundIndex (jm_getIndexWH_2 this _width _height))
        (setf _image (jm_getFromAvailable_3 this _foundIndex _width _height))
        (if (eq _image (NullImage.jstatic_NULL_IMAGE))
            (progn
            (setf (slot-value this 'f_volume) (JR.i32 (+ (slot-value this 'f_volume) (JR.i32 (* _width _height)))))
            (if (> (slot-value this 'f_volume) 32000)
                (progn
                (jm_gc_0 (slot-value this 'f_tsUtil))
                (setf (slot-value this 'f_volume) 0)))
            (setf _image (jm_createImage_3 this _caller _width _height))
            (setf _widths (slot-value this 'f_widths))
            (if (> (slot-value this 'f_nextIndex) (JR.i32 (- (length _widths) 1)))
                (progn
                (if (= _foundIndex (JR.i32 (- 1)))
                    (progn
                    (setf _foundIndex (slot-value this 'f_nextIndex))
                    (setf (aref _widths (slot-value this 'f_nextIndex)) _width)
                    (setf (aref (slot-value this 'f_heights) (slot-value this 'f_nextIndex)) _height)
                    (setf (slot-value this 'f_nextIndex) (JR.i32 (+ (slot-value this 'f_nextIndex) 1)))))
                (jm_add_1 (aref (slot-value this 'f_listOfList) _foundIndex) _image)))))
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_getWithKey_1) (defgeneric jm_getWithKey_1 (this p1)))
(defmethod jm_getWithKey_1 ((this ImageCache) _key)
  (declare (ignorable this _key))
  (let (_image _resourceUtil _resourceInputStream)
  (declare (ignorable _image _resourceUtil _resourceInputStream))
    (block jreturn
        (setf _image (jm_getImage_1 this _key))
        (if (eq _image (NullImage.jstatic_NULL_IMAGE))
            (progn
            (setf _resourceUtil (ResourceUtil.jm_getInstance_0))
            (setf _resourceInputStream (jm_getResourceAsStream_1 _resourceUtil _key))
            (if (null _resourceInputStream)
                (progn
                (error (JR.newException "RuntimeException" (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "Image resource is not available for key: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _key)))))))
            (handler-case (progn
                (setf _image (jm_createImageFromInputStream_2 this _key _resourceInputStream)))
                (error (_e) (declare (ignorable _e))
                (jm_put_4 (slot-value this 'f_logUtil) "Exception: Trying Again After GC" this (slot-value (slot-value this 'f_commonStrings) 'f_GET) _e)
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_append_1 (jm_append_1 (StringMaker.jnew_0) "InputStream: ") (jm_toString_1 (StringUtil.jm_getInstance_0) _resourceInputStream))) this (slot-value (slot-value this 'f_commonStrings) 'f_GET))
                (jm_gc_0 (slot-value this 'f_tsUtil))
                (jm_gc_0 (slot-value this 'f_tsUtil))
                (jm_putF_3 (slot-value this 'f_logUtil) (Memory.jm_getInfo_0) this (slot-value (slot-value this 'f_commonStrings) 'f_GET))
                (Thread.jm_sleep_1 100)
                (setf _image (jm_createImageFromInputStream_2 this _key _resourceInputStream))))
            (if (J2MEUtil.jm_isHTML_0)
                (progn
                nil)
                (progn
                (jm_close_0 _resourceInputStream)))
            (jm_put_2 (slot-value this 'f_hashtable) _key _image)))
        (return-from jreturn _image))))

    
(unless (fboundp 'jm_loadImageForAnimation_0) (defgeneric jm_loadImageForAnimation_0 (this)))
(defmethod jm_loadImageForAnimation_0 ((this ImageCache))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_progressEnded_0) (defgeneric jm_progressEnded_0 (this)))
(defmethod jm_progressEnded_0 ((this ImageCache))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_runTask_0) (defgeneric jm_runTask_0 (this)))
(defmethod jm_runTask_0 ((this ImageCache))
  (declare (ignorable this))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_isLazy_0) (defgeneric jm_isLazy_0 (this)))
(defmethod jm_isLazy_0 ((this ImageCache))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn nil))))



