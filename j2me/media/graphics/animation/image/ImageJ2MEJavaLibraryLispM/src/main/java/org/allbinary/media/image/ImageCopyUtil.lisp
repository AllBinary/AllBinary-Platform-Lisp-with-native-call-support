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
;;;; package org.allbinary.media.image

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass ImageCopyUtil (JObject)
  ((f_logUtil :initform nil)
   (f_commonStrings :initform nil)
   (f_imageCreationUtil :initform nil)
   (f_anchor :initform 0)
   (f_gameFeatureFactory :initform nil)
   (f_features :initform nil)
   (f_NO_COPY :initform nil)))

(defvar ImageCopyUtil.jcell_instance :jnone)
(defun ImageCopyUtil.jstatic_instance ()
  (when (eq ImageCopyUtil.jcell_instance :jnone) (setf ImageCopyUtil.jcell_instance (ImageCopyUtil.jnew_0)))
  ImageCopyUtil.jcell_instance)
(defun (setf ImageCopyUtil.jstatic_instance) (value) (setf ImageCopyUtil.jcell_instance value))

    
(defun ImageCopyUtil.jm_getInstance_0 ()
  (let ()
    (block jreturn
        (return-from jreturn (ImageCopyUtil.jstatic_instance)))))

    
(defun ImageCopyUtil.jnew_0 ()
  (let ((this (make-instance 'ImageCopyUtil)))
    (setf (slot-value this 'f_logUtil) (LogUtil.jm_getInstance_0))
    (setf (slot-value this 'f_commonStrings) (CommonStrings.jm_getInstance_0))
    (setf (slot-value this 'f_imageCreationUtil) (ImageCreationUtil.jm_getInstance_0))
    (setf (slot-value this 'f_anchor) (Anchor.jstatic_TOP_LEFT))
    (setf (slot-value this 'f_gameFeatureFactory) (GameFeatureFactory.jm_getInstance_0))
    (setf (slot-value this 'f_features) (Features.jm_getInstance_0))
    (setf (slot-value this 'f_NO_COPY) "J2ME does not need to copy images after initial loading")
  (let ()
    (block jreturn nil))
    this))

    
(unless (fboundp 'jm_createImageForRotation_1) (defgeneric jm_createImageForRotation_1 (this p1)))
(defmethod jm_createImageForRotation_1 ((this ImageCopyUtil) _originalImage)
  (declare (ignorable this _originalImage))
  (let ()
    (block jreturn
        (return-from jreturn (jm_createImage_1 this _originalImage)))))

    
(unless (fboundp 'jm_createImage_1) (defgeneric jm_createImage_1 (this p1)))
(defmethod jm_createImage_1 ((this ImageCopyUtil) _originalImage)
  (declare (ignorable this _originalImage))
  (let (_image)
  (declare (ignorable _image))
    (block jreturn
        (if (not (jm_isFeature_1 (slot-value this 'f_features) (slot-value (slot-value this 'f_gameFeatureFactory) 'f_POST_IMAGE_LOADING_MODIFICATION)))
            (progn
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value this 'f_NO_COPY) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) (JR.newException "Exception"))
            (return-from jreturn _originalImage)))
        (setf _image (jm_createImageWH_2 (slot-value this 'f_imageCreationUtil) (jm_getWidth_0 _originalImage) (jm_getHeight_0 _originalImage)))
        (if (jm_isMutable_0 _image)
            (progn
            (jm_drawImage_4 (jm_getGraphics_0 _image) _originalImage 0 0 (slot-value this 'f_anchor))
            (return-from jreturn _image))
            (progn
            (error (JR.newException "Exception" "Not Mutable")))))))

    
(unless (fboundp 'jm_createImageScale_3) (defgeneric jm_createImageScale_3 (this p1 p2 p3)))
(defmethod jm_createImageScale_3 ((this ImageCopyUtil) _originalImage _canvasScale _resize)
  (declare (ignorable this _originalImage _canvasScale _resize))
  (let (_newWidth _newHeight _image _halfWidthDelta _halfHeightDelta _graphics)
  (declare (ignorable _newWidth _newHeight _image _halfWidthDelta _halfHeightDelta _graphics))
    (block jreturn
        (if (not (jm_isFeature_1 (slot-value this 'f_features) (slot-value (slot-value this 'f_gameFeatureFactory) 'f_POST_IMAGE_LOADING_MODIFICATION)))
            (progn
            (jm_put_4 (slot-value this 'f_logUtil) (slot-value this 'f_NO_COPY) this (slot-value (slot-value this 'f_commonStrings) 'f_CONSTRUCTOR) (JR.newException "Exception"))
            (return-from jreturn _originalImage)))
        (setf _newWidth (* (jm_getWidth_0 _originalImage) _canvasScale))
        (setf _newHeight (* (jm_getHeight_0 _originalImage) _canvasScale))
        (if _resize
            (progn
            (if (< _newWidth _newHeight)
                (progn
                (setf _newWidth _newHeight)))
            (if (< _newHeight _newWidth)
                (progn
                (setf _newHeight _newWidth)))))
        (setf _image (jm_createImageWH_2 (slot-value this 'f_imageCreationUtil) _newWidth _newHeight))
        (if (jm_isMutable_0 _image)
            (progn
            (setf _halfWidthDelta (JR.idiv (JR.i32 (- _newWidth (jm_getWidth_0 _originalImage))) 2))
            (setf _halfHeightDelta (JR.idiv (JR.i32 (- _newHeight (jm_getHeight_0 _originalImage))) 2))
            (setf _graphics (jm_getGraphics_0 _image))
            (jm_drawImage_4 _graphics _originalImage _halfWidthDelta _halfHeightDelta (slot-value this 'f_anchor))
            (return-from jreturn _image))
            (progn
            (error (JR.newException "Exception" "Not Mutable")))))))



