.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/V6FunctionUI;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$1;,
        Lcom/android/camera/ui/FocusView$2;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;
    }
.end annotation


# static fields
.field public static final BIG_INIT_RADIUS:I

.field private static final BIG_LINE_WIDTH:I

.field private static final BIG_MAX_RADIUS:I

.field public static final BIG_RADIUS:I

.field private static final GAP_NUM:F

.field private static final MARGIN:I

.field private static final MAX_SLIDE_DISTANCE:I

.field private static final SMALL_LINE_WIDTH:I

.field private static final SMALL_MAX_RADIUS:I

.field private static final SMALL_MIN_RADIUS:I

.field private static final SMALL_RADIUS:I

.field private static final TRIANGLE_BASE_DIS:I

.field private static final TRIANGLE_BASE_HEIGHT:I

.field private static final TRIANGLE_BASE_LEN:I

.field private static final TRIANGLE_MAX_DIS:I

.field private static final TRIANGLE_MIN_MARGIN:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBigAlpha:I

.field private mBigPaint:Landroid/graphics/Paint;

.field private mBigRadius:I

.field private mBottomRelative:I

.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mCaptureBitmapBounds:Landroid/graphics/Rect;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field mEVCaptureRatio:F

.field private mEvAdjusted:Z

.field private mEvTriangleDis:I

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mFailTime:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMinusMoonPaint:Landroid/graphics/Paint;

