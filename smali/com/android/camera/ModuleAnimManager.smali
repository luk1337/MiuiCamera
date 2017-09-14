.class public Lcom/android/camera/ModuleAnimManager;
.super Ljava/lang/Object;
.source "ModuleAnimManager.java"


# instance fields
.field private mAnimDuration:F

.field private mAnimStartTime:J

.field private mAnimState:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method


# virtual methods
.method public animateStartHide()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    .line 52
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    .line 50
    return-void
.end method

.method public animateStartShow()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    .line 58
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    .line 56
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    .line 74
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z
    .locals 14
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    sub-long v10, v2, v4

    .line 82
    .local v10, "timeDiff":J
    long-to-float v2, v10

    iget v3, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 83
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 84
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    .line 85
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    .line 86
    const/4 v2, 0x0

    return v2

    .line 87
    :cond_0
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 88
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    .line 92
    :cond_1
    const/4 v8, 0x0

    .line 93
    .local v8, "alpha":I
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    long-to-float v2, v10

    iget v3, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    div-float v9, v2, v3

    .line 94
    .local v9, "f":F
    :goto_0
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_1
    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    move/from16 v0, p2

    int-to-float v3, v0

    .line 107
    move/from16 v0, p3

    int-to-float v4, v0

    .line 108
    move/from16 v0, p4

    int-to-float v5, v0

    .line 109
    move/from16 v0, p5

    int-to-float v6, v0

    .line 110
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 106
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 112
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 93
    .end local v9    # "f":F
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "f":F
    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 97
    goto :goto_1

    .line 99
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    const/16 v8, 0xf0

    .line 103
    goto :goto_1

    .line 112
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
