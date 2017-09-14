.class public Lcom/android/camera/effect/renders/FishEyeEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "FishEyeEffectRender.java"


# instance fields
.field private mF:F

.field private mInvMaxDist:F

.field private mUniformFH:I

.field private mUniformInvMaxDistH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "precision highp float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform vec2 uStep; \nuniform float uInvMaxDist; \nuniform float uF; \nuniform float uAlpha; \nvec3 fisheye() { \n    const float slope = 20.0;               // vignette slope  \n    const float shade = 0.85;               // vignette shading  \n    const float range = 0.6;               // 0.6 - 1.3 \n    const float zoom = 0.3;               // smaller zoom means bigger image \n    vec2 coord = (vTexCoord - 0.5) / uStep; // convert to world coordinate  \n    float dist = length(coord); // distance to the center \n    float lumen = shade / (1.0 + exp((dist * uInvMaxDist - range) * slope)) + (1.0 - shade); \n    float t = zoom*dist/uF; \n    float theta = asin(t)*2.0; \n    float r = uF * tan(theta); \n    float angle = atan(coord.y, coord.x); \n    vec2 newCoord = vec2(cos(angle), sin(angle))*uStep*r+0.5; \n    return texture2D(sTexture, newCoord).rgb;  \n   // return texture2D(sTexture, newCoord).rgb * lumen; \n} \nvoid main() { \n    gl_FragColor.rgb = fisheye(); \n    gl_FragColor.a = 1.0; \n    gl_FragColor = gl_FragColor*uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 28
    iget v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mProgram:I

    const-string/jumbo v1, "uF"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mUniformFH:I

    .line 29
    iget v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mProgram:I

    const-string/jumbo v1, "uInvMaxDist"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mUniformInvMaxDistH:I

    .line 26
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 58
    iget v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mUniformFH:I

    iget v1, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mF:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 59
    iget v0, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mUniformInvMaxDistH:I

    iget v1, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mInvMaxDist:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 56
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v8, 0x40200000    # 2.5f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x420c0000    # 35.0f

    .line 34
    iput p1, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    .line 35
    iput p2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    .line 36
    if-le p1, p2, :cond_0

    move v1, p2

    .line 37
    .local v1, "d":I
    :goto_0
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    iget v3, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    iget v4, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 38
    .local v0, "L":F
    const/16 v2, 0x438

    if-le v1, v2, :cond_1

    .line 39
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    div-float v2, v8, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepX:F

    .line 40
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    int-to-float v2, v2

    div-float v2, v8, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepY:F

    .line 41
    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mF:F

    .line 52
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mInvMaxDist:F

    .line 33
    return-void

    .line 36
    .end local v0    # "L":F
    .end local v1    # "d":I
    :cond_0
    move v1, p1

    .restart local v1    # "d":I
    goto :goto_0

    .line 42
    .restart local v0    # "L":F
    :cond_1
    const/16 v2, 0x2d0

    if-le v1, v2, :cond_2

    .line 43
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepX:F

    .line 44
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepY:F

    .line 45
    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mF:F

    goto :goto_1

    .line 47
    :cond_2
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewWidth:I

    int-to-float v2, v2

    div-float v2, v6, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepX:F

    .line 48
    iget v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mPreviewHeight:I

    int-to-float v2, v2

    div-float v2, v6, v2

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mStepY:F

    .line 49
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    div-float/2addr v2, v5

    iput v2, p0, Lcom/android/camera/effect/renders/FishEyeEffectRender;->mF:F

    goto :goto_1
.end method
