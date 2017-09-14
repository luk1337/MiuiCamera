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

.field private mEvTextMargin:I

.field private mEvTriangleDis:I

.field private mEvValue:F

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

    .line 50
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    .line 51
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    .line 52
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MIN_RADIUS:I

    .line 56
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    .line 57
    const v0, 0x422d5c29    # 43.34f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    .line 58
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    .line 60
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    .line 64
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MAX_DIS:I

    .line 89
    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/aosp_porting/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    .line 90
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    .line 91
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MARGIN:I

    .line 92
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_MIN_MARGIN:I

    .line 93
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    .line 94
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    .line 95
    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    sget v1, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 114
    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 115
    const/16 v1, 0x96

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 116
    const/16 v1, 0xb4

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 117
    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 118
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 121
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 122
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 123
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 124
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 133
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 134
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 138
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 143
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    .line 174
    new-instance v1, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 795
    new-instance v1, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v1, p1

    .line 310
    check-cast v1, Lcom/android/camera/Camera;

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 311
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    .line 318
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    new-instance v1, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lcom/android/camera/aosp_porting/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 326
    const v1, 0x1010095

    const v2, 0x1010098

    .line 325
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0x7f100012

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 328
    .local v0, "textStyle":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    .line 329
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 333
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    .line 342
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 347
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 348
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvTextMargin:I

    .line 351
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 352
    sget v1, Lcom/android/camera/Util;->sWindowHeight:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 353
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 354
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 356
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 357
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 359
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 358
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
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

    .line 914
    const/4 v2, 0x0

    .line 915
    .local v2, "ratio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    .line 916
    .local v0, "currentItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v1

    .line 918
    .local v1, "lastItemRatio":F
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v3, :pswitch_data_0

    .line 913
    :goto_0
    :pswitch_0
    return-void

    .line 920
    :pswitch_1
    const/4 v2, 0x0

    .line 921
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    .line 922
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    .line 923
    sub-float v3, v6, v1

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 924
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 925
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 926
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 928
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    .line 929
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 930
    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 931
    mul-float v3, v0, v2

    sub-float v4, v6, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 932
    sub-float v3, v6, v2

    mul-float/2addr v3, v9

    add-float/2addr v3, v8

    mul-float v4, v5, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 933
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 938
    :pswitch_2
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    .line 939
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v2, v5, v3

    .line 940
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 941
    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v5

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 942
    sub-float v3, v6, v2

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, v9

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 943
    mul-float v3, v9, v2

    add-float/2addr v3, v8

    mul-float v4, v5, v1

    sub-float v5, v6, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 944
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 946
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v3, v7

    mul-float v2, v5, v3

    .line 947
    sub-float v3, v6, v0

    mul-float/2addr v3, v2

    mul-float/2addr v3, v5

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v3, v4, v3

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 948
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 949
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    sub-float v4, v6, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 950
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 955
    :pswitch_3
    move v2, v0

    .line 956
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 957
    mul-float v3, v5, v0

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 958
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 959
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 960
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 962
    :cond_2
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 963
    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 964
    mul-float v3, v9, v0

    const/high16 v4, 0x40f00000    # 7.5f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 965
    mul-float v3, v5, v0

    add-float/2addr v3, v8

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 966
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 971
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

    .line 918
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

    .line 704
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    return-void
.end method

