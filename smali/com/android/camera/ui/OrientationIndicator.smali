.class public Lcom/android/camera/ui/OrientationIndicator;
.super Landroid/view/View;
.source "OrientationIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I


# instance fields
.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorPath:Landroid/graphics/Path;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    .line 17
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    .line 18
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    .line 19
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private getIndicatorPath()V
    .locals 5

    .prologue
    .line 44
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    .line 46
    sget v2, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    neg-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 47
    .local v0, "leftx":I
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_DIS:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 49
    .local v1, "lefty":I
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    sget v3, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-float v3, v3

    sget v4, Lcom/android/camera/ui/OrientationIndicator;->TRIANGLE_BASE_HEIGHT:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    .end local v0    # "leftx":I
    .end local v1    # "lefty":I
    :cond_0
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 112
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/OrientationIndicator;->getIndicatorPath()V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/OrientationIndicator;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 64
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/OrientationIndicator;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/OrientationIndicator;->updateVisible(Z)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 121
    return-void
.end method

.method public updateVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 74
    iget-boolean v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eq v2, p1, :cond_2

    .line 75
    iput-boolean p1, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "r":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/OrientationIndicator;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/OrientationIndicator;->setAlpha(F)V

    .line 90
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/OrientationIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/OrientationIndicator;->mVisible:Z

    if-eqz v3, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    :cond_2
    return-void

    .line 83
    .restart local v0    # "r":Ljava/lang/Runnable;
    :cond_3
    new-instance v0, Lcom/android/camera/ui/OrientationIndicator$1;

    .end local v0    # "r":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/android/camera/ui/OrientationIndicator$1;-><init>(Lcom/android/camera/ui/OrientationIndicator;)V

    .local v0, "r":Ljava/lang/Runnable;
    goto :goto_0
.end method
