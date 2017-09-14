.class public Lcom/android/camera/effect/renders/LongFaceEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "LongFaceEffectRender.java"


# instance fields
.field private mUniformDirectionH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 15
    return-void
.end method

.method private getDirection(Z)I
    .locals 4
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 37
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mJpegOrientation:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v3

    sub-int v1, v2, v3

    .line 38
    .local v1, "orientation":I
    :goto_0
    add-int/lit16 v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "direction":I
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mMirror:Z

    if-eqz v2, :cond_0

    .line 41
    add-int/lit16 v2, v1, 0xb4

    rem-int/lit16 v1, v2, 0x168

    .line 43
    :cond_0
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 44
    const/4 v0, 0x3

    .line 52
    :goto_1
    return v0

    .line 37
    .end local v0    # "direction":I
    .end local v1    # "orientation":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    .restart local v0    # "direction":I
    .restart local v1    # "orientation":I
    :cond_2
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    .line 46
    const/4 v0, 0x2

    goto :goto_1

    .line 47
    :cond_3
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    .line 48
    const/4 v0, 0x1

    goto :goto_1

    .line 50
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uDir; \nuniform float uAlpha; \nvec4 longface() { \n    float sgnv; \n    vec2 coord; \n    if (uDir == 0 || uDir == 2) { \n        coord = vec2(vTexCoord[0], vTexCoord[1]); \n    } else { \n        coord = vec2(vTexCoord[1], vTexCoord[0]); \n    } \n    if(coord[1]>0.5) { \n        sgnv = 1.0;  \n    } else { \n        sgnv = -1.0; \n    } \n    float new_radius = sgnv * pow(abs(coord[1]-0.5)*2.0, 1.5)/2.0; \n    vec2 newCoord; \n    if (uDir == 0 || uDir == 2) { \n       newCoord = vec2(coord[0], 0.5 + new_radius); \n    } else { \n       newCoord = vec2(0.5 + new_radius, coord[0]); \n    } \n    if (newCoord.x > 1.0 || newCoord.x < 0.0 || newCoord.y > 1.0 || newCoord.y < 0.0) { \n        return vec4(0.0, 0.0, 0.0, 1.0); \n    } else { \n        return texture2D(sTexture, newCoord); \n    } \n} \nvoid main() { \n    gl_FragColor = vec4(longface().rgb, 1.0) * uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 27
    iget v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mProgram:I

    const-string/jumbo v1, "uDir"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mUniformDirectionH:I

    .line 25
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 33
    iget v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mUniformDirectionH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/LongFaceEffectRender;->getDirection(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 31
    return-void
.end method
