.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 40
    new-array v0, v6, [I

    aput v6, v0, v3

    aput v3, v0, v5

    const/4 v1, 0x5

    aput v1, v0, v4

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 41
    new-array v0, v6, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    aput v5, v0, v3

    aput v7, v0, v5

    aput v4, v0, v4

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    const/16 v0, 0x8

    .line 47
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    aput v3, v0, v3

    aput v3, v0, v5

    aput v3, v0, v4

    aput v3, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    aput v4, v0, v7

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    const/16 v0, 0x9

    .line 49
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v7, v0, v1

    aput v3, v0, v3

    aput v3, v0, v5

    aput v4, v0, v4

    aput v3, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    aput v5, v0, v7

    const/16 v1, 0x8

    aput v3, v0, v1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3
    .param p0, "result"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "tmpResult"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "destinationIndexes"    # [I

    .prologue
    const/4 v0, 0x0

    .line 176
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 81
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    :goto_0
    new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v2

    .line 83
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 85
    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 13
    .param p0, "multiple"    # Z
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v4, 0x0

    .local v4, "row":I
    const/4 v2, 0x0

    .line 101
    .local v2, "column":I
    const/4 v3, 0x0

    .line 102
    .local v3, "foundBarcodeInRow":Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 103
    invoke-static {p1, v4, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 105
    .local v5, "vertices":[Lcom/google/zxing/ResultPoint;
    aget-object v6, v5, v9

    if-eqz v6, :cond_1

    .line 125
    :cond_0
    const/4 v3, 0x1

    .line 126
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    if-eqz p0, :cond_6

    .line 132
    aget-object v6, v5, v10

    if-nez v6, :cond_5

    const/4 v6, 0x4

    .line 136
    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    const/4 v6, 0x4

    .line 137
    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0

    .line 105
    :cond_1
    aget-object v6, v5, v11

    if-nez v6, :cond_0

    .line 106
    if-eqz v3, :cond_6

    .line 112
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    .line 115
    .local v0, "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    aget-object v7, v0, v12

    if-nez v7, :cond_3

    .line 118
    :goto_2
    aget-object v7, v0, v11

    if-eqz v7, :cond_2

    .line 119
    aget-object v7, v0, v11

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 116
    :cond_3
    int-to-float v7, v4

    aget-object v8, v0, v12

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v4, v7

    goto :goto_2

    .line 122
    .end local v0    # "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v4, v4, 0x5

    goto :goto_0

    .line 133
    :cond_5
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 134
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v4, v6

    goto :goto_0

    .line 140
    .end local v5    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_6
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 13
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "whiteFirst"    # Z
    .param p5, "pattern"    # [I
    .param p6, "counters"    # [I

    .prologue
    const/4 v10, 0x0

    .line 261
    move-object/from16 v0, p6

    array-length v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v10, v11, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 262
    move-object/from16 v0, p5

    array-length v4, v0

    .line 263
    .local v4, "patternLength":I
    move/from16 v3, p4

    .line 264
    .local v3, "isWhite":Z
    move v5, p1

    .local v5, "patternStart":I
    const/4 v7, 0x0

    .line 268
    .local v7, "pixelDrift":I
    :goto_0
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 271
    :goto_1
    move v9, v5

    .local v9, "x":I
    const/4 v2, 0x0

    .line 273
    .local v2, "counterPosition":I
    :goto_2
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 274
    invoke-virtual {p0, v9, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 275
    .local v6, "pixel":Z
    xor-int v10, v6, v3

    if-nez v10, :cond_2

    .line 278
    add-int/lit8 v10, v4, -0x1

    if-eq v2, v10, :cond_3

    .line 288
    add-int/lit8 v2, v2, 0x1

    :goto_3
    const/4 v10, 0x1

    .line 290
    aput v10, p6, v2

    .line 291
    if-nez v3, :cond_5

    const/4 v3, 0x1

    .line 273
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 268
    .end local v2    # "counterPosition":I
    .end local v6    # "pixel":Z
    .end local v9    # "x":I
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pixelDrift":I
    .local v8, "pixelDrift":I
    const/4 v10, 0x3

    if-ge v7, v10, :cond_9

    .line 269
    add-int/lit8 v5, v5, -0x1

    move v7, v8

    .end local v8    # "pixelDrift":I
    .restart local v7    # "pixelDrift":I
    goto :goto_0

    .line 268
    :cond_1
    if-gtz v5, :cond_0

    goto :goto_1

    .line 276
    .restart local v2    # "counterPosition":I
    .restart local v6    # "pixel":Z
    .restart local v9    # "x":I
    :cond_2
    aget v10, p6, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, p6, v2

    goto :goto_4

    :cond_3
    const v10, 0x3f4ccccd    # 0.8f

    .line 279
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v10

    const v11, 0x3ed70a3d    # 0.42f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    const/4 v10, 0x2

    .line 280
    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    return-object v10

    :cond_4
    const/4 v10, 0x0

    .line 282
    aget v10, p6, v10

    const/4 v11, 0x1

    aget v11, p6, v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 283
    add-int/lit8 v12, v4, -0x2

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v10, v4, -0x2

    const/4 v11, 0x0

    aput v11, p6, v10

    .line 285
    add-int/lit8 v10, v4, -0x1

    const/4 v11, 0x0

    aput v11, p6, v10

    .line 286
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 291
    goto :goto_4

    .line 294
    .end local v6    # "pixel":Z
    :cond_6
    add-int/lit8 v10, v4, -0x1

    if-eq v2, v10, :cond_8

    :cond_7
    const/4 v10, 0x0

    .line 299
    return-object v10

    :cond_8
    const v10, 0x3f4ccccd    # 0.8f

    .line 295
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v10

    const v11, 0x3ed70a3d    # 0.42f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    const/4 v10, 0x2

    .line 296
    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v9, -0x1

    aput v12, v10, v11

    return-object v10

    .end local v2    # "counterPosition":I
    .end local v7    # "pixelDrift":I
    .end local v9    # "x":I
    .restart local v8    # "pixelDrift":I
    :cond_9
    move v7, v8

    .end local v8    # "pixelDrift":I
    .restart local v7    # "pixelDrift":I
    goto/16 :goto_1
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "startRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "pattern"    # [I

    .prologue
    const/4 v1, 0x4

    .line 187
    new-array v12, v1, [Lcom/google/zxing/ResultPoint;

    .line 188
    .local v12, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    .line 189
    .local v8, "found":Z
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v7, v1, [I

    .line 190
    .local v7, "counters":[I
    :goto_0
    move/from16 v0, p3

    if-ge v0, p1, :cond_3

    .line 191
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    .line 192
    .local v10, "loc":[I
    if-nez v10, :cond_1

    .line 190
    add-int/lit8 p3, p3, 0x5

    goto :goto_0

    .line 196
    .local v11, "previousRowLoc":[I
    :cond_0
    move-object v10, v11

    .line 193
    .end local v11    # "previousRowLoc":[I
    :cond_1
    if-lez p3, :cond_2

    .line 194
    add-int/lit8 p3, p3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v11

    .line 195
    .restart local v11    # "previousRowLoc":[I
    if-nez v11, :cond_0

    .line 198
    add-int/lit8 p3, p3, 0x1

    .end local v11    # "previousRowLoc":[I
    :cond_2
    const/4 v1, 0x0

    .line 202
    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v10, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    const/4 v1, 0x1

    .line 203
    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    .line 204
    const/4 v8, 0x1

    .line 208
    .end local v10    # "loc":[I
    :cond_3
    add-int/lit8 v3, p3, 0x1

    .line 210
    .local v3, "stopRow":I
    if-nez v8, :cond_5

    .line 236
    :goto_1
    sub-int v1, v3, p3

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    .line 241
    :cond_4
    return-object v12

    :cond_5
    const/4 v13, 0x0

    .local v13, "skippedRowCount":I
    const/4 v1, 0x2

    .line 212
    new-array v11, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v11, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v11, v1

    .line 213
    .restart local v11    # "previousRowLoc":[I
    :goto_2
    if-ge v3, p1, :cond_8

    const/4 v1, 0x0

    .line 214
    aget v2, v11, v1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    .line 219
    .restart local v10    # "loc":[I
    if-nez v10, :cond_7

    :cond_6
    const/16 v1, 0x19

    .line 225
    if-gt v13, v1, :cond_8

    .line 228
    add-int/lit8 v13, v13, 0x1

    .line 213
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 220
    aget v1, v11, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    const/4 v1, 0x1

    .line 221
    aget v1, v11, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    .line 222
    move-object v11, v10

    const/4 v13, 0x0

    .line 223
    goto :goto_3

    .line 232
    .end local v10    # "loc":[I
    :cond_8
    add-int/lit8 v1, v13, 0x1

    sub-int/2addr v3, v1

    const/4 v1, 0x2

    .line 233
    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    const/4 v1, 0x3

    .line 234
    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    goto :goto_1

    .end local v11    # "previousRowLoc":[I
    .end local v13    # "skippedRowCount":I
    :cond_9
    const/4 v9, 0x0

    .line 237
    .local v9, "i":I
    :goto_4
    array-length v1, v12

    if-ge v9, v1, :cond_4

    const/4 v1, 0x0

    .line 238
    aput-object v1, v12, v9

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 8
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "startRow"    # I
    .param p2, "startColumn"    # I

    .prologue
    const/4 v7, 0x4

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 160
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .local v2, "width":I
    const/16 v0, 0x8

    .line 162
    new-array v6, v0, [Lcom/google/zxing/ResultPoint;

    .line 163
    .local v6, "result":[Lcom/google/zxing/ResultPoint;
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 164
    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 163
    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 166
    aget-object v0, v6, v7

    if-nez v0, :cond_0

    .line 170
    :goto_0
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 171
    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 170
    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 172
    return-object v6

    .line 167
    :cond_0
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int p2, v0

    .line 168
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    goto :goto_0
.end method

.method private static patternMatchVariance([I[IF)F
    .locals 13
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .prologue
    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 314
    array-length v2, p0

    .local v2, "numCounters":I
    const/4 v5, 0x0

    .local v5, "total":I
    const/4 v3, 0x0

    .local v3, "patternLength":I
    const/4 v1, 0x0

    .line 317
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 318
    aget v10, p0, v1

    add-int/2addr v5, v10

    .line 319
    aget v10, p1, v1

    add-int/2addr v3, v10

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    if-lt v5, v3, :cond_1

    .line 329
    int-to-float v10, v5

    int-to-float v11, v3

    div-float v7, v10, v11

    .line 330
    .local v7, "unitBarWidth":F
    mul-float/2addr p2, v7

    const/4 v6, 0x0

    .local v6, "totalVariance":F
    const/4 v9, 0x0

    .line 333
    .local v9, "x":I
    :goto_1
    if-ge v9, v2, :cond_4

    .line 334
    aget v0, p0, v9

    .line 335
    .local v0, "counter":I
    aget v10, p1, v9

    int-to-float v10, v10

    mul-float v4, v10, v7

    .line 336
    .local v4, "scaledPattern":F
    int-to-float v10, v0

    cmpl-float v10, v10, v4

    if-lez v10, :cond_2

    int-to-float v10, v0

    sub-float v8, v10, v4

    .line 337
    .local v8, "variance":F
    :goto_2
    cmpl-float v10, v8, p2

    if-lez v10, :cond_3

    .line 338
    return v12

    .line 324
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":F
    .end local v6    # "totalVariance":F
    .end local v7    # "unitBarWidth":F
    .end local v8    # "variance":F
    .end local v9    # "x":I
    :cond_1
    return v12

    .line 336
    .restart local v0    # "counter":I
    .restart local v4    # "scaledPattern":F
    .restart local v6    # "totalVariance":F
    .restart local v7    # "unitBarWidth":F
    .restart local v9    # "x":I
    :cond_2
    int-to-float v10, v0

    sub-float v8, v4, v10

    goto :goto_2

    .line 340
    .restart local v8    # "variance":F
    :cond_3
    add-float/2addr v6, v8

    .line 333
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":F
    .end local v8    # "variance":F
    :cond_4
    int-to-float v10, v5

    div-float v10, v6, v10

    return v10
.end method
