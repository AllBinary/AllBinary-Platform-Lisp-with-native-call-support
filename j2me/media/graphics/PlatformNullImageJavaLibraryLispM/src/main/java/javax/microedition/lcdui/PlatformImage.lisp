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

;PlatformNullImageJavaLibrary
(defclass PlatformImage (JObject)
  ())

(defun PlatformImage.jnew_0 ()
  (let ((this (make-instance 'PlatformImage)))
    this))

    
(unless (fboundp 'jm_getImage_1) (defgeneric jm_getImage_1 (this p1)))
(defmethod jm_getImage_1 ((this PlatformImage) _graphicsSurface2)
  (declare (ignorable this _graphicsSurface2))
  (let ()
    (block jreturn
        (return-from jreturn (NullImage.jstatic_NULL_IMAGE)))))

    
(unless (fboundp 'jm_getSurfaceWidth_2) (defgeneric jm_getSurfaceWidth_2 (this p1 p2)))
(defmethod jm_getSurfaceWidth_2 ((this PlatformImage) _graphicsSurface2 _width)
  (declare (ignorable this _graphicsSurface2 _width))
  (let ()
    (block jreturn
        (return-from jreturn _width))))

    
(unless (fboundp 'jm_getSurfaceHeight_2) (defgeneric jm_getSurfaceHeight_2 (this p1 p2)))
(defmethod jm_getSurfaceHeight_2 ((this PlatformImage) _graphicsSurface2 _height)
  (declare (ignorable this _graphicsSurface2 _height))
  (let ()
    (block jreturn
        (return-from jreturn _height))))

    
(unless (fboundp 'jm_getWidth_2) (defgeneric jm_getWidth_2 (this p1 p2)))
(defmethod jm_getWidth_2 ((this PlatformImage) _image _width)
  (declare (ignorable this _image _width))
  (let ()
    (block jreturn
        (return-from jreturn _width))))

    
(unless (fboundp 'jm_getHeight_2) (defgeneric jm_getHeight_2 (this p1 p2)))
(defmethod jm_getHeight_2 ((this PlatformImage) _image _height)
  (declare (ignorable this _image _height))
  (let ()
    (block jreturn
        (return-from jreturn _height))))

    
(unless (fboundp 'jm_getGraphics_4) (defgeneric jm_getGraphics_4 (this p1 p2 p3 p4)))
(defmethod jm_getGraphics_4 ((this PlatformImage) _graphicsSurface _width _height _image)
  (declare (ignorable this _graphicsSurface _width _height _image))
  (let ()
    (block jreturn
        (error (JR.newException "RuntimeException")))))

    
(unless (fboundp 'jm_drawImage_6) (defgeneric jm_drawImage_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_drawImage_6 ((this PlatformImage) _image _x _y _anchor _g2 _g)
  (declare (ignorable this _image _x _y _anchor _g2 _g))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_drawRegion_10) (defgeneric jm_drawRegion_10 (this p1 p2 p3 p4 p5 p6 p7 p8 p9 p10)))
(defmethod jm_drawRegion_10 ((this PlatformImage) _image _x_src _y_src _width _height _transform _x_dst _y_dst _anchor _g)
  (declare (ignorable this _image _x_src _y_src _width _height _transform _x_dst _y_dst _anchor _g))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getRGB_8) (defgeneric jm_getRGB_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_getRGB_8 ((this PlatformImage) _argb _offset _scanlength _x _y _width _height _image)
  (declare (ignorable this _argb _offset _scanlength _x _y _width _height _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_setRGB_8) (defgeneric jm_setRGB_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_setRGB_8 ((this PlatformImage) _argb _offset _scanlength _x _y _width _height _image)
  (declare (ignorable this _argb _offset _scanlength _x _y _width _height _image))
  (let ()
    (block jreturn nil)))

    
(unless (fboundp 'jm_getData_1) (defgeneric jm_getData_1 (this p1)))
(defmethod jm_getData_1 ((this PlatformImage) _image)
  (declare (ignorable this _image))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (NullUtil.jm_getInstance_0) 'f_NULL_INT_ARRAY)))))



