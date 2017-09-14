.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private final LOGV:Z

.field private mAgeFemaleHonPadding:I

.field private mAgeMaleHonPadding:I

.field private mAgeOnlyRangeAlias:[Ljava/lang/String;

.field private mAgeRangeAlias:[Ljava/lang/String;

.field private mAgeVerPadding:I

.field private mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field private mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

.field private mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

.field private mDisplayOrientation:I

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaceInfoFormat:Ljava/lang/String;

.field private mFaceInfoPop:Landroid/graphics/drawable/Drawable;

.field private mFacePopupBottom:I

.field private mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mGap:I

.field private mGenderFemale:Ljava/lang/String;

.field private mGenderMale:Ljava/lang/String;

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mMagicPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPopBottomMargin:I

.field private mRect:Landroid/graphics/RectF;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

.field private mScoreHonPadding:I

.field private mScoreVerPadding:I

.field private mSexFemailIc:Landroid/graphics/drawable/Drawable;

.field private mSexMailIc:Landroid/graphics/drawable/Drawable;

.field private mShowAgeandAge:Ljava/lang/String;

.field private mSingleDrawableMargin:I

.field private mSkipDraw:Z

.field private mTextBounds:Landroid/graphics/Rect;

.field private mWinnerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 97
    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 59
    iput v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 77
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f080055

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    const v1, 0x7f080056

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    .line 94
    iput v3, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    .line 121
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSexMailIc:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSexFemailIc:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    const/16 v1, -0x47c9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    :cond_0
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pop"    # Landroid/graphics/drawable/Drawable;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "honPadding"    # I
    .param p6, "verPadding"    # I
    .param p7, "popBottom"    # I
    .param p8, "bottomMargin"    # I

    .prologue
    .line 477
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 478
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v3, p4, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 484
    :goto_0
    mul-int/lit8 v4, p5, 0x2

    .line 485
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 484
    :goto_1
    add-int/2addr v4, v3

    .line 486
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    .line 484
    :goto_2
    add-int/2addr v3, v4

    .line 487
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 484
    add-int v1, v3, v4

    .line 488
    .local v1, "infoWidth":I
    mul-int/lit8 v4, p6, 0x2

    .line 489
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 488
    :goto_3
    add-int v0, v4, v3

    .line 490
    .local v0, "infoHeight":I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 491
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    sub-int v4, v4, p8

    sub-int/2addr v4, p7

    .line 492
    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    sub-int v6, v6, p8

    .line 490
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 493
    .local v2, "popRect":Landroid/graphics/Rect;
    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 495
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    :cond_0
    if-eqz p2, :cond_1

    .line 500
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p5

    .line 501
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p6

    .line 502
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 503
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 500
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 504
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v3, p5

    .line 511
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v3, v5

    .line 510
    :goto_4
    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 512
    iget v4, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    .line 509
    invoke-virtual {p1, p4, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    :cond_2
    return-void

    .line 480
    .end local v0    # "infoHeight":I
    .end local v1    # "infoWidth":I
    .end local v2    # "popRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 485
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 486
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 489
    .restart local v1    # "infoWidth":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 511
    .restart local v0    # "infoHeight":I
    .restart local v2    # "popRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 465
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 465
    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 464
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 470
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 469
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawGenderAge(Landroid/graphics/Canvas;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 517
    invoke-direct {p0, p2}, Lcom/android/camera/ui/FaceView;->isValideAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 519
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 518
    if-eqz v0, :cond_7

    .line 520
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v10, 0x1

    .line 521
    .local v10, "isFemail":Z
    :goto_0
    const-string/jumbo v4, ""

    .line 522
    .local v4, "info":Ljava/lang/String;
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    if-eqz v10, :cond_3

    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    :goto_1
    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    :cond_0
    :goto_2
    if-eqz v10, :cond_5

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexFemailIc:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    .line 531
    if-eqz v10, :cond_6

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    :goto_4
    iget v6, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    .line 532
    iget v7, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object v0, p0

    move-object v1, p1

    .line 530
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    .line 516
    .end local v4    # "info":Ljava/lang/String;
    .end local v10    # "isFemail":Z
    :cond_1
    :goto_5
    return-void

    .line 520
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isFemail":Z
    goto :goto_0

    .line 523
    .restart local v4    # "info":Ljava/lang/String;
    :cond_3
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    goto :goto_1

    .line 525
    :cond_4
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v9

    .line 526
    .local v9, "index":I
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    aget-object v4, v0, v9

    goto :goto_2

    .line 530
    .end local v9    # "index":I
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexMailIc:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 531
    :cond_6
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    goto :goto_4

    .line 534
    .end local v4    # "info":Ljava/lang/String;
    .end local v10    # "isFemail":Z
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/camera/ui/FaceView;->getShowInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v4

    .line 535
    .restart local v4    # "info":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 539
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    .line 537
    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method private getAgeIndex(F)I
    .locals 1
    .param p1, "age"    # F

    .prologue
    .line 353
    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 356
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 358
    const/4 v0, 0x2

    return v0

    .line 359
    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 360
    const/4 v0, 0x3

    return v0

    .line 361
    :cond_3
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    .line 362
    const/4 v0, 0x4

    return v0

    .line 364
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private getScoreDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 452
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42c40000    # 98.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 457
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-ne p1, v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getShowInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 7
    .param p1, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const v5, 0x3ecccccd    # 0.4f

    .line 369
    const-string/jumbo v3, "on"

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    .line 371
    .local v1, "gender":Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "age":Ljava/lang/String;
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    .line 374
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_0
    sget-object v3, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 378
    .end local v0    # "age":Ljava/lang/String;
    .end local v1    # "gender":Ljava/lang/String;
    :cond_1
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v2

    .line 379
    .local v2, "index":I
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 380
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v3

    add-int/lit8 v2, v3, 0x6

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 383
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    aget-object v3, v3, v2

    return-object v3

    .line 385
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private getShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I
    .locals 7
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const/4 v6, -0x1

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, "type":I
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 548
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 549
    const-string/jumbo v4, "pref_camera_magic_mirror_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    .line 548
    if-eqz v4, :cond_5

    .line 550
    const/4 v2, 0x0

    .line 551
    .local v2, "socreNo":I
    iput v6, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 553
    aget-object v0, p1, v1

    .line 554
    .local v0, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 555
    add-int/lit8 v2, v2, 0x1

    .line 556
    iget v4, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v4, v6, :cond_0

    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 557
    :cond_0
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 552
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_2
    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 562
    const/4 v3, 0x2

    .line 570
    .end local v1    # "i":I
    .end local v2    # "socreNo":I
    :cond_3
    :goto_1
    return v3

    .line 563
    .restart local v1    # "i":I
    .restart local v2    # "socreNo":I
    :cond_4
    if-lez v2, :cond_3

    .line 564
    const/4 v3, 0x4

    goto :goto_1

    .line 566
    .end local v1    # "i":I
    .end local v2    # "socreNo":I
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showFaceInfo()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 567
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isValideAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 4
    .param p1, "face"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 575
    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->prob:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    .line 576
    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 576
    goto :goto_0

    :cond_2
    move v0, v1

    .line 575
    goto :goto_0
.end method

.method private setToVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 445
    :cond_0
    return-void
.end method

.method private showFaceInfo()Z
    .locals 2

    .prologue
    .line 335
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateLatestFaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 170
    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 168
    :goto_1
    return-void

    .line 172
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v4

    .line 179
    .local v0, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 181
    iget-object v3, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 180
    if-le v2, v3, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v1

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 310
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 311
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 306
    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    .prologue
    .line 323
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public faceExists()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 191
    .local v7, "rect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    .line 192
    .local v8, "screenNail":Lcom/android/camera/CameraScreenNail;
    if-eqz v8, :cond_0

    .line 193
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 196
    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 195
    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 201
    return-object v7

    .line 203
    :cond_0
    return-object v2
.end method

.method public isFaceStable()Z
    .locals 13

    .prologue
    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, "emptyFacesCount":I
    const/4 v3, 0x0

    .local v3, "averageWidth":I
    const/4 v0, 0x0

    .local v0, "averageHeight":I
    const/4 v1, 0x0

    .local v1, "averageLeft":I
    const/4 v2, 0x0

    .local v2, "averageTop":I
    const/4 v6, 0x0

    .line 210
    .local v6, "faceCount":I
    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v5, v9, v8

    .line 212
    .local v5, "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    if-nez v5, :cond_0

    .line 213
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x3

    if-lt v4, v11, :cond_1

    .line 214
    const/4 v8, 0x0

    return v8

    .line 219
    :cond_0
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 220
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v0, v11

    .line 221
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    .line 222
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    .line 210
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 224
    .end local v5    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_2
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v8, v8

    sub-int v6, v8, v4

    .line 225
    div-int/2addr v3, v6

    .line 226
    div-int/2addr v0, v6

    .line 227
    div-int/2addr v1, v6

    .line 228
    div-int/2addr v2, v6

    .line 229
    div-int/lit8 v8, v3, 0x3

    const/16 v9, 0x5a

    if-le v8, v9, :cond_4

    .line 230
    div-int/lit8 v7, v3, 0x3

    .line 232
    .local v7, "faceWidthRestrict":I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_8

    aget-object v5, v9, v8

    .line 233
    .restart local v5    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    if-nez v5, :cond_5

    .line 232
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 230
    .end local v5    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .end local v7    # "faceWidthRestrict":I
    :cond_4
    const/16 v7, 0x5a

    .restart local v7    # "faceWidthRestrict":I
    goto :goto_1

    .line 236
    .restart local v5    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_5
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v7, :cond_6

    .line 237
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_7

    .line 239
    :cond_6
    :goto_3
    const/4 v8, 0x0

    return v8

    .line 238
    :cond_7
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_3

    goto :goto_3

    .line 243
    .end local v5    # "face":Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    :cond_8
    const/16 v8, 0x29e

    if-gt v3, v8, :cond_9

    const/16 v8, 0x29e

    if-le v0, v8, :cond_a

    :cond_9
    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/camera/ui/FaceView;->mIsBigEnoughRect:Z

    .line 244
    const/4 v8, 0x1

    return v8

    .line 243
    :cond_a
    const/4 v8, 0x0

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v10

    .line 395
    .local v10, "screenNail":Lcom/android/camera/CameraScreenNail;
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_5

    if-eqz v10, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 398
    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    .line 399
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 397
    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 402
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I

    move-result v12

    .line 404
    .local v12, "type":I
    const-string/jumbo v0, "pref_camera_square_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    .line 405
    .local v11, "squareMode":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 408
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 410
    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isContaints(Landroid/graphics/Rect;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;)V

    .line 415
    packed-switch v12, :pswitch_data_0

    .line 405
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FaceView;->drawGenderAge(Landroid/graphics/Canvas;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    goto :goto_1

    .line 420
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-ne v9, v0, :cond_2

    .line 421
    invoke-direct {p0, v9}, Lcom/android/camera/ui/FaceView;->getScoreDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 422
    iget v8, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    .line 421
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 422
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 421
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_1

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 428
    invoke-direct {p0, v9}, Lcom/android/camera/ui/FaceView;->getScoreDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 429
    iget v8, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    .line 428
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 429
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 428
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    .line 432
    const-string/jumbo v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 433
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    .line 434
    iget v7, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object v0, p0

    move-object v1, p1

    .line 431
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_1

    .line 441
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 390
    .end local v9    # "i":I
    .end local v11    # "squareMode":Z
    .end local v12    # "type":I
    :cond_5
    return-void

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 314
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    .line 249
    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .locals 4
    .param p1, "faces"    # [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .prologue
    .line 153
    const-string/jumbo v1, "FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Num of faces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 155
    .local v0, "isFacesChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 156
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 161
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 154
    .end local v0    # "isFacesChanged":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFacesChanged":Z
    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .param p1, "mirror"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 262
    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 254
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 255
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_0
.end method

.method public setShowGenderAndAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 0
    .param p1, "skipDraw"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    .line 348
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 302
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 300
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 288
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 294
    return-void
.end method
