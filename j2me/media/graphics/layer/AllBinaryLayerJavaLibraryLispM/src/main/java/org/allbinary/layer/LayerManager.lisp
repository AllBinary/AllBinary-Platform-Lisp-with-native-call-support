;;;; Generated Code Do Not Modify
;;;; package org.allbinary.layer

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass LayerManager (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_systemWrapper :initform nil)
   (f_tsUtil :initform nil)
   (f_layerManagerLogging :initform nil)
   (f_list :initform nil)
   (f_anyType :initform nil)))

    
(defun LayerManager.jnew_1 (_layerManagerLogging)
  (declare (ignorable _layerManagerLogging))
  (let ((this (make-instance 'LayerManager)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_systemWrapper) (ABSystemWrapper.jm_getInstance_0))
    (setf (slot-value this 'f_tsUtil) (TsUtil.jm_getInstance_0))
    
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
    (setf (slot-value this 'f_anyType) (SynchObject.jnew_0))
  (let ()
    (block jreturn
        (jm_putF_3 (slot-value this 'f_logUtil) (slot-value (slot-value this 'f_commonStrings) 'f_START) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR))
        (setf (slot-value this 'f_layerManagerLogging) _layerManagerLogging)))
    this))

    
(unless (fboundp 'jm_contains_1) (defgeneric jm_contains_1 (this p1)))
(defmethod jm_contains_1 ((this LayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (return-from jreturn (jm_contains_1 (slot-value this 'f_list) _layerInterface)))))

    
(unless (fboundp 'jm_update_1) (defgeneric jm_update_1 (this p1)))
(defmethod jm_update_1 ((this LayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_had _nextLayerInterface _size _index)
  (declare (ignorable _had _nextLayerInterface _size _index))
    (block jreturn
        (setf _had (jm_remove_1 (slot-value this 'f_list) _layerInterface))
        (if _had
            (progn
            (setf _nextLayerInterface nil)
            (setf _size (jm_size_0 (slot-value this 'f_list)))
            (progn
                (setf _index 0)
                (block jbreak (loop while (< _index _size) do
                    (block jcontinue
                (setf _nextLayerInterface (jm_get_1 (slot-value this 'f_list) _index))
                (if (> (jm_getZP_0 _layerInterface) (jm_getZP_0 _nextLayerInterface))
                    (progn
                    (jm_addAt_2 (slot-value this 'f_list) _index _layerInterface)
                    (return-from jreturn))))
                    (setf _index (JR.i32 (+ _index 1))))))
            (jm_add_1 (slot-value this 'f_list) _layerInterface))))))

    
(unless (fboundp 'jm_insert_1) (defgeneric jm_insert_1 (this p1)))
(defmethod jm_insert_1 ((this LayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_nextLayerInterface _size _index)
  (declare (ignorable _nextLayerInterface _size _index))
    (block jreturn
        (setf _nextLayerInterface nil)
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _nextLayerInterface (jm_get_1 (slot-value this 'f_list) _index))
            (if (> (jm_getZP_0 _layerInterface) (jm_getZP_0 _nextLayerInterface))
                (progn
                (jm_appendAt_2 this _layerInterface _index)
                (return-from jreturn))))
                (setf _index (JR.i32 (+ _index 1))))))
        (jm_append_1 this _layerInterface))))

    
(unless (fboundp 'jm_append_1) (defgeneric jm_append_1 (this p1)))
(defmethod jm_append_1 ((this LayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let ()
    (block jreturn
        (jm_append_1 (slot-value this 'f_layerManagerLogging) _layerInterface)
        (jm_add_1 (slot-value this 'f_list) _layerInterface))))

    
(unless (fboundp 'jm_appendAt_2) (defgeneric jm_appendAt_2 (this p1 p2)))
(defmethod jm_appendAt_2 ((this LayerManager) _layerInterface _index)
  (declare (ignorable this _layerInterface _index))
  (let ()
    (block jreturn
        (jm_appendAt_2 (slot-value this 'f_layerManagerLogging) _layerInterface _index)
        (jm_addAt_2 (slot-value this 'f_list) _index _layerInterface))))

    
(unless (fboundp 'jm_remove_1) (defgeneric jm_remove_1 (this p1)))
(defmethod jm_remove_1 ((this LayerManager) _layerInterface)
  (declare (ignorable this _layerInterface))
  (let (_result)
  (declare (ignorable _result))
    (block jreturn
        (progn
            (jm_remove_1 (slot-value this 'f_layerManagerLogging) _layerInterface)
            (setf _result (jm_remove_1 (slot-value this 'f_list) _layerInterface))
            (jm_removeResult_3 (slot-value this 'f_layerManagerLogging) this _layerInterface _result)))))

    
(unless (fboundp 'jm_getLayerAt_1) (defgeneric jm_getLayerAt_1 (this p1)))
(defmethod jm_getLayerAt_1 ((this LayerManager) _index)
  (declare (ignorable this _index))
  (let ()
    (block jreturn
        (return-from jreturn (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index)))))

    
(unless (fboundp 'jm_getSize_0) (defgeneric jm_getSize_0 (this)))
(defmethod jm_getSize_0 ((this LayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn (jm_size_0 (slot-value this 'f_list))))))

    
(unless (fboundp 'jm_cleanup_0) (defgeneric jm_cleanup_0 (this)))
(defmethod jm_cleanup_0 ((this LayerManager))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (progn
            (jm_clear_0 (slot-value this 'f_list))
            (jm_clear_0 (slot-value this 'f_layerManagerLogging))
            (jm_gc_0 (slot-value this 'f_tsUtil))
            (jm_gc_0 (slot-value this 'f_tsUtil))))))

    
(unless (fboundp 'jm_paint_3) (defgeneric jm_paint_3 (this p1 p2 p3)))
(defmethod jm_paint_3 ((this LayerManager) _g _x _y)
  (declare (ignorable this _g _x _y))
  (let (_comp _index)
  (declare (ignorable _comp _index))
    (block jreturn
        (progn
            (setf _comp nil)
            (progn
                (setf _index (jm_size_0 (slot-value this 'f_list)))
                (block jbreak (loop while (>= (setf _index (JR.i32 (- _index 1))) 0) do
                    (block jcontinue
                (setf _comp (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
                (if (and (not (null _comp)) (jm_isVisible_0 _comp))
                    (progn
                    (jm_paint_1 _comp _g)))))))))))



