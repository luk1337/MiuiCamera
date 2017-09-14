.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"


# instance fields
.field private mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mEffectIndex:I

.field private mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

.field private mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

.field private mIgnoreTimes:I

.field private mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

.field private mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mTexMatrix:[F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 18
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    .line 33
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 34
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 36
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 37
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    .line 31
    return-void
.end method

.method private drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 8
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getBlurAnimationValue()I

    move-result v6

    .line 80
    .local v6, "alpha":I
    if-lez v6, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    move-object v2, p1

    .line 82
    check-cast v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget v2, v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    int-to-float v3, v2

    .line 83
    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .end local p1    # "attri":Lcom/android/camera/effect/draw_mode/DrawAttribute;
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    int-to-float v4, v2

    .line 84
    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move v2, v1

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {v7, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 77
    :cond_0
    return-void
.end method

.method private drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 12
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v8, -0x41000000    # -0.5f

    const/4 v7, 0x0

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 90
    .local v0, "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    if-lez v4, :cond_1

    .line 97
    iget v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    .line 98
    return-void

    .line 92
    :cond_0
    iput v7, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    .line 93
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v4}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    if-nez v4, :cond_2

    .line 102
    return-void

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 107
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    if-nez v4, :cond_3

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    .local v1, "scale":F
    iget v4, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    mul-int/lit8 v4, v4, 0x9

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    mul-int/lit8 v5, v5, 0x10

    if-ne v4, v5, :cond_5

    .line 110
    const/high16 v1, 0x3f100000    # 0.5625f

    .line 114
    :goto_0
    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    .line 120
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v10, v10, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 121
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v11, v1, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 122
    iget-object v4, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-static {v4, v7, v8, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 125
    .end local v1    # "scale":F
    :cond_3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, "last":J
    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawEffectTexture()V

    .line 128
    const-string/jumbo v4, "EffectRenderGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Camera preview drawEffectTexture time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 128
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "last":J
    :cond_4
    return-void

    .line 112
    .restart local v1    # "scale":F
    :cond_5
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    .line 114
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawEffectTexture()V
    .locals 20

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 135
    .local v14, "last":J
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayStartIndex()I

    move-result v17

    .line 136
    .local v17, "start":I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayEndIndex()I

    move-result v10

    .line 137
    .local v10, "end":I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;

    move-result-object v16

    .line 138
    .local v16, "position":Lcom/android/camera/effect/EffectController$SurfacePosition;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mWidth:I

    .line 139
    .local v6, "surfaceWidth":I
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mHonSpace:I

    .line 140
    .local v12, "honSpace":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mVerSpace:I

    move/from16 v18, v0

    .line 141
    .local v18, "verSpace":I
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mIsRtl:Z

    if-eqz v2, :cond_0

    const/4 v11, -0x1

    .line 143
    .local v11, "factor":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    .line 145
    move/from16 v13, v17

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    .line 147
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartX:I

    sub-int v5, v13, v17

    sget v7, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    rem-int/2addr v5, v7

    .line 148
    add-int v7, v6, v12

    .line 147
    mul-int/2addr v5, v7

    mul-int/2addr v5, v11

    add-int/2addr v4, v5

    .line 149
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/camera/effect/EffectController$SurfacePosition;->mStartY:I

    sub-int v7, v13, v17

    sget v19, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    div-int v7, v7, v19

    .line 150
    add-int v19, v6, v18

    .line 149
    mul-int v7, v7, v19

    add-int/2addr v5, v7

    move v7, v6

    .line 146
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 153
    if-nez v13, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 145
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 141
    .end local v11    # "factor":I
    .end local v13    # "i":I
    :cond_0
    const/4 v11, 0x1

    .restart local v11    # "factor":I
    goto :goto_0

    .line 156
    .restart local v13    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v2, v13}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTextureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_2

    .line 159
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v14

    .line 160
    .local v8, "cost":J
    const-wide/16 v2, 0x64

    cmp-long v2, v8, v2

    if-lez v2, :cond_3

    .line 161
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIgnoreTimes:I

    .line 133
    :cond_3
    return-void
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 55
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 60
    new-instance v1, Lcom/android/camera/effect/renders/NoneEffectRender;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v1, v2}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    .line 61
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 63
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setViewportSize(II)V

    .line 64
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setPreviewSize(II)V

    :cond_1
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 68
    .local v0, "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    invoke-direct {p0, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->getPreviewSecondRender(Z)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setUsedMiddleBuffer(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 72
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawAnimationMask(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 74
    const/4 v1, 0x1

    return v1
.end method

.method private getPreviewSecondRender(Z)Lcom/android/camera/effect/renders/Render;
    .locals 4
    .param p1, "isEffectPopup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "second":Lcom/android/camera/effect/renders/Render;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 182
    .end local v0    # "second":Lcom/android/camera/effect/renders/Render;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isNeedDrawPeaking()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_6

    .line 183
    :cond_2
    return-object v0

    .line 169
    .restart local v0    # "second":Lcom/android/camera/effect/renders/Render;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    if-eqz v1, :cond_0

    .line 171
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    if-nez v1, :cond_5

    .line 172
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    .local v0, "second":Lcom/android/camera/effect/renders/Render;
    goto :goto_0

    .local v0, "second":Lcom/android/camera/effect/renders/Render;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    .line 176
    .local v0, "second":Lcom/android/camera/effect/renders/Render;
    if-nez v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 178
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_0

    .line 185
    .end local v0    # "second":Lcom/android/camera/effect/renders/Render;
    :cond_6
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    if-nez v1, :cond_7

    .line 186
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    sget v2, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    invoke-interface {v1, v3, v2}, Lcom/android/gallery3d/ui/GLCanvas;->prepareEffectRenders(ZI)V

    .line 187
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    sget v2, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    .line 189
    :cond_7
    if-nez v0, :cond_8

    .line 190
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    return-object v1

    .line 192
    :cond_8
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFocusPeakingRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 193
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPeakRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    return-object v1
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 3
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    .line 43
    .local v0, "oldIndex":I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    .line 44
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->prepareCopyBlurTexture()V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    const/4 v1, 0x0

    return v1

    .line 49
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v1

    return v1

    .line 47
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    .line 208
    return-void
.end method
