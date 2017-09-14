.class public Lcom/android/camera/ui/V6EdgeShutterView;
.super Landroid/view/View;
.source "V6EdgeShutterView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EdgeShutterView$1;,
        Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;,
        Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I

.field private static final NEAR_THRESHOLD:I

.field private static NORMAL_TAP_MAXY:I

.field private static NORMAL_TOUCH_MAXY:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final OUT_RADIUS:I

.field private static final VIEW_WIDTH:I


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mClickAnim:Landroid/animation/ValueAnimator;

.field private mFlyOutAnim:Landroid/animation/ValueAnimator;

.field private mFlyinInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mPressInterpolator:Landroid/view/animation/Interpolator;

.field private mVisableBount:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/V6EdgeShutterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->checkPosture()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6EdgeShutterView;I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const v0, 0x4285570a    # 66.67f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    .line 54
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0b0092

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    .line 56
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const v1, 0x7f0b0093

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    .line 58
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    const v1, 0x7f0b0094

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    .line 60
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const-string/jumbo v1, "camera_edge_max"

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    .line 61
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v0, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EdgeShutterView$1;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisableBount:Landroid/graphics/Rect;

    .line 109
    return-void
.end method

.method private checkPosture()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v0

    .line 396
    .local v0, "posture":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-eqz v1, :cond_2

    .line 399
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    .line 394
    :cond_1
    return-void

    .line 397
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-eqz v1, :cond_0

    .line 398
    :cond_3
    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    if-le v1, v2, :cond_1

    goto :goto_0
.end method

.method private createFlyOutAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .prologue
    .line 346
    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_0

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "startX":I
    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    neg-int v1, v3

    .line 353
    .local v1, "endX":I
    :goto_0
    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float v5, v2

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v1

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 354
    .local v0, "animFlyOut":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 356
    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    return-object v0

    .line 350
    .end local v0    # "animFlyOut":Landroid/animation/ValueAnimator;
    .end local v1    # "endX":I
    .end local v2    # "startX":I
    :cond_0
    const/4 v2, 0x0

    .line 351
    .restart local v2    # "startX":I
    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    .restart local v1    # "endX":I
    goto :goto_0
.end method

.method private hideShutterView()V
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->createFlyOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    .line 386
    :cond_0
    return-void
.end method

.method private setRelateVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    const/16 v1, 0x8

    .line 431
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 432
    .local v0, "viewGroup":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1

    .line 433
    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 430
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 376
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    .line 377
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setY(F)V

    .line 374
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 135
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 121
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    const v1, -0xfc0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    const v1, -0x6f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public onDeviceMoving()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    return-void
.end method

.method public onDevicePostureChanged()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 262
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 256
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setMeasuredDimension(II)V

    .line 255
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 115
    return-void
.end method
