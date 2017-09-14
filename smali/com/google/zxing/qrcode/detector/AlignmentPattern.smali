.class public final Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.super Lcom/google/zxing/ResultPoint;
.source "AlignmentPattern.java"


# instance fields
.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "estimatedModuleSize"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 33
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    .line 34
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

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_3

    .line 42
    iget v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "moduleSizeDiff":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

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

    .line 45
    .end local v0    # "moduleSizeDiff":F
    :cond_3
    return v3
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 5
    .param p1, "i"    # F
    .param p2, "j"    # F
    .param p3, "newModuleSize"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v3

    add-float/2addr v3, p2

    div-float v1, v3, v4

    .line 54
    .local v1, "combinedX":F
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v3

    add-float/2addr v3, p1

    div-float v2, v3, v4

    .line 55
    .local v2, "combinedY":F
    iget v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    add-float/2addr v3, p3

    div-float v0, v3, v4

    .line 56
    .local v0, "combinedModuleSize":F
    new-instance v3, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    return-object v3
.end method
