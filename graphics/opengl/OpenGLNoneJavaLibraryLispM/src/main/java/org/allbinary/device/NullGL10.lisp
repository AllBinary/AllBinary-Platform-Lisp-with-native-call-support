;;;; 
;;;; AllBinary Open License Version 1 
;;;; Copyright (c) 2025 AllBinary 
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
;;;; package org.allbinary.device

(in-package :allbinary)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable))
  (setf (readtable-case *readtable*) :invert))

(defclass NullGL10 (JObject)
  ())

(defvar NullGL10.jcell_NULL_GL10 :jnone)
(defun NullGL10.jstatic_NULL_GL10 ()
  (when (eq NullGL10.jcell_NULL_GL10 :jnone) (setf NullGL10.jcell_NULL_GL10 (NullGL10.jnew_0)))
  NullGL10.jcell_NULL_GL10)
(defun (setf NullGL10.jstatic_NULL_GL10) (value) (setf NullGL10.jcell_NULL_GL10 value))

(defun NullGL10.jnew_0 ()
  (let ((this (make-instance 'NullGL10)))
    this))

    
(unless (fboundp 'jm_glActiveTexture_1) (defgeneric jm_glActiveTexture_1 (this p1)))
(defmethod jm_glActiveTexture_1 ((this NullGL10) _texture)
  (declare (ignorable this _texture))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glAlphaFunc_2) (defgeneric jm_glAlphaFunc_2 (this p1 p2)))
(defmethod jm_glAlphaFunc_2 ((this NullGL10) _func _ref)
  (declare (ignorable this _func _ref))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glBindTexture_2) (defgeneric jm_glBindTexture_2 (this p1 p2)))
(defmethod jm_glBindTexture_2 ((this NullGL10) _target _texture)
  (declare (ignorable this _target _texture))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glBlendFunc_2) (defgeneric jm_glBlendFunc_2 (this p1 p2)))
(defmethod jm_glBlendFunc_2 ((this NullGL10) _sfactor _dfactor)
  (declare (ignorable this _sfactor _dfactor))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glClear_1) (defgeneric jm_glClear_1 (this p1)))
(defmethod jm_glClear_1 ((this NullGL10) _mask)
  (declare (ignorable this _mask))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glClearColor_4) (defgeneric jm_glClearColor_4 (this p1 p2 p3 p4)))
(defmethod jm_glClearColor_4 ((this NullGL10) _red _green _blue _alpha)
  (declare (ignorable this _red _green _blue _alpha))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glClearDepthf_1) (defgeneric jm_glClearDepthf_1 (this p1)))
(defmethod jm_glClearDepthf_1 ((this NullGL10) _depth)
  (declare (ignorable this _depth))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glClearStencil_1) (defgeneric jm_glClearStencil_1 (this p1)))
(defmethod jm_glClearStencil_1 ((this NullGL10) _s)
  (declare (ignorable this _s))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glClientActiveTexture_1) (defgeneric jm_glClientActiveTexture_1 (this p1)))
(defmethod jm_glClientActiveTexture_1 ((this NullGL10) _texture)
  (declare (ignorable this _texture))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glColor4f_4) (defgeneric jm_glColor4f_4 (this p1 p2 p3 p4)))
(defmethod jm_glColor4f_4 ((this NullGL10) _red _green _blue _alpha)
  (declare (ignorable this _red _green _blue _alpha))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glColorMask_4) (defgeneric jm_glColorMask_4 (this p1 p2 p3 p4)))
(defmethod jm_glColorMask_4 ((this NullGL10) _red _green _blue _alpha)
  (declare (ignorable this _red _green _blue _alpha))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glColorPointer_4) (defgeneric jm_glColorPointer_4 (this p1 p2 p3 p4)))
(defmethod jm_glColorPointer_4 ((this NullGL10) _size _type _stride _pointer)
  (declare (ignorable this _size _type _stride _pointer))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glCompressedTexImage2D_8) (defgeneric jm_glCompressedTexImage2D_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_glCompressedTexImage2D_8 ((this NullGL10) _target _level _internalformat _width _height _border _imageSize _data)
  (declare (ignorable this _target _level _internalformat _width _height _border _imageSize _data))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glCompressedTexSubImage2D_9) (defgeneric jm_glCompressedTexSubImage2D_9 (this p1 p2 p3 p4 p5 p6 p7 p8 p9)))
