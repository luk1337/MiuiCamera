.class public Lcom/android/camera/SwitchAnimManager;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mExtScale:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveBack:Z

.field private mNewPreview:Z

.field private mPreviewFrameLayoutWidth:I

.field private mRealFirst:Z

.field private mRecurBlur:Z

.field private mReviewDrawingHeight:I

.field private mReviewDrawingWidth:I

.field private mReviewDrawingX:I

.field private mReviewDrawingY:I

.field private mSwitchState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mSwitchState:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    .line 54
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    return-void
.end method

.method private drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "fraction"    # F

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p6, p1}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 146
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 147
    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p7

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/GLCanvasState;->setBlendAlpha(F)V

    .line 150
    :cond_1
    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    iget v3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    .line 151
    iget v4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    iget v5, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    move-object v0, p6

    move-object v1, p1

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 152
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 142
    return-void
.end method

.method private drawRealTimeTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "fraction"    # F

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 136
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 138
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 133
    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    .line 97
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 213
    invoke-virtual/range {p0 .. p7}, Lcom/android/camera/SwitchAnimManager;->drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    return v0
.end method

.method public drawAnimationBlend(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 12
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p7, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 112
    const/4 v8, 0x1

    .line 113
    .local v8, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    sub-long v10, v0, v2

    .line 114
    .local v10, "timeDiff":J
    long-to-float v0, v10

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 115
    const/4 v8, 0x0

    .line 116
    const-wide/16 v10, 0xc8

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v1, v10

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 120
    .local v7, "fraction":F
    if-nez v8, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 125
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawRealTimeTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 127
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;F)V

    .line 129
    return v8
.end method

.method public drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z
    .locals 13
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 190
    int-to-float v1, p2

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v8, v1, v2

    .line 191
    .local v8, "centerX":F
    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float v9, v1, v2

    .line 192
    .local v9, "centerY":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 193
    .local v12, "scaleRatio":F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    if-eqz v1, :cond_0

    .line 194
    move/from16 v0, p4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 198
    :goto_0
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v1, v1

    mul-float v11, v1, v12

    .line 199
    .local v11, "reviewWidth":F
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 200
    .local v10, "reviewHeight":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    sub-float v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 201
    .local v3, "reviewX":I
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 204
    .local v4, "reviewY":I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v7

    .line 205
    .local v7, "alpha":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 206
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/RawTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 207
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 208
    const/4 v1, 0x1

    return v1

    .line 196
    .end local v3    # "reviewX":I
    .end local v4    # "reviewY":I
    .end local v7    # "alpha":F
    .end local v10    # "reviewHeight":F
    .end local v11    # "reviewWidth":F
    :cond_0
    const-string/jumbo v1, "SwitchAnimManager"

    const-string/jumbo v2, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtScaleX()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return v0
.end method

.method public getExtScaleY()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/camera/SwitchAnimManager;->mExtScale:F

    return v0
.end method

.method public restartPreview()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    .line 224
    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mPreviewFrameLayoutWidth:I

    .line 87
    return-void
.end method

.method public setReviewDrawingSize(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingX:I

    .line 75
    iput p2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingY:I

    .line 76
    iput p3, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    .line 77
    iput p4, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    .line 78
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/SwitchAnimManager;->mMoveBack:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mNewPreview:Z

    .line 80
    iget v1, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/SwitchAnimManager;->mReviewDrawingWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 81
    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 80
    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    .line 81
    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    .line 80
    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRealFirst:Z

    .line 73
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    .line 92
    return-void
.end method

.method public startResume()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/SwitchAnimManager;->mAnimStartTime:J

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SwitchAnimManager;->mRecurBlur:Z

    .line 102
    return-void
.end method