.method private drawCaptureBitmap(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1006
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1007
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1008
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmapBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1005
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1009
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1002
    :cond_0
    return-void
.end method

.method private drawCenterIndicator(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 881
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 882
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 883
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_1

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 885
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 886
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 902
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 903
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 880
    return-void

    .line 888
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 890
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCaptureBitmap(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 893
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawSun(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 896
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 897
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 898
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mMinusMoonPaint:Landroid/graphics/Paint;

    .line 897
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 888
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

    .line 631
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v4, :cond_1

    .line 632
    :cond_0
    return-void

    .line 635
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 637
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 638
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

    .line 640
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    sget v5, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->MARGIN:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 645
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

    .line 647
    .local v1, "lefty":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 649
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 651
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 653
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 656
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    sget v6, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 658
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 660
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 662
    sget v4, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_LEN:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    sget v5, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_HEIGHT:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 664
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 666
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 667
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 671
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 630
    return-void

    .line 637
    .end local v0    # "leftx":I
    .end local v1    # "lefty":I
    .end local v3    # "rtl":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 639
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

    .line 642
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

    .line 669
    .restart local v1    # "lefty":I
    :cond_6
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2
.end method

.method private drawEvText(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 617
    iget-boolean v5, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 618
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-eq v5, v11, :cond_0

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-eqz v5, :cond_0

    .line 619
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const-string/jumbo v3, "-"

    .line 620
    .local v3, "symbol":Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v6, "%s %.1f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v10

    iget v8, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "text":Ljava/lang/String;
    const-string/jumbo v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v10

    .line 622
    .local v1, "leftText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 623
    .local v0, "left":F
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 625
    .local v2, "middle":F
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    .line 626
    iget v6, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/FocusView;->mEvTextMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView;->mTextPaint:Landroid/graphics/Paint;

    .line 625
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 616
    .end local v0    # "left":F
    .end local v1    # "leftText":Ljava/lang/String;
    .end local v2    # "middle":F
    .end local v3    # "symbol":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 619
    :cond_1
    const-string/jumbo v3, "+"

    .restart local v3    # "symbol":Ljava/lang/String;
    goto :goto_0
.end method

.method private drawSun(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1015
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 1016
    if-lez v6, :cond_0

    .line 1017
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1020
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

    .line 1022
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

    .line 1024
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

    .line 1026
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

    .line 1015
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1013
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

    .line 978
    const/4 v0, 0x0

    .line 979
    .local v0, "degree":I
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    .line 980
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 981
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 982
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

    .line 984
    :cond_0
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 999
    :cond_1
    :goto_0
    return v0

    .line 985
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 986
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    .line 987
    .local v1, "relativeDis":I
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 988
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 989
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 991
    :cond_3
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_0

    .line 992
    .end local v1    # "relativeDis":I
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_5

    .line 993
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 994
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 995
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 996
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 997
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 697
    .local v0, "interpolation":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 698
    const/high16 v0, 0x3f800000    # 1.0f

    .line 700
    :cond_0
    return v0
.end method

.method private getItemByCoordinate()I
    .locals 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    .line 742
    .local v0, "item":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 743
    return v0
.end method

.method private getItemRatio(I)F
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 907
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 908
    .local v0, "itemRatio":F
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    .line 909
    :goto_0
    return v0

    .line 908
    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 1032
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 1033
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 1034
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1035
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
    .line 692
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

    .line 747
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v0, :cond_0

    .line 749
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSlideDistance:I

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSlideStartTime:J

    .line 751
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 404
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 405
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 402
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 717
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 718
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 719
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 718
    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 720
    .local v0, "index":I
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 721
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 715
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 551
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 552
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 553
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 554
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 555
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 556
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 557
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 559
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 549
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 760
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v0, :cond_1

    .line 761
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 762
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    .line 772
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 773
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 777
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 775
    const v2, 0x7f0c0085

    .line 776
    const/4 v3, 0x2

    .line 773
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 779
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 759
    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 726
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 729
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 725
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    .prologue
    .line 737
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    .line 736
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 875
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 876
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 873
    return-void
.end method

.method private stopEvAdjust()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 784
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v0, :cond_0

    .line 785
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    .line 786
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 791
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 788
    const/4 v1, 0x1

    .line 789
    const v2, 0x7f0c0085

    .line 787
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 783
    :cond_0
    return-void
.end method

.method private updateEV()V
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 609
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 607
    :goto_0
    return-void

    .line 612
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 542
    :cond_0
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 449
    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 363
    return-void
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 675
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

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_2

    .line 680
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-nez v0, :cond_0

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 682
    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x7d0

    .line 681
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 679
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 680
    goto :goto_0

    :cond_1
    move v0, v6

    .line 681
    goto :goto_0

    :cond_2
    move v0, v7

    .line 679
    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 416
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 417
    .local v4, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 419
    .local v3, "min":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 420
    .local v2, "max":I
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    return-void

    .line 422
    :cond_2
    new-instance v6, Lcom/android/camera/ui/FloatSlideAdapter;

    .line 423
    sget v5, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 422
    :goto_0
    invoke-direct {v6, v3, v2, v5}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v6, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 424
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v5, :cond_4

    return-void

    .line 423
    :cond_3
    sub-int v5, v2, v3

    int-to-float v5, v5

    sget v7, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v5, v7

    goto :goto_0

    .line 425
    :cond_4
    iput v8, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 426
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    .line 427
    .local v0, "evValue":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    .line 428
    .local v1, "index":I
    if-gez v1, :cond_5

    .line 429
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 433
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 415
    return-void

    .line 431
    :cond_5
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    .line 577
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    .line 578
    return-void

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 583
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 584
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 585
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCenterIndicator(Landroid/graphics/Canvas;)V

    .line 595
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 598
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->drawEvText(Landroid/graphics/Canvas;)V

    .line 602
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 576
    :cond_3
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
    .line 564
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 565
    if-eqz p1, :cond_0

    .line 566
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 567
    sub-int v0, p5, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 568
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 569
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mRelativeLocation:[I

    .line 563
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 445
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 443
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 437
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 369
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

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 374
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 375
    .local v0, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 376
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_1

    .line 377
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 378
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_5

    .line 384
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mEvAdjusted:Z

    if-eqz v2, :cond_3

    .line 385
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_exposure_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 388
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_4

    .line 389
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 392
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_5

    .line 393
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 394
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performSlideBack()V

    .line 399
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_6
    return v1

    .line 370
    .end local v0    # "oldDown":Z
    :cond_7
    return v4
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 469
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 457
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 463
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 464
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    .line 465
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 462
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 686
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 687
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 688
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 685
    return-void
.end method

.method public showFail()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 526
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 528
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 529
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 530
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 531
    if-eqz v0, :cond_0

    .line 534
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 535
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 525
    .end local v0    # "animating":Z
    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 479
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 480
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 481
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 482
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 483
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 484
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 487
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 489
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 478
    return-void

    .line 493
    :cond_0
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 494
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 495
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mEvTriangleDis:I

    .line 496
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 497
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
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

    .line 507
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 509
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 510
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 511
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 512
    if-eqz v0, :cond_0

    .line 515
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 516
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 506
    .end local v0    # "animating":Z
    :cond_2
    return-void
.end method