(defmethod jm_glCompressedTexSubImage2D_9 ((this NullGL10) _target _level _xoffset _yoffset _width _height _format _imageSize _data)
  (declare (ignorable this _target _level _xoffset _yoffset _width _height _format _imageSize _data))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glCopyTexImage2D_8) (defgeneric jm_glCopyTexImage2D_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_glCopyTexImage2D_8 ((this NullGL10) _target _level _internalformat _x _y _width _height _border)
  (declare (ignorable this _target _level _internalformat _x _y _width _height _border))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glCopyTexSubImage2D_8) (defgeneric jm_glCopyTexSubImage2D_8 (this p1 p2 p3 p4 p5 p6 p7 p8)))
(defmethod jm_glCopyTexSubImage2D_8 ((this NullGL10) _target _level _xoffset _yoffset _x _y _width _height)
  (declare (ignorable this _target _level _xoffset _yoffset _x _y _width _height))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glCullFace_1) (defgeneric jm_glCullFace_1 (this p1)))
(defmethod jm_glCullFace_1 ((this NullGL10) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDeleteTextures_3) (defgeneric jm_glDeleteTextures_3 (this p1 p2 p3)))
(defmethod jm_glDeleteTextures_3 ((this NullGL10) _n _textures _offset)
  (declare (ignorable this _n _textures _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDeleteTextures_2) (defgeneric jm_glDeleteTextures_2 (this p1 p2)))
(defmethod jm_glDeleteTextures_2 ((this NullGL10) _n _textures)
  (declare (ignorable this _n _textures))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDepthFunc_1) (defgeneric jm_glDepthFunc_1 (this p1)))
(defmethod jm_glDepthFunc_1 ((this NullGL10) _func)
  (declare (ignorable this _func))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDepthMask_1) (defgeneric jm_glDepthMask_1 (this p1)))
(defmethod jm_glDepthMask_1 ((this NullGL10) _flag)
  (declare (ignorable this _flag))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDepthRangef_2) (defgeneric jm_glDepthRangef_2 (this p1 p2)))
(defmethod jm_glDepthRangef_2 ((this NullGL10) _zNear _zFar)
  (declare (ignorable this _zNear _zFar))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDisable_1) (defgeneric jm_glDisable_1 (this p1)))
(defmethod jm_glDisable_1 ((this NullGL10) _cap)
  (declare (ignorable this _cap))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDisableClientState_1) (defgeneric jm_glDisableClientState_1 (this p1)))
(defmethod jm_glDisableClientState_1 ((this NullGL10) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDrawArrays_3) (defgeneric jm_glDrawArrays_3 (this p1 p2 p3)))
(defmethod jm_glDrawArrays_3 ((this NullGL10) _mode _first _count)
  (declare (ignorable this _mode _first _count))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glDrawElements_4) (defgeneric jm_glDrawElements_4 (this p1 p2 p3 p4)))
(defmethod jm_glDrawElements_4 ((this NullGL10) _mode _count _type _indices)
  (declare (ignorable this _mode _count _type _indices))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glEnable_1) (defgeneric jm_glEnable_1 (this p1)))
(defmethod jm_glEnable_1 ((this NullGL10) _cap)
  (declare (ignorable this _cap))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glEnableClientState_1) (defgeneric jm_glEnableClientState_1 (this p1)))
(defmethod jm_glEnableClientState_1 ((this NullGL10) _array)
  (declare (ignorable this _array))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFinish_0) (defgeneric jm_glFinish_0 (this)))
