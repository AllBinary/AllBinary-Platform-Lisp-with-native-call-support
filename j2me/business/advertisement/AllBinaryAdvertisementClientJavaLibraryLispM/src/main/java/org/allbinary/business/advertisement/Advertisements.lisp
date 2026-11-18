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
;;;; package org.allbinary.business.advertisement

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass Advertisements (JObject)
  ((f_bannerList :initform nil)
   (f_pageList :initform nil)
   (f_myRandomFactory :initform nil)))

(defun Advertisements.jnew_0 ()
  (let ((this (make-instance 'Advertisements)))
    (setf (slot-value this 'f_bannerList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_pageList) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_myRandomFactory) (MyRandomFactory.jm_getInstance_0))
    this))

    
(unless (fboundp 'jm_addPage_1) (defgeneric jm_addPage_1 (this p1)))
(defmethod jm_addPage_1 ((this Advertisements) _advertisementProcessorInterface)
  (declare (ignorable this _advertisementProcessorInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_pageList) _advertisementProcessorInterface))
            (progn
            (jm_add_1 (slot-value this 'f_pageList) _advertisementProcessorInterface))))))

    
(unless (fboundp 'jm_startRandomPage_0) (defgeneric jm_startRandomPage_0 (this)))
(defmethod jm_startRandomPage_0 ((this Advertisements))
  (declare (ignorable this))
  (let (_size _random _advertisementProcessorInterface)
  (declare (ignorable _size _random _advertisementProcessorInterface))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_pageList)))
        (if (> _size 0)
            (progn
            (setf _random (jm_getAbsoluteNextInt_1 (slot-value this 'f_myRandomFactory) _size))
            (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_pageList) 'f_objectArray) _random))
            (jm_start_0 _advertisementProcessorInterface))))))

    
(unless (fboundp 'jm_processRandomPage_0) (defgeneric jm_processRandomPage_0 (this)))
(defmethod jm_processRandomPage_0 ((this Advertisements))
  (declare (ignorable this))
  (let (_size _random _advertisementProcessorInterface)
  (declare (ignorable _size _random _advertisementProcessorInterface))
    (block jreturn
        (if (jm_isLocked_0 (LockedUtil.jm_getInstance_0))
            (progn
            (setf _size (jm_size_0 (slot-value this 'f_pageList)))
            (if (> _size 0)
                (progn
                (setf _random (jm_getAbsoluteNextInt_1 (slot-value this 'f_myRandomFactory) _size))
                (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_pageList) 'f_objectArray) _random))
                (jm_process_0 _advertisementProcessorInterface))))))))

    
(unless (fboundp 'jm_stopAllPage_0) (defgeneric jm_stopAllPage_0 (this)))
(defmethod jm_stopAllPage_0 ((this Advertisements))
  (declare (ignorable this))
  (let (_advertisementProcessorInterface _index)
  (declare (ignorable _advertisementProcessorInterface _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_pageList)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_pageList) 'f_objectArray) _index))
            (jm_stop_0 _advertisementProcessorInterface))))))))

    
(unless (fboundp 'jm_addBanner_1) (defgeneric jm_addBanner_1 (this p1)))
(defmethod jm_addBanner_1 ((this Advertisements) _advertisementProcessorInterface)
  (declare (ignorable this _advertisementProcessorInterface))
  (let ()
    (block jreturn
        (if (not (jm_contains_1 (slot-value this 'f_bannerList) _advertisementProcessorInterface))
            (progn
            (jm_add_1 (slot-value this 'f_bannerList) _advertisementProcessorInterface))))))

    
(unless (fboundp 'jm_startAll_0) (defgeneric jm_startAll_0 (this)))
(defmethod jm_startAll_0 ((this Advertisements))
  (declare (ignorable this))
  (let (_advertisementProcessorInterface _index)
  (declare (ignorable _advertisementProcessorInterface _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_bannerList)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_bannerList) 'f_objectArray) _index))
            (jm_start_0 _advertisementProcessorInterface))))))))

    
(unless (fboundp 'jm_stopAllBanner_0) (defgeneric jm_stopAllBanner_0 (this)))
(defmethod jm_stopAllBanner_0 ((this Advertisements))
  (declare (ignorable this))
  (let (_advertisementProcessorInterface _index)
  (declare (ignorable _advertisementProcessorInterface _index))
    (block jreturn
        (progn
            (setf _index (jm_size_0 (slot-value this 'f_bannerList)))
            (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                (block jcontinue
            (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_bannerList) 'f_objectArray) _index))
            (jm_stop_0 _advertisementProcessorInterface))))))))

    
(unless (fboundp 'jm_getBanner_1) (defgeneric jm_getBanner_1 (this p1)))
(defmethod jm_getBanner_1 ((this Advertisements) _index)
  (declare (ignorable this _index))
  (let (_advertisementProcessorInterface)
  (declare (ignorable _advertisementProcessorInterface))
    (block jreturn
        (setf _advertisementProcessorInterface (aref (slot-value (slot-value this 'f_bannerList) 'f_objectArray) _index))
        (return-from jreturn _advertisementProcessorInterface))))

    
(unless (fboundp 'jm_stopAll_0) (defgeneric jm_stopAll_0 (this)))
(defmethod jm_stopAll_0 ((this Advertisements))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (jm_stopAllBanner_0 this)
        (jm_stopAllPage_0 this))))



