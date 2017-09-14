.class public Lcom/android/camera/ui/ZoomPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ZoomPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I

.field private static sX:[F

.field private static sY:[F


# instance fields
.field private mCurrentPosition:F

.field private mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mEntryToZoomRatioSpline:Landroid/util/Spline;

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I

.field private mXTextStyle:Landroid/text/style/TextAppearanceSpan;

.field private mZoomMax:I

.field private mZoomRatio:I

.field private mZoomRatioMax:I

.field private mZoomRatioMin:I

.field private mZoomRatioTele:I

.field private mZoomRatioToEntrySpline:Landroid/util/Spline;

.field private mZoomRatioWide:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ZoomPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ZoomPopup;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ZoomPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    return v0
.end method

.method static synthetic -get7()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic -get8()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    const-class v0, Lcom/android/camera/ui/ZoomPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->TAG:Ljava/lang/String;

    .line 76
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sX:[F

    .line 77
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sY:[F

    .line 92
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextActivatedColorState:[I

    .line 93
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/ui/ZoomPopup;->sTextDefaultColorState:[I

    .line 32
    return-void

    .line 76
    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41d80000    # 27.0f
        0x41e80000    # 29.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x435c0000    # 220.0f
        0x43b90000    # 370.0f
        0x43ff0000    # 510.0f
        0x44110000    # 580.0f
        0x44250000    # 660.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioMin:I

    .line 96
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    .line 101
    const v3, 0x1010095

    const v4, 0x1010098

    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 102
    .local v2, "textAttrs":[I
    const v3, 0x7f100020

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 103
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mTextSize:I

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mTextColor:Landroid/content/res/ColorStateList;

    .line 105
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0b0074

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineHalfHeight:F

    .line 109
    const v3, 0x7f0b0073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineWidth:I

    .line 110
    const v3, 0x7f0b0075

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineLineGap:I

    .line 111
    const v3, 0x7f0b0076

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineTextGap:I

    .line 112
    const v3, 0x7f0a000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mLineColorDefault:I

    .line 114
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f10002e

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 115
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f10002f

    invoke-direct {v3, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioWide:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    .line 98
    return-void
.end method

.method private convertSplineXToEntryX([F)[F
    .locals 6
    .param p1, "splineX"    # [F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 49
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    sub-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 50
    .local v0, "SPLINE_ENTRY_COUNT_2X_TO_10X":I
    array-length v3, p1

    new-array v1, v3, [F

    .line 51
    .local v1, "entryX":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 52
    aget v3, p1, v2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 53
    aget v3, p1, v2

    aput v3, v1, v2

    .line 51
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    aget v3, p1, v2

    sub-float/2addr v3, v5

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 56
    const/high16 v4, 0x42140000    # 37.0f

    .line 55
    mul-float/2addr v3, v4

    add-float/2addr v3, v5

    aput v3, v1, v2

    goto :goto_1

    .line 59
    :cond_1
    return-object v1
.end method

.method private convertSplineYToZoomRatioY([F)[F
    .locals 6
    .param p1, "splineY"    # [F

    .prologue
    .line 63
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    float-to-int v0, v3

    .line 64
    .local v0, "SPLINE_ZOOM_MAX":I
    array-length v3, p1

    new-array v2, v3, [F

    .line 65
    .local v2, "zoomRatioY":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 66
    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 67
    aget v3, p1, v1

    aput v3, v2, v1

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    aget v3, p1, v1

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 70
    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioMax:I

    iget v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 69
    mul-float/2addr v3, v4

    .line 70
    iget v4, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    int-to-float v4, v4

    .line 69
    add-float/2addr v3, v4

    aput v3, v2, v1

    goto :goto_1

    .line 73
    :cond_1
    return-object v2
.end method

.method private getDisplayedZoomRatio(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "ratio"    # I

    .prologue
    const/16 v3, 0x21

    .line 156
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    div-int/lit8 v1, p1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mDigitsTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 158
    const-string/jumbo v1, "X"

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mXTextStyle:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 159
    return-object v0
.end method

.method private mapPositionToZoomRatio(F)I
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private mapZoomRatioToPosition(I)F
    .locals 2
    .param p1, "zoomRatio"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 7
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 125
    iget-object v5, p0, Lcom/android/camera/ui/ZoomPopup;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    .line 126
    .local v1, "module":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getZoomMax()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomMax:I

    .line 127
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getZoomMaxRatio()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioMax:I

    .line 129
    sget-object v5, Lcom/android/camera/ui/ZoomPopup;->sX:[F

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomPopup;->convertSplineXToEntryX([F)[F

    move-result-object v3

    .line 130
    .local v3, "x":[F
    sget-object v5, Lcom/android/camera/ui/ZoomPopup;->sY:[F

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomPopup;->convertSplineYToZoomRatioY([F)[F

    move-result-object v4

    .line 131
    .local v4, "y":[F
    invoke-static {v3, v4}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ZoomPopup;->mEntryToZoomRatioSpline:Landroid/util/Spline;

    .line 132
    invoke-static {v4, v3}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioToEntrySpline:Landroid/util/Spline;

    .line 134
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 135
    iget v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioWide:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomPopup;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 136
    iget v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioTele:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomPopup;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 137
    iget v5, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatioMax:I

    invoke-direct {p0, v5}, Lcom/android/camera/ui/ZoomPopup;->getDisplayedZoomRatio(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 140
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/ZoomPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ZoomPopup;[Ljava/lang/CharSequence;)V

    .line 141
    .local v2, "slideViewAdapter":Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
    iget-object v5, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->reloadPreference()V

    .line 122
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 165
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnPositionSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnPositionSelectListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalSlideView;->setJustifyEnabled(Z)V

    .line 163
    return-void
.end method

.method public onPositionSelect(Lcom/android/camera/ui/HorizontalSlideView;F)V
    .locals 7
    .param p1, "view"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p2, "positionRatio"    # F

    .prologue
    const/4 v2, 0x0

    .line 198
    const/high16 v0, 0x423c0000    # 47.0f

    mul-float v6, p2, v0

    .line 199
    .local v6, "position":F
    iget v0, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_2

    .line 200
    iput v6, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomPopup;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 210
    iget v1, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ZoomPopup;->mapPositionToZoomRatio(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 206
    const/4 v1, 0x7

    move v3, v2

    .line 205
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 197
    :cond_2
    return-void
.end method

.method public passTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 177
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    .line 178
    .local v1, "zoomIndex":I
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 179
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    .line 181
    iget v2, p0, Lcom/android/camera/ui/ZoomPopup;->mZoomRatio:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/ZoomPopup;->mapZoomRatioToPosition(I)F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    .line 182
    iget-object v2, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget v3, p0, Lcom/android/camera/ui/ZoomPopup;->mCurrentPosition:F

    const/high16 v4, 0x423c0000    # 47.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(F)V

    .line 176
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setEnabled(Z)V

    .line 216
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 194
    return-void
.end method

.method public updateBackground()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomPopup;->setBackgroundResource(I)V

    .line 147
    return-void
.end method