.field private mRelativeLocation:[I

.field private mRotation:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mSlideDistance:I

.field private mSlideStartTime:J

.field private mSmallAlpha:I

.field private mSmallLineWidth:I

.field private mSmallPaint:Landroid/graphics/Paint;

.field private mSmallRadius:I

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    return-wide v0
.end method

.method static synthetic -get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/camera/ui/FocusView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    return-wide v0
.end method

.method static synthetic -get23(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get24(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    return-wide v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    return v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FocusView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/FocusView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/FocusView;F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/FocusView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/ui/FocusView;F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 45
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    .line 46
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    .line 47
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    .line 51
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    .line 52
    const v0, 0x422d5c29    # 43.34f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    .line 53
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    .line 55
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    .line 59
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MAX_DIS:I

    .line 84
    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    .line 85
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    .line 86
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MARGIN:I

    .line 87
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    .line 88
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    .line 89
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    .line 90
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 109
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 110
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 111
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 112
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 113
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 114
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 115
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 116
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 117
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 126
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 127
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 131
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 136
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 761
    new-instance v0, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v0, p1

    .line 306
    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 319
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 321
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 339
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 342
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 343
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 344
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 345
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 347
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 350
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 349
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    return-void
.end method

.method private calculateAttribute()V
    .locals 10

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, "ratio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    .line 881
    .local v0, "currentItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    .line 883
    .local v1, "lastItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v3, :pswitch_data_0

    .line 878
    :goto_0
    :pswitch_0
    return-void

    .line 885
    :pswitch_1
    const/4 v2, 0x0

    .line 886
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    .line 887
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    .line 888
    sub-float v3, v6, v1

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 889
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 890
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 891
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 893
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    .line 894
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 895
    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 896
    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 897
    sub-float v3, v6, v2

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    mul-float v4, v5, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 898
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 903
    :pswitch_2
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    .line 904
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    .line 905
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 906
    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 907
    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 908
    mul-float v3, v9, v2

    add-float/2addr v3, v8

    mul-float v4, v5, v1

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 909
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 911
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    .line 912
    sub-float v3, v6, v0

    mul-float/2addr v3, v2

    mul-float/2addr v3, v5

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v3, v4, v3

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 913
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 914
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 915
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 920
    :pswitch_3
    move v2, v0

    .line 921
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 922
    mul-float v3, v5, v0

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 923
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 924
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 925
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 927
    :cond_2
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 928
    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 929
    mul-float v3, v9, v0

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 930
    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 931
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 936
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private clearMessages()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 672
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    return-void
.end method

.method private drawCaptureBitmap(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 971
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 972
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 973
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 970
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 974
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 967
    :cond_0
    return-void
.end method

.method private drawCenterIndicator(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 847
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 848
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_1

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 851
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 867
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 868
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 845
    return-void

    .line 853
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 855
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCaptureBitmap(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 858
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawSun(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 861
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 862
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 863
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    .line 862
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    .line 599
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v4, :cond_1

    .line 600
    :cond_0
    return-void

    .line 603
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 605
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 606
    .local v3, "rtl":Z
    :goto_0
    if-nez v3, :cond_4

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-ge v4, v5, :cond_4

    .line 608
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 613
    .local v0, "leftx":I
    :goto_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 615
    .local v1, "lefty":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 617
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 619
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 621
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 624
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 626
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 628
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 630
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 632
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 634
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 635
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 639
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 598
    return-void

    .line 605
    .end local v0    # "leftx":I
    .end local v1    # "lefty":I
    .end local v3    # "rtl":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 607
    .restart local v3    # "rtl":Z
    :cond_4
    if-eqz v3, :cond_5

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    if-ge v4, v5, :cond_2

    .line 610
    :cond_5
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .restart local v0    # "leftx":I
    goto/16 :goto_1

    .line 637
    .restart local v1    # "lefty":I
    :cond_6
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2
.end method

.method private drawSun(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 979
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 980
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 981
    if-lez v6, :cond_0

    .line 982
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 985
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 987
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 989
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    neg-int v0, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 991
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 980
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 993
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 978
    return-void
.end method

.method private getCurrentAngle()I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v5, 0x168

    const/4 v4, 0x0

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "degree":I
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    .line 945
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 946
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 947
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    .line 949
    :cond_0
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 964
    :cond_1
    :goto_0
    return v0

    .line 950
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 951
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    .line 952
    .local v1, "relativeDis":I
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 953
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 954
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 956
    :cond_3
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_0

    .line 957
    .end local v1    # "relativeDis":I
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_5

    .line 958
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 959
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 960
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 961
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 962
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 665
    .local v0, "interpolation":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 666
    const/high16 v0, 0x3f800000    # 1.0f

    .line 668
    :cond_0
    return v0
.end method

.method private getItemByCoordinate()I
    .locals 4

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    .line 709
    .local v0, "item":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 710
    return v0
.end method

.method private getItemRatio(I)F
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 872
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 873
    .local v0, "itemRatio":F
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    .line 874
    :goto_0
    return v0

    .line 873
    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private initAdapter(II)V
    .locals 6
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v5, 0x0

    .line 361
    if-eqz p2, :cond_0

    if-ne p2, p1, :cond_1

    .line 362
    :cond_0
    return-void

    .line 365
    :cond_1
    new-instance v3, Lcom/android/camera/ui/FloatSlideAdapter;

    .line 366
    sget v2, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 365
    :goto_0
    invoke-direct {v3, p1, p2, v2}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 367
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v2, :cond_3

    .line 368
    return-void

    .line 366
    :cond_2
    sub-int v2, p2, p1

    int-to-float v2, v2

    sget v4, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v2, v4

    goto :goto_0

    .line 371
    :cond_3
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 372
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    .line 373
    .local v0, "evValue":I
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    .line 374
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 375
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 360
    :goto_1
    return-void

    .line 377
    :cond_4
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_1
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 997
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 998
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 999
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1000
    .local v0, "distance":D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isStableStart()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSlideBack()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x6

    .line 714
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v0, :cond_0

    .line 716
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    .line 718
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 719
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 713
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 417
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 418
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 415
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 685
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 686
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 687
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 686
    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 688
    .local v0, "index":I
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 683
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 547
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 548
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 549
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 550
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 551
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 552
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 553
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 555
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 545
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 727
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 728
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 729
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    .line 739
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 740
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 744
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 742
    const v2, 0x7f090088

    .line 743
    const/4 v3, 0x2

    .line 740
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 726
    :cond_0
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 693
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 696
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 692
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    .prologue
    .line 704
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    .line 703
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 839
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 840
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    return-void
.end method

.method private stopEvAdjust()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 750
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v0, :cond_0

    .line 751
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 757
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 754
    const/4 v1, 0x1

    .line 755
    const v2, 0x7f090088

    .line 753
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 749
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    .line 539
    :cond_0
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 445
    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V
    .locals 0
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .param p2, "minAe"    # I
    .param p3, "maxAe"    # I

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 356
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->initAdapter(II)V

    .line 357
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 354
    return-void
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_2

    .line 648
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_0

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 650
    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x7d0

    .line 649
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 647
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 648
    goto :goto_0

    :cond_1
    move v0, v6

    .line 649
    goto :goto_0

    :cond_2
    move v0, v7

    .line 647
    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    .line 573
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 579
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 580
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 581
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 588
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCenterIndicator(Landroid/graphics/Canvas;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 593
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 572
    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 560
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 561
    if-eqz p1, :cond_0

    .line 562
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 563
    sub-int v0, p5, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 564
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 565
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    .line 559
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 441
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 439
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 433
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 382
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 387
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 388
    .local v0, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 389
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_1

    .line 390
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 391
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_5

    .line 397
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v2, :cond_3

    .line 398
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 401
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_4

    .line 402
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 405
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_5

    .line 406
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 407
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 412
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_6
    return v1

    .line 383
    .end local v0    # "oldDown":Z
    :cond_7
    return v4
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 466
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 454
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 460
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 461
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    .line 462
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 459
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 655
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 656
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 653
    return-void
.end method

.method public showFail()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 523
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 525
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 526
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 527
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 528
    if-eqz v0, :cond_0

    .line 531
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 532
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 533
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 522
    .end local v0    # "animating":Z
    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 476
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 477
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 478
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 479
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 480
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 481
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 484
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 486
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 475
    return-void

    .line 490
    :cond_0
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 491
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 492
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 493
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 494
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 496
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 504
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_2

    .line 505
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 506
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 507
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 508
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 509
    if-eqz v0, :cond_0

    .line 512
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 513
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 514
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 503
    .end local v0    # "animating":Z
    :cond_2
    return-void
.end method
