.class public Lcom/android/camera/ui/NumericListAdapter;
.super Ljava/lang/Object;
.source "NumericListAdapter.java"


# instance fields
.field private mGapValue:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/NumericListAdapter;-><init>(III)V

    .line 15
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "gapValue"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    .line 20
    iput p1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    .line 21
    iput p2, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    .line 22
    iput p3, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    .line 19
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 26
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 27
    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    iget v2, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 28
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 30
    .end local v0    # "value":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "pureValue":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 47
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    if-lt v0, v1, :cond_1

    .line 50
    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 52
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getItemValue(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 34
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NumericListAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 35
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0

    .line 37
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/ui/NumericListAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/NumericListAdapter;->mGapValue:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
