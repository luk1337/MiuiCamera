.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private mAnimStartTime:J

.field private mAnimType:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateHold()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 70
    return-void
.end method

.method public animateHoldAndSlide()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 78
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 62
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 74
    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z
    .locals 12
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p3, "review"    # Lcom/android/gallery3d/ui/RawTexture;

    .prologue
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v8, v0, v2

    .line 87
    .local v8, "timeDiff":J
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x78

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x8c

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_1
    iget v6, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 91
    .local v6, "animStep":I
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    const-wide/16 v0, 0x14

    cmp-long v0, v8, v0

    if-gez v0, :cond_3

    const/4 v6, 0x2

    .line 93
    :goto_0
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 94
    const-wide/16 v0, 0x14

    sub-long/2addr v8, v0

    .line 98
    :cond_2
    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    .line 99
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 111
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_3
    const/4 v6, 0x3

    goto :goto_0

    .line 100
    :cond_4
    const/4 v0, 0x3

    if-ne v6, v0, :cond_5

    .line 101
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v2, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v3, v1

    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    iget v5, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 102
    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 103
    iget v2, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 104
    iget v3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v3, v3

    .line 105
    iget v4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v4, v4

    .line 106
    const/16 v5, 0xb2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_1

    .line 108
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public startAnimation(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 56
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 57
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 58
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 59
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 53
    return-void
.end method
