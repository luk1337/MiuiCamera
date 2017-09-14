.class public Lcom/android/camera/effect/renders/MirrorEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "MirrorEffectRender.java"


# instance fields
.field private mUniformDirectionH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 14
    return-void
.end method

.method private getDirection(Z)I
    .locals 3
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 36
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mJpegOrientation:I

    .line 37
    .local v1, "orientation":I
    :goto_0
    const/4 v0, 0x0

    .line 38
    .local v0, "direction":I
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mMirror:Z

    if-eqz v2, :cond_0

    .line 39
    add-int/lit16 v2, v1, 0xb4

    rem-int/lit16 v1, v2, 0x168

    .line 41
    :cond_0
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 42
    const/4 v0, 0x3

    .line 50
    :goto_1
    return v0

    .line 36
    .end local v0    # "direction":I
    .end local v1    # "orientation":I
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v1

    .restart local v1    # "orientation":I
    goto :goto_0

    .line 43
    .restart local v0    # "direction":I
    :cond_2
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    .line 44
    const/4 v0, 0x2

    goto :goto_1

    .line 45
    :cond_3
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 46
    const/4 v0, 0x1

    goto :goto_1

    .line 48
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "precision mediump float;  \nvarying vec2 vTexCoord;  \nuniform sampler2D sTexture;  \nuniform int uDir; \nuniform float uAlpha; \nuniform vec2 uStep;  \nvoid main()               \n{                         \n    if (uDir == 0)    \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s>0.5 ? (1.0-vTexCoord.s) : vTexCoord.s, vTexCoord.t));\n    } \n    else if (uDir == 1)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s, vTexCoord.t<0.5 ? (1.0-vTexCoord.t) : vTexCoord.t));\n    } \n    else if (uDir == 2)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s<0.5 ? (1.0-vTexCoord.s) : vTexCoord.s, vTexCoord.t));\n    } \n    else if (uDir == 3)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s, vTexCoord.t>0.5 ? (1.0-vTexCoord.t) : vTexCoord.t));\n    } \n    gl_FragColor = gl_FragColor*uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 21
    iget v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mProgram:I

    const-string/jumbo v1, "uDir"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mUniformDirectionH:I

    .line 19
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 27
    iget v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mUniformDirectionH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/MirrorEffectRender;->getDirection(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 25
    return-void
.end method
