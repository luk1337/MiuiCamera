.class public Lcom/android/camera/ui/RotateTextView;
.super Lcom/android/camera/ui/TwoStateTextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 16
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 17
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 21
    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 22
    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 16
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 17
    iput v0, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 21
    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 22
    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 81
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iget v13, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-eq v12, v13, :cond_1

    .line 86
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "time":J
    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_4

    .line 88
    iget-wide v12, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    sub-long v12, v8, v12

    long-to-int v2, v12

    .line 89
    .local v2, "deltaTime":I
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 90
    iget-boolean v13, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    if-eqz v13, :cond_2

    .line 89
    .end local v2    # "deltaTime":I
    :goto_0
    mul-int/lit16 v13, v2, 0x10e

    div-int/lit16 v13, v13, 0x3e8

    add-int v1, v12, v13

    .line 91
    .local v1, "degree":I
    if-ltz v1, :cond_3

    rem-int/lit16 v1, v1, 0x168

    .line 92
    :goto_1
    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->invalidate()V

    .line 99
    .end local v1    # "degree":I
    .end local v8    # "time":J
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 101
    .local v6, "saveCount":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingLeft()I

    move-result v4

    .line 102
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingTop()I

    move-result v10

    .line 103
    .local v10, "top":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingRight()I

    move-result v5

    .line 104
    .local v5, "right":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getPaddingBottom()I

    move-result v0

    .line 105
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getWidth()I

    move-result v12

    sub-int/2addr v12, v4

    sub-int v11, v12, v5

    .line 106
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v10

    sub-int v3, v12, v0

    .line 107
    .local v3, "height":I
    div-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v4

    int-to-float v12, v12

    div-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getWidth()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getHeight()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-super {p0, p1}, Lcom/android/camera/ui/TwoStateTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 79
    return-void

    .line 90
    .end local v0    # "bottom":I
    .end local v3    # "height":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "saveCount":I
    .end local v10    # "top":I
    .end local v11    # "width":I
    .restart local v2    # "deltaTime":I
    .restart local v8    # "time":J
    :cond_2
    neg-int v2, v2

    goto :goto_0

    .line 91
    .end local v2    # "deltaTime":I
    .restart local v1    # "degree":I
    :cond_3
    rem-int/lit16 v12, v1, 0x168

    add-int/lit16 v1, v12, 0x168

    goto :goto_1

    .line 95
    .end local v1    # "degree":I
    :cond_4
    iget v12, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v12, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/TwoStateTextView;->onMeasure(II)V

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getMeasuredWidth()I

    move-result v2

    .line 71
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->getMeasuredHeight()I

    move-result v0

    .line 72
    .local v0, "h":I
    if-eq v2, v0, :cond_0

    .line 73
    if-le v2, v0, :cond_1

    move v1, v2

    .line 74
    .local v1, "size":I
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/RotateTextView;->setMeasuredDimension(II)V

    .line 67
    .end local v1    # "size":I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 73
    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 38
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 39
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v2, :cond_1

    return-void

    .line 38
    :cond_0
    rem-int/lit16 v2, p1, 0x168

    add-int/lit16 p1, v2, 0x168

    goto :goto_0

    .line 40
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    .line 41
    if-eqz p2, :cond_5

    .line 42
    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v2, p0, Lcom/android/camera/ui/RotateTextView;->mStartDegree:I

    .line 43
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 45
    iget v2, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iget v3, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v2, v3

    .line 46
    .local v0, "diff":I
    if-ltz v0, :cond_4

    .line 50
    :goto_1
    const/16 v2, 0xb4

    if-le v0, v2, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 52
    :cond_2
    if-ltz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/ui/RotateTextView;->mClockwise:Z

    .line 53
    iget-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 54
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x10e

    int-to-long v4, v1

    .line 53
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 58
    .end local v0    # "diff":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/RotateTextView;->invalidate()V

    .line 37
    return-void

    .line 46
    .restart local v0    # "diff":I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 56
    .end local v0    # "diff":I
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/RotateTextView;->mTargetDegree:I

    iput v1, p0, Lcom/android/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_2
.end method
