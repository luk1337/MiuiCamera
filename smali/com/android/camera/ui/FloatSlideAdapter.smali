.class public Lcom/android/camera/ui/FloatSlideAdapter;
.super Ljava/lang/Object;
.source "FloatSlideAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/RollAdapter;


# instance fields
.field private mCenterItem:I

.field private mGapValue:F

.field private mItemCount:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    .line 16
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 3
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "gapValue"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    .line 21
    iput p1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    .line 22
    iput p2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    .line 23
    iput p3, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    .line 24
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    .line 25
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mCenterItem:I

    .line 20
    return-void
.end method

.method private round(F)I
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 55
    float-to-double v2, p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    :goto_0
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0
.end method


# virtual methods
.method public getCenterIndex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mCenterItem:I

    return v0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "pureValue":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 77
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    if-le v0, v1, :cond_2

    .line 80
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    iget v2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMaxValue:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 81
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getItemValue(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 48
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FloatSlideAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mMinValue:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mGapValue:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FloatSlideAdapter;->round(F)I

    move-result v0

    return v0

    .line 51
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    return v0
.end method

.method public getMaxItem()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/ui/FloatSlideAdapter;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
