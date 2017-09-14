.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "FinderPattern.java"


# instance fields
.field private final count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 1
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "estimatedModuleSize"    # F

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "estimatedModuleSize"    # F
    .param p4, "count"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 39
    iput p3, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 40
    iput p4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .locals 4
    .param p1, "moduleSize"    # F
    .param p2, "i"    # F
    .param p3, "j"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_3

    .line 63
    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "moduleSizeDiff":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    return v3

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    return v2

    .line 66
    .end local v0    # "moduleSizeDiff":F
    :cond_3
    return v3
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 6
    .param p1, "i"    # F
    .param p2, "j"    # F
    .param p3, "newModuleSize"    # F

    .prologue
    .line 75
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v0, v4, 0x1

    .line 76
    .local v0, "combinedCount":I
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 77
    .local v2, "combinedX":F
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 78
    .local v3, "combinedY":F
    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float/2addr v4, v5

    add-float/2addr v4, p3

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 79
    .local v1, "combinedModuleSize":F
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-object v4
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return v0
.end method

.method public getEstimatedModuleSize()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    return v0
.end method
