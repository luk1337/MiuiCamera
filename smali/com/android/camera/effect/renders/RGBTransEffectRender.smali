.class public abstract Lcom/android/camera/effect/renders/RGBTransEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "RGBTransEffectRender.java"


# static fields
.field private static final sTextureIds:[I


# instance fields
.field protected mRGBLutId:I

.field protected mRGBLutLoaded:Z

.field protected mUniformRGBLutH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected bindExtraTexture()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindExtraTexture()V

    .line 60
    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    const v1, 0x84c1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->bindTexture(II)Z

    .line 58
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutLoaded:Z

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete RGBTransEffectRender texture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(I)Z

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->finalize()V

    .line 64
    return-void
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 48
    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mProgram:I

    const-string/jumbo v1, "sRGBLut"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mUniformRGBLutH:I

    .line 46
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 54
    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mUniformRGBLutH:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 52
    return-void
.end method

.method public setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V
    .locals 9
    .param p1, "lut"    # Ljava/nio/IntBuffer;

    .prologue
    const/16 v2, 0x1908

    const/high16 v6, 0x46180000    # 9728.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 26
    sget-object v3, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    invoke-static {v4, v3, v1}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 27
    sget-object v3, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    aget v3, v3, v1

    iput v3, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    .line 29
    iget v3, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    const/16 v3, 0x2802

    const v5, 0x812f

    .line 30
    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 33
    const/16 v3, 0x2803

    const v5, 0x812f

    .line 32
    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/16 v3, 0x2801

    .line 34
    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 37
    const/16 v3, 0x2800

    .line 36
    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v3

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p1

    .line 39
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 42
    iput-boolean v4, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutLoaded:Z

    .line 25
    return-void
.end method
