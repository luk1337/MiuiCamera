.class public abstract Lcom/android/camera/effect/renders/Render;
.super Ljava/lang/Object;
.source "Render.java"


# instance fields
.field protected mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field protected mId:I

.field protected mJpegOrientation:I

.field protected mMirror:Z

.field protected mOldViewportHeight:I

.field protected mOldViewportWidth:I

.field protected mOrientation:I

.field protected mParentFrameBufferId:I

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mShootRotation:F

.field protected mSnapshotOriginHeight:I

.field protected mSnapshotOriginWidth:I

.field protected mViewportHeight:I

.field protected mViewportWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 27
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 32
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 34
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 31
    return-void
.end method


# virtual methods
.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return v0
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .prologue
    .line 87
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    .line 55
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/Render;->mMirror:Z

    .line 63
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    .line 51
    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 77
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    .line 48
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    .line 46
    return-void
.end method

.method public setShootRotation(F)V
    .locals 0
    .param p1, "shootRotation"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mShootRotation:F

    .line 59
    return-void
.end method

.method public setSnapshotSize(II)V
    .locals 0
    .param p1, "snapshotWidth"    # I
    .param p2, "snapshotHeight"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginWidth:I

    .line 69
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mSnapshotOriginHeight:I

    .line 67
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    .line 39
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    .line 40
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    if-nez v0, :cond_0

    .line 41
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    .line 42
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    .line 37
    :cond_0
    return-void
.end method

.method protected updateViewport()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/camera/effect/GLCanvasState;->ortho(FFFF)V

    .line 72
    return-void
.end method
