.class public Lcom/android/camera/ui/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenView$ArrowIndicator;,
        Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;,
        Lcom/android/camera/ui/ScreenView$Indicator;,
        Lcom/android/camera/ui/ScreenView$SavedState;,
        Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;,
        Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;,
        Lcom/android/camera/ui/ScreenView$SeekBarIndicator;,
        Lcom/android/camera/ui/ScreenView$SlideBar;
    }
.end annotation


# static fields
.field protected static final INDICATOR_MEASURE_SPEC:I

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field private isFromcomputeScroll:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ScreenView;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ScreenView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ScreenView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 42
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 41
    sput v0, Lcom/android/camera/ui/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 45
    sput-object v0, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double v0, v2, v0

    double-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020112

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 77
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 82
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 85
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 86
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 129
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 131
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 151
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1480
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 310
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020112

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 77
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 82
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 85
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 86
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 129
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 131
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 151
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1480
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 330
    return-void
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1398
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1399
    .local v0, "seekPoint":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1400
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1401
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1403
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setClipToPadding(Z)V

    .line 341
    new-instance v1, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lcom/android/camera/ui/ScreenView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    .line 342
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 343
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 345
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 346
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setMaximumSnapVelocity(I)V

    .line 349
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 338
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1032
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1029
    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

    .prologue
    .line 737
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    .line 738
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 739
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 740
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    .line 739
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    .line 736
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 743
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    .line 742
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1025
    .local v0, "dx":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1026
    .local v1, "dy":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private snapByVelocity(I)V
    .locals 9
    .param p1, "pointerId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1129
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1130
    :cond_0
    return-void

    .line 1133
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v4

    float-to-int v2, v4

    .line 1134
    .local v2, "velocityX":I
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 1135
    .local v0, "flingDirection":I
    if-ne v0, v5, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v4, :cond_2

    .line 1136
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    .line 1128
    :goto_0
    return-void

    .line 1137
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    .line 1138
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1139
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 1140
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1142
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v1, v6, v4

    .line 1143
    .local v1, "snapUnit":I
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    shr-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int v3, v4, v6

    .line 1144
    .local v3, "whichScreen":I
    invoke-virtual {p0, v3, v8, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v1    # "snapUnit":I
    .end local v3    # "whichScreen":I
    :cond_5
    move v4, v5

    .line 1142
    goto :goto_1
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    .line 720
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    .line 721
    if-gtz p1, :cond_1

    .line 722
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    .line 720
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 724
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    .line 725
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    .line 726
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    .line 724
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 718
    :cond_0
    return-void

    .line 723
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 727
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 17
    .param p1, "scrollX"    # I

    .prologue
    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_6

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    .line 626
    .local v4, "indexOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v12

    .line 627
    .local v12, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getHeight()I

    move-result v11

    .line 629
    .local v11, "screenHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_6

    .line 630
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 631
    .local v5, "indicator":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 634
    .local v9, "indicatorWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 636
    .local v6, "indicatorHeight":I
    const/4 v7, 0x0

    .line 637
    .local v7, "indicatorLeft":I
    const/4 v8, 0x0

    .line 639
    .local v8, "indicatorTop":I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 641
    .local v1, "gravity":I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 642
    and-int/lit8 v2, v1, 0x7

    .line 643
    .local v2, "horizontalGravity":I
    and-int/lit8 v13, v1, 0x70

    .line 645
    .local v13, "verticalGravity":I
    packed-switch v2, :pswitch_data_0

    .line 657
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 660
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 672
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 675
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_0
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_3

    .line 677
    :cond_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-le v14, v15, :cond_5

    .line 678
    move/from16 v0, p1

    int-to-float v14, v0

    invoke-virtual {v5, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 629
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 647
    .restart local v2    # "horizontalGravity":I
    .restart local v13    # "verticalGravity":I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 650
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    .line 651
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 650
    add-int/2addr v14, v15

    .line 651
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 650
    sub-int v7, v14, v15

    .line 652
    goto :goto_1

    .line 654
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 655
    goto :goto_1

    .line 662
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 665
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    .line 666
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 665
    add-int/2addr v14, v15

    .line 666
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 665
    sub-int v8, v14, v15

    .line 667
    goto :goto_2

    .line 669
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 670
    goto :goto_2

    .line 676
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 675
    if-nez v14, :cond_1

    .line 683
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-le v14, v15, :cond_4

    .line 684
    const/16 p1, 0x0

    .line 687
    :cond_4
    add-int v14, p1, v7

    .line 689
    add-int v15, p1, v7

    add-int/2addr v15, v9

    .line 690
    add-int v16, v8, v6

    .line 686
    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move-object v14, v5

    .line 679
    check-cast v14, Lcom/android/camera/ui/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lcom/android/camera/ui/ScreenView$Indicator;->fastOffset(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 680
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 623
    .end local v1    # "gravity":I
    .end local v3    # "i":I
    .end local v4    # "indexOffset":I
    .end local v5    # "indicator":Landroid/view/View;
    .end local v6    # "indicatorHeight":I
    .end local v7    # "indicatorLeft":I
    .end local v8    # "indicatorTop":I
    .end local v9    # "indicatorWidth":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    :cond_6
    return-void

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 620
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    .line 605
    return-void

    .line 608
    :pswitch_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 611
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 614
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 617
    :pswitch_3
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 1407
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_2

    .line 1408
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1409
    .local v0, "count":I
    if-gt v0, v4, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 1411
    return-void

    .line 1413
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    if-ge v2, v0, :cond_1

    .line 1414
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_2

    add-int v2, p2, v1

    if-ge v2, v0, :cond_2

    .line 1420
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1406
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .param p1, "scrollX"    # I

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 699
    .local v0, "screenCount":I
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 700
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 702
    .local v2, "slideBarWidth":I
    div-int v5, v2, v0

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    .line 703
    const/16 v6, 0x30

    .line 701
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 705
    .local v3, "slidePointWidth":I
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 707
    .local v1, "screenViewContentWidth":I
    if-gt v1, v2, :cond_1

    .line 708
    const/4 v4, 0x0

    .line 711
    .local v4, "slidePointX":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/ui/ScreenView$SlideBar;->setPosition(II)V

    .line 712
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 713
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->invalidate()V

    .line 696
    .end local v1    # "screenViewContentWidth":I
    .end local v2    # "slideBarWidth":I
    .end local v3    # "slidePointWidth":I
    .end local v4    # "slidePointX":I
    :cond_0
    return-void

    .line 709
    .restart local v1    # "screenViewContentWidth":I
    .restart local v2    # "slideBarWidth":I
    .restart local v3    # "slidePointWidth":I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    .line 710
    sub-int v6, v1, v2

    .line 709
    div-int v4, v5, v6

    .restart local v4    # "slidePointX":I
    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 1304
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    .line 1305
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v4, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1259
    .local v0, "currentCount":I
    if-gez p2, :cond_1

    .line 1260
    move p2, v0

    .line 1266
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1267
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 1274
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 1276
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    return-void

    .line 1263
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    const v6, 0x4e6e6b28    # 1.0E9f

    .line 765
    iput-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 766
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 768
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 769
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollY:I

    .line 770
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    .line 786
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 787
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateSlidePointPosition(I)V

    .line 788
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateArrowIndicatorResource(I)V

    .line 789
    iput-boolean v7, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 764
    return-void

    .line 771
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    if-eq v3, v5, :cond_2

    .line 772
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 773
    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 774
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v3, v4, :cond_0

    .line 775
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float v2, v3, v6

    .line 776
    .local v2, "now":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 777
    .local v1, "e":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 778
    .local v0, "dx":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    .line 779
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 781
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 782
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v2, 0x1

    .line 922
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 923
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_1

    .line 924
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 925
    return v2

    .line 927
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 928
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 929
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 930
    return v2

    .line 933
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 903
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 904
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 1150
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1148
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1247
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1248
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1250
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1199
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 793
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 794
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->computeScroll()V

    .line 792
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    if-eq v3, v2, :cond_1

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1019
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    .line 1020
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_4

    .line 1019
    :cond_2
    :goto_1
    return v0

    .line 975
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 976
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 983
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 984
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 985
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 987
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 988
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    .line 994
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 995
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1004
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1011
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1020
    goto :goto_1

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 874
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ScreenView;->setFrame(IIII)Z

    .line 876
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr p2, v4

    .line 877
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr p4, v4

    .line 879
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 882
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    .line 883
    .local v2, "count":I
    const/4 v1, 0x0

    .line 884
    .local v1, "childLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 885
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 886
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 889
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    .line 890
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 891
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 887
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 892
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 884
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 896
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 897
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 873
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 799
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    .line 800
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    .line 801
    const/4 v8, 0x0

    .line 802
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 804
    .local v9, "maxWidth":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    .line 807
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    .line 808
    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 813
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 812
    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 816
    .local v2, "childWidthMeasureSpec":I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    .line 817
    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 814
    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 819
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 821
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 807
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v6, 0x0

    .line 826
    .local v6, "maxChildHeight":I
    const/4 v7, 0x0

    .line 827
    .local v7, "maxChildWidth":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 828
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 830
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 833
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 832
    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 836
    .restart local v2    # "childWidthMeasureSpec":I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    .line 837
    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 834
    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 839
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 827
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 843
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 844
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 847
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 848
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 851
    invoke-static {v9, p1}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v10

    .line 852
    invoke-static {v8, p2}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v11

    .line 850
    invoke-virtual {p0, v10, v11}, Lcom/android/camera/ui/ScreenView;->setMeasuredDimension(II)V

    .line 854
    if-lez v3, :cond_2

    .line 855
    iput v7, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    .line 856
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 857
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->updateScreenOffset()V

    .line 858
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 859
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    .line 860
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 864
    :cond_2
    iget-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_3

    .line 865
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 866
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 867
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 868
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 798
    :cond_3
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1656
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1659
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1709
    check-cast v0, Lcom/android/camera/ui/ScreenView$SavedState;

    .line 1710
    .local v0, "savedState":Lcom/android/camera/ui/ScreenView$SavedState;
    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1711
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1712
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 1708
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1702
    new-instance v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1703
    .local v0, "state":Lcom/android/camera/ui/ScreenView$SavedState;
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    .line 1704
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1039
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    return v5

    .line 1041
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1045
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 1095
    :cond_2
    :goto_0
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    .line 1096
    return v5

    .line 1050
    :pswitch_1
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1051
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1054
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 1056
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1057
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1058
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1059
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1061
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1062
    .local v4, "x":F
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 1063
    .local v0, "deltaX":F
    iput v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 1065
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_5

    .line 1066
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1068
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->awakenScrollBars()Z

    goto :goto_0

    .line 1074
    .end local v0    # "deltaX":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 1075
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lcom/android/camera/ui/ScreenView;->snapByVelocity(I)V

    .line 1077
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1080
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 1082
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1083
    .local v2, "pointerId":I
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 1087
    if-nez v3, :cond_7

    move v1, v5

    .line 1088
    .local v1, "newPointerIndex":I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 1089
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 1090
    iget-object v6, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_0

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/ScreenView;->removeScreensInLayout(II)V

    .line 1353
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->requestLayout()V

    .line 1354
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1351
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1299
    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1300
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1298
    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1320
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1321
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1324
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    .line 1325
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1318
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 1358
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1361
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1364
    :cond_2
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1365
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1357
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 910
    .local v0, "screen":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 911
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const/4 v1, 0x0

    return v1

    .line 912
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 913
    const/4 v1, 0x1

    return v1

    .line 917
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1482
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1483
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1484
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1485
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1486
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1487
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1488
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1489
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1490
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1491
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1492
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1481
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 757
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 758
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 759
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 760
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 756
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 751
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->measure(II)V

    .line 752
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    .line 747
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .param p1, "screenIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1225
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    .line 1226
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1227
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1232
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 1233
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1235
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->scrollToScreen(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1223
    :cond_1
    return-void

    .line 1229
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1241
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->updateSeekPoints(II)V

    .line 1242
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    .line 1243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1240
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    .line 171
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1391
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1392
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1393
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 732
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 733
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 731
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 419
    if-eqz p1, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;-><init>(Lcom/android/camera/ui/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    .line 422
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 431
    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .param p1, "seekPointResId"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 410
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 941
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 943
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 944
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 945
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 946
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 947
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->recycle()V

    .line 940
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 943
    goto :goto_0

    .line 950
    :cond_2
    if-eqz p1, :cond_3

    .line 951
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 955
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 956
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 960
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 961
    .local v0, "currentScreen":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 964
    .end local v0    # "currentScreen":Landroid/view/View;
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 965
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 966
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 967
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 1154
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    .line 1153
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1158
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    .line 1159
    return-void

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_4

    .line 1163
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1164
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1169
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1170
    .local v7, "screenDelta":I
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1174
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1176
    if-eqz p3, :cond_5

    .line 1177
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1182
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1183
    .local v6, "newX":I
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1184
    .local v3, "delta":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    .line 1185
    .local v5, "duration":I
    if-lez p2, :cond_2

    .line 1186
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    .line 1187
    const v1, 0x3ecccccd    # 0.4f

    .line 1186
    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1190
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1191
    if-gt v7, v8, :cond_3

    .line 1192
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1157
    return-void

    .line 1166
    .end local v3    # "delta":I
    .end local v5    # "duration":I
    .end local v6    # "newX":I
    .end local v7    # "screenDelta":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 1179
    .restart local v7    # "screenDelta":I
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_1
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const v13, 0x459c4000    # 5000.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v12, 0x3e99999a    # 0.3f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1495
    instance-of v9, p1, Lcom/android/camera/ui/ScreenView$Indicator;

    if-eqz v9, :cond_0

    .line 1496
    return-void

    .line 1498
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 1499
    .local v1, "childW":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 1500
    .local v0, "childH":F
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 1501
    .local v4, "halfScreenW":F
    div-float v3, v1, v10

    .line 1502
    .local v3, "halfChildW":F
    div-float v2, v0, v10

    .line 1503
    .local v2, "halfChildH":F
    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    .line 1504
    .local v5, "interpolation":F
    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    .line 1494
    .end local v1    # "childW":F
    :goto_0
    :pswitch_0
    return-void

    .line 1506
    .restart local v1    # "childW":F
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1509
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1512
    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_2

    .line 1513
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1516
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1517
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1518
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1519
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1520
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    .line 1521
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1522
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1523
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1524
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1525
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1526
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1529
    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_4

    .line 1530
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1533
    :cond_4
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1534
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1535
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1536
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1537
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    .line 1538
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1539
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1540
    neg-float v9, v5

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1541
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1542
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1543
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1546
    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    .line 1547
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1550
    :cond_6
    invoke-virtual {p1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 1551
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1552
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1553
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1554
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    .line 1555
    cmpg-float v9, v5, v8

    if-gez v9, :cond_7

    move v1, v8

    .end local v1    # "childW":F
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1556
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1557
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1558
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1559
    const/high16 v8, -0x3d4c0000    # -90.0f

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1560
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1563
    .restart local v1    # "childW":F
    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_9

    .line 1564
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1567
    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1568
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1569
    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1570
    mul-float v9, v12, v5

    add-float v6, v11, v9

    .line 1571
    .local v6, "scale1":F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1572
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1573
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1574
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1575
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1576
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1577
    neg-float v8, v5

    const/high16 v9, 0x42340000    # 45.0f

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1578
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1583
    .end local v6    # "scale1":F
    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_a

    .line 1584
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1587
    :cond_a
    sub-float v9, v11, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1588
    sub-float v9, v11, v5

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    const v10, 0x3f19999a    # 0.6f

    add-float v7, v10, v9

    .line 1589
    .local v7, "scale2":F
    sub-float v9, v11, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1590
    sub-float v9, v11, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1591
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1592
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1593
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1594
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1595
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1596
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1597
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1598
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1601
    .end local v7    # "scale2":F
    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_c

    .line 1602
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1605
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v11, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1606
    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1607
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1608
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1609
    invoke-virtual {p1, v11}, Landroid/view/View;->setScaleY(F)V

    .line 1610
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1611
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1612
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1613
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1614
    neg-float v8, v5

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1615
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1618
    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "interpolation"    # F

    .prologue
    .line 1623
    return-void
.end method