(defmethod jm_glFinish_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFlush_0) (defgeneric jm_glFlush_0 (this)))
(defmethod jm_glFlush_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFogf_2) (defgeneric jm_glFogf_2 (this p1 p2)))
(defmethod jm_glFogf_2 ((this NullGL10) _pname _param)
  (declare (ignorable this _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFogfv_3) (defgeneric jm_glFogfv_3 (this p1 p2 p3)))
(defmethod jm_glFogfv_3 ((this NullGL10) _pname _params _offset)
  (declare (ignorable this _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFogfv_2) (defgeneric jm_glFogfv_2 (this p1 p2)))
(defmethod jm_glFogfv_2 ((this NullGL10) _pname _params)
  (declare (ignorable this _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFrontFace_1) (defgeneric jm_glFrontFace_1 (this p1)))
(defmethod jm_glFrontFace_1 ((this NullGL10) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glFrustumf_6) (defgeneric jm_glFrustumf_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_glFrustumf_6 ((this NullGL10) _left _right _bottom _top _zNear _zFar)
  (declare (ignorable this _left _right _bottom _top _zNear _zFar))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glGenTextures_3) (defgeneric jm_glGenTextures_3 (this p1 p2 p3)))
(defmethod jm_glGenTextures_3 ((this NullGL10) _n _textures _offset)
  (declare (ignorable this _n _textures _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glGenTextures_2) (defgeneric jm_glGenTextures_2 (this p1 p2)))
(defmethod jm_glGenTextures_2 ((this NullGL10) _n _textures)
  (declare (ignorable this _n _textures))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glGetError_0) (defgeneric jm_glGetError_0 (this)))
(defmethod jm_glGetError_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn 0))))

    
(unless (fboundp 'jm_glGetIntegerv_3) (defgeneric jm_glGetIntegerv_3 (this p1 p2 p3)))
(defmethod jm_glGetIntegerv_3 ((this NullGL10) _pname _params _offset)
  (declare (ignorable this _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glGetIntegerv_2) (defgeneric jm_glGetIntegerv_2 (this p1 p2)))
(defmethod jm_glGetIntegerv_2 ((this NullGL10) _pname _params)
  (declare (ignorable this _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glGetString_1) (defgeneric jm_glGetString_1 (this p1)))
(defmethod jm_glGetString_1 ((this NullGL10) _name)
  (declare (ignorable this _name))
  (let ()
    (block jreturn
        (return-from jreturn (slot-value (StringUtil.jm_getInstance_0) 'f_EMPTY_STRING)))))

    
(unless (fboundp 'jm_glHint_2) (defgeneric jm_glHint_2 (this p1 p2)))
(defmethod jm_glHint_2 ((this NullGL10) _target _mode)
  (declare (ignorable this _target _mode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightModelf_2) (defgeneric jm_glLightModelf_2 (this p1 p2)))
(defmethod jm_glLightModelf_2 ((this NullGL10) _pname _param)
  (declare (ignorable this _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightModelfv_3) (defgeneric jm_glLightModelfv_3 (this p1 p2 p3)))
(defmethod jm_glLightModelfv_3 ((this NullGL10) _pname _params _offset)
  (declare (ignorable this _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightModelfv_2) (defgeneric jm_glLightModelfv_2 (this p1 p2)))
(defmethod jm_glLightModelfv_2 ((this NullGL10) _pname _params)
  (declare (ignorable this _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightf_3) (defgeneric jm_glLightf_3 (this p1 p2 p3)))
(defmethod jm_glLightf_3 ((this NullGL10) _light _pname _param)
  (declare (ignorable this _light _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightfv_4) (defgeneric jm_glLightfv_4 (this p1 p2 p3 p4)))
(defmethod jm_glLightfv_4 ((this NullGL10) _light _pname _params _offset)
  (declare (ignorable this _light _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLightfv_3) (defgeneric jm_glLightfv_3 (this p1 p2 p3)))
(defmethod jm_glLightfv_3 ((this NullGL10) _light _pname _params)
  (declare (ignorable this _light _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLineWidth_1) (defgeneric jm_glLineWidth_1 (this p1)))
(defmethod jm_glLineWidth_1 ((this NullGL10) _width)
  (declare (ignorable this _width))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLoadIdentity_0) (defgeneric jm_glLoadIdentity_0 (this)))
(defmethod jm_glLoadIdentity_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLoadMatrixf_2) (defgeneric jm_glLoadMatrixf_2 (this p1 p2)))
(defmethod jm_glLoadMatrixf_2 ((this NullGL10) _m _offset)
  (declare (ignorable this _m _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLoadMatrixf_1) (defgeneric jm_glLoadMatrixf_1 (this p1)))
(defmethod jm_glLoadMatrixf_1 ((this NullGL10) _m)
  (declare (ignorable this _m))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glLogicOp_1) (defgeneric jm_glLogicOp_1 (this p1)))
(defmethod jm_glLogicOp_1 ((this NullGL10) _opcode)
  (declare (ignorable this _opcode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMaterialf_3) (defgeneric jm_glMaterialf_3 (this p1 p2 p3)))
(defmethod jm_glMaterialf_3 ((this NullGL10) _face _pname _param)
  (declare (ignorable this _face _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMaterialfv_4) (defgeneric jm_glMaterialfv_4 (this p1 p2 p3 p4)))
(defmethod jm_glMaterialfv_4 ((this NullGL10) _face _pname _params _offset)
  (declare (ignorable this _face _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMaterialfv_3) (defgeneric jm_glMaterialfv_3 (this p1 p2 p3)))
(defmethod jm_glMaterialfv_3 ((this NullGL10) _face _pname _params)
  (declare (ignorable this _face _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMatrixMode_1) (defgeneric jm_glMatrixMode_1 (this p1)))
(defmethod jm_glMatrixMode_1 ((this NullGL10) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMultMatrixf_2) (defgeneric jm_glMultMatrixf_2 (this p1 p2)))
(defmethod jm_glMultMatrixf_2 ((this NullGL10) _m _offset)
  (declare (ignorable this _m _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMultMatrixf_1) (defgeneric jm_glMultMatrixf_1 (this p1)))
(defmethod jm_glMultMatrixf_1 ((this NullGL10) _m)
  (declare (ignorable this _m))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glMultiTexCoord4f_5) (defgeneric jm_glMultiTexCoord4f_5 (this p1 p2 p3 p4 p5)))
(defmethod jm_glMultiTexCoord4f_5 ((this NullGL10) _target _s _t _r _q)
  (declare (ignorable this _target _s _t _r _q))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glNormal3f_3) (defgeneric jm_glNormal3f_3 (this p1 p2 p3)))
(defmethod jm_glNormal3f_3 ((this NullGL10) _nx _ny _nz)
  (declare (ignorable this _nx _ny _nz))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glNormalPointer_3) (defgeneric jm_glNormalPointer_3 (this p1 p2 p3)))
(defmethod jm_glNormalPointer_3 ((this NullGL10) _type _stride _pointer)
  (declare (ignorable this _type _stride _pointer))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glOrthof_6) (defgeneric jm_glOrthof_6 (this p1 p2 p3 p4 p5 p6)))
(defmethod jm_glOrthof_6 ((this NullGL10) _left _right _bottom _top _zNear _zFar)
  (declare (ignorable this _left _right _bottom _top _zNear _zFar))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPixelStorei_2) (defgeneric jm_glPixelStorei_2 (this p1 p2)))
(defmethod jm_glPixelStorei_2 ((this NullGL10) _pname _param)
  (declare (ignorable this _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPointSize_1) (defgeneric jm_glPointSize_1 (this p1)))
(defmethod jm_glPointSize_1 ((this NullGL10) _size)
  (declare (ignorable this _size))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPolygonOffset_2) (defgeneric jm_glPolygonOffset_2 (this p1 p2)))
(defmethod jm_glPolygonOffset_2 ((this NullGL10) _factor _units)
  (declare (ignorable this _factor _units))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPopMatrix_0) (defgeneric jm_glPopMatrix_0 (this)))
(defmethod jm_glPopMatrix_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPushMatrix_0) (defgeneric jm_glPushMatrix_0 (this)))
(defmethod jm_glPushMatrix_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glReadPixels_7) (defgeneric jm_glReadPixels_7 (this p1 p2 p3 p4 p5 p6 p7)))
(defmethod jm_glReadPixels_7 ((this NullGL10) _x _y _width _height _format _type _pixels)
  (declare (ignorable this _x _y _width _height _format _type _pixels))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glRotatef_4) (defgeneric jm_glRotatef_4 (this p1 p2 p3 p4)))
(defmethod jm_glRotatef_4 ((this NullGL10) _angle _x _y _z)
  (declare (ignorable this _angle _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glRotatex_4) (defgeneric jm_glRotatex_4 (this p1 p2 p3 p4)))
(defmethod jm_glRotatex_4 ((this NullGL10) _angle _x _y _z)
  (declare (ignorable this _angle _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glSampleCoverage_2) (defgeneric jm_glSampleCoverage_2 (this p1 p2)))
(defmethod jm_glSampleCoverage_2 ((this NullGL10) _value _invert)
  (declare (ignorable this _value _invert))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glScalef_3) (defgeneric jm_glScalef_3 (this p1 p2 p3)))
(defmethod jm_glScalef_3 ((this NullGL10) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glScalex_3) (defgeneric jm_glScalex_3 (this p1 p2 p3)))
(defmethod jm_glScalex_3 ((this NullGL10) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glScissor_4) (defgeneric jm_glScissor_4 (this p1 p2 p3 p4)))
(defmethod jm_glScissor_4 ((this NullGL10) _x _y _width _height)
  (declare (ignorable this _x _y _width _height))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glShadeModel_1) (defgeneric jm_glShadeModel_1 (this p1)))
(defmethod jm_glShadeModel_1 ((this NullGL10) _mode)
  (declare (ignorable this _mode))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glStencilFunc_3) (defgeneric jm_glStencilFunc_3 (this p1 p2 p3)))
(defmethod jm_glStencilFunc_3 ((this NullGL10) _func _ref _mask)
  (declare (ignorable this _func _ref _mask))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glStencilMask_1) (defgeneric jm_glStencilMask_1 (this p1)))
(defmethod jm_glStencilMask_1 ((this NullGL10) _mask)
  (declare (ignorable this _mask))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glStencilOp_3) (defgeneric jm_glStencilOp_3 (this p1 p2 p3)))
(defmethod jm_glStencilOp_3 ((this NullGL10) _fail _zfail _zpass)
  (declare (ignorable this _fail _zfail _zpass))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexCoordPointer_4) (defgeneric jm_glTexCoordPointer_4 (this p1 p2 p3 p4)))
(defmethod jm_glTexCoordPointer_4 ((this NullGL10) _size _type _stride _pointer)
  (declare (ignorable this _size _type _stride _pointer))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexEnvf_3) (defgeneric jm_glTexEnvf_3 (this p1 p2 p3)))
(defmethod jm_glTexEnvf_3 ((this NullGL10) _target _pname _param)
  (declare (ignorable this _target _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexEnvfv_4) (defgeneric jm_glTexEnvfv_4 (this p1 p2 p3 p4)))
(defmethod jm_glTexEnvfv_4 ((this NullGL10) _target _pname _params _offset)
  (declare (ignorable this _target _pname _params _offset))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexEnvfv_3) (defgeneric jm_glTexEnvfv_3 (this p1 p2 p3)))
(defmethod jm_glTexEnvfv_3 ((this NullGL10) _target _pname _params)
  (declare (ignorable this _target _pname _params))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexImage2D_9) (defgeneric jm_glTexImage2D_9 (this p1 p2 p3 p4 p5 p6 p7 p8 p9)))
(defmethod jm_glTexImage2D_9 ((this NullGL10) _target _level _internalformat _width _height _border _format _type _pixels)
  (declare (ignorable this _target _level _internalformat _width _height _border _format _type _pixels))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexParameterf_3) (defgeneric jm_glTexParameterf_3 (this p1 p2 p3)))
(defmethod jm_glTexParameterf_3 ((this NullGL10) _target _pname _param)
  (declare (ignorable this _target _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexParameteri_3) (defgeneric jm_glTexParameteri_3 (this p1 p2 p3)))
(defmethod jm_glTexParameteri_3 ((this NullGL10) _target _pname _param)
  (declare (ignorable this _target _pname _param))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTexSubImage2D_9) (defgeneric jm_glTexSubImage2D_9 (this p1 p2 p3 p4 p5 p6 p7 p8 p9)))
(defmethod jm_glTexSubImage2D_9 ((this NullGL10) _target _level _xoffset _yoffset _width _height _format _type _pixels)
  (declare (ignorable this _target _level _xoffset _yoffset _width _height _format _type _pixels))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glTranslatef_3) (defgeneric jm_glTranslatef_3 (this p1 p2 p3)))
(defmethod jm_glTranslatef_3 ((this NullGL10) _x _y _z)
  (declare (ignorable this _x _y _z))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glVertexPointer_4) (defgeneric jm_glVertexPointer_4 (this p1 p2 p3 p4)))
(defmethod jm_glVertexPointer_4 ((this NullGL10) _size _type _stride _pointer)
  (declare (ignorable this _size _type _stride _pointer))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glViewport_4) (defgeneric jm_glViewport_4 (this p1 p2 p3 p4)))
(defmethod jm_glViewport_4 ((this NullGL10) _x _y _width _height)
  (declare (ignorable this _x _y _width _height))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glBegin_1) (defgeneric jm_glBegin_1 (this p1)))
(defmethod jm_glBegin_1 ((this NullGL10) _i)
  (declare (ignorable this _i))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glEnd_0) (defgeneric jm_glEnd_0 (this)))
(defmethod jm_glEnd_0 ((this NullGL10))
  (declare (ignorable this))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glVertex3f_3) (defgeneric jm_glVertex3f_3 (this p1 p2 p3)))
(defmethod jm_glVertex3f_3 ((this NullGL10) _f _f2 _f3)
  (declare (ignorable this _f _f2 _f3))
  (let ()
    (block jreturn
        (return-from jreturn))))

    
(unless (fboundp 'jm_glPolygonMode_2) (defgeneric jm_glPolygonMode_2 (this p1 p2)))
(defmethod jm_glPolygonMode_2 ((this NullGL10) _i _i1)
  (declare (ignorable this _i _i1))
  (let ()
    (block jreturn
        (return-from jreturn))))



