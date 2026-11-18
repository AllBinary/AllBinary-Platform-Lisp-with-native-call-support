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
;;;; package org.allbinary.game.layer.identification

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass GroupLayerManagerListener (LayerManagerEventListener)
  ((f_logUtil :initform nil)
   (f_list :initform nil)))

(defvar GroupLayerManagerListener.jcell_SINGLETON :jnone)
(defun GroupLayerManagerListener.jstatic_SINGLETON ()
  (when (eq GroupLayerManagerListener.jcell_SINGLETON :jnone) (setf GroupLayerManagerListener.jcell_SINGLETON (GroupLayerManagerListener.jnew_0)))
  GroupLayerManagerListener.jcell_SINGLETON)
(defun (setf GroupLayerManagerListener.jstatic_SINGLETON) (value) (setf GroupLayerManagerListener.jcell_SINGLETON value))

    
(defun GroupLayerManagerListener.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (GroupLayerManagerListener.jstatic_SINGLETON)))))

    
(defun GroupLayerManagerListener.jnew_0 ()
  (let ((this (make-instance 'GroupLayerManagerListener)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_list) (BasicArrayListD.jnew_0))
  (let ()
    (block jreturn
        (jm_addListener_1 (LayerManagerEventHandler.jm_getInstance_0) this)))
    this))

    
(unless (fboundp 'jm_clear_0) (defgeneric jm_clear_0 (this)))
(defmethod jm_clear_0 ((this GroupLayerManagerListener))
  (declare (ignorable this))
  (let (_groupList _size _index)
  (declare (ignorable _groupList _size _index))
    (block jreturn
        (setf _groupList nil)
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (jm_clear_0 _groupList))
                (setf _index (JR.i32 (- _index 1)))))))))

    
(unless (fboundp 'jm_getGroupSizeFromInterface_1) (defgeneric jm_getGroupSizeFromInterface_1 (this p1)))
(defmethod jm_getGroupSizeFromInterface_1 ((this GroupLayerManagerListener) _groupInterfaceCompositeInterface)
  (declare (ignorable this _groupInterfaceCompositeInterface))
  (let (_groupInterfaceArray)
  (declare (ignorable _groupInterfaceArray))
    (block jreturn
        (setf _groupInterfaceArray (jm_getGroupInterface_0 _groupInterfaceCompositeInterface))
        (return-from jreturn (jm_getGroupSize_1 this (aref _groupInterfaceArray 0))))))

    
(unless (fboundp 'jm_getGroupSize_1) (defgeneric jm_getGroupSize_1 (this p1)))
(defmethod jm_getGroupSize_1 ((this GroupLayerManagerListener) _groupInterface)
  (declare (ignorable this _groupInterface))
  (let (_id)
  (declare (ignorable _id))
    (block jreturn
        (setf _id (jm_getGroupId_0 _groupInterface))
        (return-from jreturn (jm_getGroupSizeById_1 this _id)))))

    
(unless (fboundp 'jm_getList_1) (defgeneric jm_getList_1 (this p1)))
(defmethod jm_getList_1 ((this GroupLayerManagerListener) _groupInterface)
  (declare (ignorable this _groupInterface))
  (let (_id)
  (declare (ignorable _id))
    (block jreturn
        (setf _id (jm_getGroupId_0 _groupInterface))
        (return-from jreturn (jm_getListById_1 this _id)))))

    
(unless (fboundp 'jm_getListById_1) (defgeneric jm_getListById_1 (this p1)))
(defmethod jm_getListById_1 ((this GroupLayerManagerListener) _groupId)
  (declare (ignorable this _groupId))
  (let (_groupList)
  (declare (ignorable _groupList))
    (block jreturn
        (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _groupId))
        (return-from jreturn _groupList))))

    
(unless (fboundp 'jm_getGroupSizeById_1) (defgeneric jm_getGroupSizeById_1 (this p1)))
(defmethod jm_getGroupSizeById_1 ((this GroupLayerManagerListener) _groupId)
  (declare (ignorable this _groupId))
  (let (_groupList _size)
  (declare (ignorable _groupList _size))
    (block jreturn
        (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _groupId))
        (setf _size (jm_size_0 _groupList))
        (return-from jreturn _size))))

    
(unless (fboundp 'jm_areAllOtherGroupsEmpty_1) (defgeneric jm_areAllOtherGroupsEmpty_1 (this p1)))
(defmethod jm_areAllOtherGroupsEmpty_1 ((this GroupLayerManagerListener) _groupInterface)
  (declare (ignorable this _groupInterface))
  (let (_id _size _groupSize _index)
  (declare (ignorable _id _size _groupSize _index))
    (block jreturn
        (setf _id (jm_getGroupId_0 _groupInterface))
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (/= _id _index)
                (progn
                (setf _groupSize (jm_getGroupSizeById_1 this _index))
                (if (/= _groupSize 0)
                    (progn
                    (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "Group Size: ") _groupSize)) this "areAllOtherGroupsEmpty")
                    (return-from jreturn nil))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_isIdInList_2) (defgeneric jm_isIdInList_2 (this p1 p2)))
(defmethod jm_isIdInList_2 ((this GroupLayerManagerListener) _id _excludeGroupList)
  (declare (ignorable this _id _excludeGroupList))
  (let (_size _groupInterfaceArray _groupInterface _groupId _size2 _index2 _index)
  (declare (ignorable _size _groupInterfaceArray _groupInterface _groupId _size2 _index2 _index))
    (block jreturn
        (setf _size (jm_size_0 _excludeGroupList))
        (setf _groupInterfaceArray nil)
        (setf _groupInterface nil)
        (setf _groupId 0)
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _groupInterfaceArray (aref (slot-value _excludeGroupList 'f_objectArray) _index))
            (setf _size2 (length _groupInterfaceArray))
            (progn
                (setf _index2 0)
                (block jbreak (loop while (< _index2 _size2) do
                    (block jcontinue
                (setf _groupInterface (aref _groupInterfaceArray _index2))
                (setf _groupId (jm_getGroupId_0 _groupInterface))
                (if (= _groupId _id)
                    (progn
                    (return-from jreturn t))))
                    (setf _index2 (JR.i32 (+ _index2 1)))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn nil))))

    
(unless (fboundp 'jm_areAllOtherGroupsLessThan_2) (defgeneric jm_areAllOtherGroupsLessThan_2 (this p1 p2)))
(defmethod jm_areAllOtherGroupsLessThan_2 ((this GroupLayerManagerListener) _excludeGroupList _maxSize)
  (declare (ignorable this _excludeGroupList _maxSize))
  (let (_size _groupSize _index)
  (declare (ignorable _size _groupSize _index))
    (block jreturn
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (if (not (jm_isIdInList_2 this _index _excludeGroupList))
                (progn
                (setf _groupSize (jm_getGroupSizeById_1 this _index))
                (if (>= _groupSize _maxSize)
                    (progn
                    (return-from jreturn nil))))))
                (setf _index (JR.i32 (- _index 1))))))
        (return-from jreturn t))))

    
(unless (fboundp 'jm_init_1) (defgeneric jm_init_1 (this p1)))
(defmethod jm_init_1 ((this GroupLayerManagerListener) _total)
  (declare (ignorable this _total))
  (let ()
    (block jreturn
        (block jbreak (loop while (<= (jm_size_0 (slot-value this 'f_list)) (JR.i32 (+ _total 1))) do
                (block jcontinue
            (jm_add_1 (slot-value this 'f_list) (BasicArrayListD.jnew_0))))))))

    
(unless (fboundp 'jm_onEvent_1) (defgeneric jm_onEvent_1 (this p1)))
(defmethod jm_onEvent_1 ((this GroupLayerManagerListener) _eventObject)
  (declare (ignorable this _eventObject))
  (let ()
    (block jreturn
        (ForcedLogUtil.jm_log_2 (slot-value (EventStrings.jm_getInstance_0) 'f_PERFORMANCE_MESSAGE) this))))

    
(unless (fboundp 'jm_onCreateLayerManagerEvent_1) (defgeneric jm_onCreateLayerManagerEvent_1 (this p1)))
(defmethod jm_onCreateLayerManagerEvent_1 ((this GroupLayerManagerListener) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (let (_layerInterface _groupInterfaceArray _size _id _groupList _index)
  (declare (ignorable _layerInterface _groupInterfaceArray _size _id _groupList _index))
    (block jreturn
        (setf _layerInterface (jm_getLayerInterface_0 _layerManagerEvent))
        (setf _groupInterfaceArray (jm_getGroupInterface_0 _layerInterface))
        (setf _size (length _groupInterfaceArray))
        (setf _id 0)
        (setf _groupList nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _id (jm_getGroupId_0 (aref _groupInterfaceArray _index)))
            (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _id))
            (if (null _groupList)
                (progn
                (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 (jm_appendint_1 (jm_append_1 (StringMaker.jnew_0) "id: ") _id)) this "onCreateLayerManagerEvent")))
            (if (not (jm_contains_1 _groupList _layerInterface))
                (progn
                (jm_add_1 _groupList _layerInterface))
                (progn
                nil)))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_onDeleteLayerManagerEvent_1) (defgeneric jm_onDeleteLayerManagerEvent_1 (this p1)))
(defmethod jm_onDeleteLayerManagerEvent_1 ((this GroupLayerManagerListener) _layerManagerEvent)
  (declare (ignorable this _layerManagerEvent))
  (let (_layerInterface _groupInterfaceArray _size _id _groupList _index)
  (declare (ignorable _layerInterface _groupInterfaceArray _size _id _groupList _index))
    (block jreturn
        (setf _layerInterface (jm_getLayerInterface_0 _layerManagerEvent))
        (setf _groupInterfaceArray (jm_getGroupInterface_0 _layerInterface))
        (setf _size (length _groupInterfaceArray))
        (setf _id 0)
        (setf _groupList nil)
        (progn
            (setf _index 0)
            (block jbreak (loop while (< _index _size) do
                (block jcontinue
            (setf _id (jm_getGroupId_0 (aref _groupInterfaceArray _index)))
            (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _id))
            (jm_remove_1 _groupList _layerInterface))
                (setf _index (JR.i32 (+ _index 1)))))))))

    
(unless (fboundp 'jm_log_0) (defgeneric jm_log_0 (this)))
(defmethod jm_log_0 ((this GroupLayerManagerListener))
  (declare (ignorable this))
  (let (_stringBuffer _GROUP _SPACE _TOTAL_LABEL _size _groupList _index)
  (declare (ignorable _stringBuffer _GROUP _SPACE _TOTAL_LABEL _size _groupList _index))
    (block jreturn
        (setf _stringBuffer (StringMaker.jnew_0))
        (setf _GROUP "Group: ")
        (setf _SPACE (slot-value (CommonSeps.jm_getInstance_0) 'f_SPACE))
        (setf _TOTAL_LABEL (slot-value (CommonLabels.jm_getInstance_0) 'f_TOTAL_LABEL))
        (setf _size (jm_size_0 (slot-value this 'f_list)))
        (progn
            (setf _index (JR.i32 (- _size 1)))
            (block jbreak (loop while (>= _index 0) do
                (block jcontinue
            (setf _groupList (aref (slot-value (slot-value this 'f_list) 'f_objectArray) _index))
            (jm_append_1 _stringBuffer _GROUP)
            (jm_appendint_1 _stringBuffer _index)
            (jm_append_1 _stringBuffer _SPACE)
            (jm_append_1 _stringBuffer _TOTAL_LABEL)
            (jm_appendint_1 _stringBuffer (jm_size_0 _groupList))
            (jm_append_1 _stringBuffer _SPACE))
                (setf _index (JR.i32 (- _index 1))))))
        (jm_putF_3 (slot-value this 'f_logUtil) (jm_toString_0 _stringBuffer) this "log"))))



