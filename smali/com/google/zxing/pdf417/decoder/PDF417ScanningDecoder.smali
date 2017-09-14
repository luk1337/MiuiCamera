.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 10
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 143
    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v6

    .line 147
    .local v6, "rowHeights":[I
    if-eqz v6, :cond_1

    .line 150
    invoke-static {v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v1

    .local v1, "maxRowHeight":I
    const/4 v3, 0x0

    .line 152
    .local v3, "missingStartRows":I
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget v5, v6, v7

    .line 153
    .local v5, "rowHeight":I
    sub-int v9, v1, v5

    add-int/2addr v3, v9

    .line 154
    if-gtz v5, :cond_2

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "maxRowHeight":I
    .end local v3    # "missingStartRows":I
    .end local v5    # "rowHeight":I
    .end local v6    # "rowHeights":[I
    :cond_0
    return-object v8

    .line 148
    .restart local v6    # "rowHeights":[I
    :cond_1
    return-object v8

    .line 158
    .restart local v1    # "maxRowHeight":I
    .restart local v3    # "missingStartRows":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .line 159
    .local v4, "row":I
    :goto_1
    if-gtz v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    .line 163
    .local v2, "missingEndRows":I
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    :goto_2
    if-ltz v4, :cond_5

    .line 164
    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v2, v7

    .line 165
    aget v7, v6, v4

    if-gtz v7, :cond_5

    .line 163
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 159
    .end local v2    # "missingEndRows":I
    :cond_4
    aget-object v7, v0, v4

    if-nez v7, :cond_3

    .line 160
    add-int/lit8 v3, v3, -0x1

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 169
    .restart local v2    # "missingEndRows":I
    :cond_5
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    :goto_3
    if-gtz v2, :cond_7

    .line 172
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    .line 173
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v8

    .line 172
    invoke-virtual {v7, v3, v2, v8}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    return-object v7

    .line 169
    :cond_7
    aget-object v7, v0, v4

    if-nez v7, :cond_6

    .line 170
    add-int/lit8 v2, v2, -0x1

    .line 169
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 6
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 236
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    .line 237
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v3

    .line 236
    mul-int/2addr v2, v3

    .line 238
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v3

    .line 236
    sub-int v0, v2, v3

    .line 239
    .local v0, "calculatedNumberOfCodewords":I
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 244
    aget v2, v1, v4

    if-ne v2, v0, :cond_3

    .line 248
    :goto_0
    return-void

    .line 240
    :cond_0
    if-ge v0, v5, :cond_2

    .line 241
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_2
    const/16 v2, 0x3a0

    .line 240
    if-gt v0, v2, :cond_1

    .line 243
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0

    .line 246
    :cond_3
    aget-object v2, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {v2, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 7
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 497
    move v0, p4

    .line 498
    .local v0, "correctedStartColumn":I
    if-nez p3, :cond_2

    move v2, v3

    .local v2, "increment":I
    :goto_0
    const/4 v1, 0x0

    .line 500
    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_8

    .line 501
    :goto_2
    if-nez p3, :cond_3

    :cond_0
    if-eqz p3, :cond_6

    .line 508
    :cond_1
    :goto_3
    neg-int v2, v2

    .line 509
    if-nez p3, :cond_7

    move p3, v3

    .line 500
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "increment":I
    :cond_2
    const/4 v2, -0x1

    .line 498
    goto :goto_0

    .line 501
    .restart local v1    # "i":I
    .restart local v2    # "increment":I
    :cond_3
    if-lt v0, p1, :cond_0

    .line 502
    :cond_4
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-ne p3, v5, :cond_1

    .line 503
    sub-int v5, p4, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v6, :cond_5

    .line 506
    add-int/2addr v0, v2

    goto :goto_2

    .line 504
    :cond_5
    return p4

    .line 501
    :cond_6
    if-lt v0, p2, :cond_4

    goto :goto_3

    :cond_7
    move p3, v4

    .line 509
    goto :goto_4

    .line 511
    :cond_8
    return v0
.end method

.method private static checkCodewordSkew(III)Z
    .locals 1
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .prologue
    .line 515
    add-int/lit8 v0, p1, -0x2

    if-le v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 516
    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 515
    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_2

    .line 548
    :cond_0
    if-gez p2, :cond_3

    .line 551
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 547
    :cond_2
    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_3
    const/16 v0, 0x200

    .line 549
    if-gt p2, v0, :cond_1

    .line 553
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 15
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    const-class v9, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v6, v10, v7

    const/4 v6, 0x1

    aput v8, v10, v6

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v4, 0x0

    .line 332
    .local v4, "row":I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_1

    const/4 v2, 0x0

    .line 333
    .local v2, "column":I
    :goto_1
    aget-object v6, v0, v4

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 334
    aget-object v6, v0, v4

    new-instance v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v8, v6, v2

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "column":I
    :cond_1
    const/4 v2, 0x0

    .line 339
    .restart local v2    # "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v9

    array-length v10, v9

    move v6, v7

    :goto_2
    if-ge v6, v10, :cond_7

    aget-object v3, v9, v6

    .line 340
    .local v3, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-nez v3, :cond_3

    .line 353
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 341
    :cond_3
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    array-length v12, v11

    move v8, v7

    :goto_3
    if-ge v8, v12, :cond_2

    aget-object v1, v11, v8

    .line 342
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_5

    .line 341
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 343
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 344
    .local v5, "rowNumber":I
    if-ltz v5, :cond_4

    .line 345
    array-length v13, v0

    if-ge v5, v13, :cond_6

    .line 348
    aget-object v13, v0, v5

    aget-object v13, v13, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_4

    .line 346
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 355
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v5    # "rowNumber":I
    :cond_7
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 252
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    .line 253
    .local v3, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v7, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v5, v11, [I

    .line 256
    .local v5, "codewords":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 258
    .local v9, "row":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    if-ge v9, v11, :cond_3

    const/4 v6, 0x0

    .line 259
    .local v6, "column":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 260
    aget-object v11, v3, v9

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    .line 261
    .local v10, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    mul-int/2addr v11, v9

    add-int v4, v11, v6

    .line 262
    .local v4, "codewordIndex":I
    array-length v11, v10

    if-eqz v11, :cond_0

    .line 264
    array-length v11, v10

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 263
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    :cond_1
    aget v11, v10, v13

    aput v11, v5, v4

    goto :goto_2

    .line 258
    .end local v4    # "codewordIndex":I
    .end local v10    # "values":[I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 272
    .end local v6    # "column":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [[I

    .local v0, "ambiguousIndexValues":[[I
    const/4 v8, 0x0

    .line 273
    .local v8, "i":I
    :goto_3
    array-length v11, v0

    if-ge v8, v11, :cond_4

    .line 274
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v0, v8

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v11

    .line 277
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v12

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v13

    .line 276
    invoke-static {v11, v5, v12, v13, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v11

    return-object v11
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 299
    array-length v4, p3

    new-array v0, v4, [I

    .local v0, "ambiguousIndexCount":[I
    const/16 v2, 0x64

    .local v2, "tries":I
    move v3, v2

    .line 302
    .end local v2    # "tries":I
    .local v3, "tries":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    if-lez v3, :cond_4

    const/4 v1, 0x0

    .line 303
    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 304
    aget v4, p3, v1

    aget-object v5, p4, v1

    aget v6, v0, v1

    aget v5, v5, v6

    aput v5, p1, v4

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v4

    .line 311
    array-length v4, v0

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 314
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 315
    aget v4, v0, v1

    aget-object v5, p4, v1

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_2

    .line 319
    aput v7, v0, v1

    .line 320
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 312
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 316
    :cond_2
    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    move v3, v2

    .line 317
    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0

    .line 321
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 326
    .end local v1    # "i":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .restart local v1    # "i":I
    :cond_5
    move v3, v2

    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/16 v17, 0x0

    .local v17, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/16 v20, 0x0

    .local v20, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v14, 0x0

    .local v14, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/16 v16, 0x0

    .end local v14    # "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .end local v17    # "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .end local v20    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v16, "i":I
    :goto_0
    const/4 v3, 0x2

    .line 62
    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 63
    if-nez p1, :cond_5

    .line 67
    :goto_1
    if-nez p3, :cond_6

    .line 71
    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v14

    .line 72
    .local v14, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    if-eqz v14, :cond_7

    .line 75
    if-eqz v16, :cond_8

    .line 80
    :cond_0
    :goto_3
    invoke-virtual {v14, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 84
    .end local v14    # "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    :cond_1
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .local v18, "maxBarcodeColumn":I
    const/4 v3, 0x0

    .line 85
    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 86
    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 88
    if-nez v17, :cond_b

    const/4 v6, 0x0

    .local v6, "leftToRight":Z
    :goto_4
    const/4 v12, 0x1

    .line 89
    .local v12, "barcodeColumnCount":I
    :goto_5
    move/from16 v0, v18

    if-gt v12, v0, :cond_12

    .line 90
    if-nez v6, :cond_c

    sub-int v11, v18, v12

    .line 91
    .local v11, "barcodeColumn":I
    :goto_6
    invoke-virtual {v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    if-nez v3, :cond_11

    .line 96
    if-nez v11, :cond_d

    .line 97
    :cond_2
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-eqz v11, :cond_e

    const/4 v3, 0x0

    :goto_7
    invoke-direct {v15, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 101
    .local v15, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_8
    invoke-virtual {v14, v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/16 v19, -0x1

    .line 105
    .local v19, "previousStartColumn":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    .local v8, "imageRow":I
    :goto_9
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_11

    .line 106
    invoke-static {v14, v11, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v7

    .line 107
    .local v7, "startColumn":I
    if-gez v7, :cond_f

    :cond_3
    const/4 v3, -0x1

    .line 108
    move/from16 v0, v19

    if-eq v0, v3, :cond_4

    .line 111
    move/from16 v7, v19

    .line 113
    :goto_a
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v13

    .line 115
    .local v13, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v13, :cond_10

    .line 105
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 64
    .end local v6    # "leftToRight":Z
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v11    # "barcodeColumn":I
    .end local v12    # "barcodeColumnCount":I
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v18    # "maxBarcodeColumn":I
    .end local v19    # "previousStartColumn":I
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v17

    .local v17, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    goto/16 :goto_1

    .line 68
    .end local v17    # "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v20

    .local v20, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    goto/16 :goto_2

    .line 73
    .end local v20    # "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .restart local v14    # "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 75
    :cond_8
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 78
    :cond_9
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 62
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 76
    :cond_a
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    if-gt v3, v4, :cond_9

    goto/16 :goto_3

    .end local v14    # "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .restart local v18    # "maxBarcodeColumn":I
    :cond_b
    const/4 v6, 0x1

    .line 88
    goto/16 :goto_4

    .restart local v6    # "leftToRight":Z
    .restart local v12    # "barcodeColumnCount":I
    :cond_c
    move v11, v12

    .line 90
    goto/16 :goto_6

    .line 96
    .restart local v11    # "barcodeColumn":I
    :cond_d
    move/from16 v0, v18

    if-eq v11, v0, :cond_2

    .line 99
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v15, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .restart local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto/16 :goto_8

    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_e
    const/4 v3, 0x1

    .line 97
    goto/16 :goto_7

    .line 107
    .restart local v7    # "startColumn":I
    .restart local v8    # "imageRow":I
    .restart local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .restart local v19    # "previousStartColumn":I
    :cond_f
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-gt v7, v3, :cond_3

    goto/16 :goto_a

    .line 116
    .restart local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_10
    invoke-virtual {v15, v8, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 117
    move/from16 v19, v7

    .line 118
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 119
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    goto/16 :goto_b

    .line 89
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v19    # "previousStartColumn":I
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 123
    .end local v11    # "barcodeColumn":I
    :cond_12
    invoke-static {v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 521
    array-length v3, p0

    if-eqz v3, :cond_0

    .line 525
    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    shl-int v2, v4, v3

    .line 526
    .local v2, "numECCodewords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v0

    .line 527
    .local v0, "correctedErrorsCount":I
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 530
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 531
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 532
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 533
    return-object v1

    .line 522
    .end local v0    # "correctedErrorsCount":I
    .end local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v2    # "numECCodewords":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 11
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .prologue
    .line 409
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 414
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v7

    .line 415
    .local v7, "moduleBitCount":[I
    if-eqz v7, :cond_0

    .line 419
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    .line 420
    .local v3, "codewordBitCount":I
    if-nez p3, :cond_1

    const/4 v6, 0x0

    .line 423
    .local v6, "i":I
    :goto_0
    array-length v9, v7

    div-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_2

    .line 424
    aget v8, v7, v6

    .line 425
    .local v8, "tmpCount":I
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget v9, v7, v9

    aput v9, v7, v6

    .line 426
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aput v8, v7, v9

    .line 423
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v3    # "codewordBitCount":I
    .end local v6    # "i":I
    .end local v8    # "tmpCount":I
    :cond_0
    const/4 v9, 0x0

    .line 416
    return-object v9

    .line 421
    .restart local v3    # "codewordBitCount":I
    :cond_1
    add-int v5, p4, v3

    .line 445
    .local v5, "endColumn":I
    :goto_1
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 451
    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 452
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v2

    .local v2, "codeword":I
    const/4 v9, -0x1

    .line 453
    if-eq v2, v9, :cond_4

    .line 456
    new-instance v9, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v9, p4, v5, v10, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v9

    .line 428
    .end local v2    # "codeword":I
    .end local v4    # "decodedValue":I
    .end local v5    # "endColumn":I
    .restart local v6    # "i":I
    :cond_2
    move v5, p4

    .line 429
    .restart local v5    # "endColumn":I
    sub-int/2addr p4, v3

    goto :goto_1

    .end local v6    # "i":I
    :cond_3
    const/4 v9, 0x0

    .line 448
    return-object v9

    .restart local v2    # "codeword":I
    .restart local v4    # "decodedValue":I
    :cond_4
    const/4 v9, 0x0

    .line 454
    return-object v9
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .prologue
    const/4 v2, 0x0

    .line 187
    if-nez p0, :cond_2

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v2

    :cond_1
    return-object v2

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .local v0, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_0

    .line 192
    if-nez p1, :cond_4

    .line 194
    :cond_3
    return-object v0

    .line 193
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .local v1, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 202
    :cond_5
    return-object v0

    .line 198
    :cond_6
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 199
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 200
    return-object v2
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4
    .param p0, "codeword"    # I

    .prologue
    const/16 v3, 0x8

    .line 583
    new-array v2, v3, [I

    .local v2, "result":[I
    const/4 v1, 0x0

    .line 585
    .local v1, "previousValue":I
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 587
    .local v0, "i":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-ne v3, v1, :cond_1

    .line 594
    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 595
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    and-int/lit8 v1, p0, 0x1

    .line 589
    add-int/lit8 v0, v0, -0x1

    .line 590
    if-gez v0, :cond_0

    .line 597
    return-object v2
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 1
    .param p0, "codeword"    # I

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/4 v0, 0x0

    .line 605
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 4
    .param p0, "values"    # [I

    .prologue
    const/4 v0, -0x1

    .line 178
    .local v0, "maxValue":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 179
    .local v1, "value":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "value":I
    :cond_0
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 8
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 465
    move v0, p4

    .local v0, "imageColumn":I
    const/16 v7, 0x8

    .line 466
    new-array v2, v7, [I

    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 468
    .local v3, "moduleNumber":I
    if-nez p3, :cond_3

    const/4 v1, -0x1

    .line 469
    .local v1, "increment":I
    :goto_0
    move v4, p3

    .line 470
    .local v4, "previousPixelValue":Z
    :goto_1
    if-nez p3, :cond_4

    :cond_0
    if-eqz p3, :cond_8

    .line 480
    :cond_1
    :goto_2
    array-length v5, v2

    if-ne v3, v5, :cond_9

    .line 482
    :cond_2
    return-object v2

    .end local v1    # "increment":I
    .end local v4    # "previousPixelValue":Z
    :cond_3
    move v1, v5

    .line 468
    goto :goto_0

    .line 470
    .restart local v1    # "increment":I
    .restart local v4    # "previousPixelValue":Z
    :cond_4
    if-ge v0, p2, :cond_0

    .line 471
    :cond_5
    array-length v7, v2

    .line 470
    if-ge v3, v7, :cond_1

    .line 472
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v7, v4, :cond_6

    .line 476
    add-int/lit8 v3, v3, 0x1

    .line 477
    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    goto :goto_1

    .line 473
    :cond_6
    aget v7, v2, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v3

    .line 474
    add-int/2addr v0, v1

    goto :goto_1

    :cond_7
    move v4, v6

    .line 477
    goto :goto_3

    .line 470
    :cond_8
    if-ge v0, p1, :cond_5

    goto :goto_2

    .line 481
    :cond_9
    if-nez p3, :cond_b

    :cond_a
    if-eqz p3, :cond_d

    :goto_4
    const/4 v5, 0x0

    .line 484
    return-object v5

    .line 481
    :cond_b
    if-ne v0, p2, :cond_a

    :cond_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    goto :goto_4

    :cond_d
    if-eq v0, p1, :cond_c

    goto :goto_4
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1
    .param p0, "barcodeECLevel"    # I

    .prologue
    const/4 v0, 0x2

    .line 488
    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .prologue
    .line 211
    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .local v11, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x2

    .line 213
    if-ge v9, v0, :cond_5

    .line 214
    if-eqz v9, :cond_1

    const/4 v10, -0x1

    .line 215
    .local v10, "increment":I
    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 216
    .local v4, "startColumn":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    .local v5, "imageRow":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-le v5, v0, :cond_2

    .line 213
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v10    # "increment":I
    :cond_1
    const/4 v10, 0x1

    .line 214
    goto :goto_1

    .line 217
    .restart local v4    # "startColumn":I
    .restart local v5    # "imageRow":I
    .restart local v10    # "increment":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    .line 216
    if-lt v5, v0, :cond_0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    .line 220
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v8, :cond_3

    .line 217
    :goto_3
    add-int/2addr v5, v10

    goto :goto_2

    .line 221
    :cond_3
    invoke-virtual {v11, v5, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 222
    if-nez p3, :cond_4

    .line 225
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_3

    .line 230
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "increment":I
    :cond_5
    return-object v11
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 8
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .prologue
    const/4 v5, 0x0

    .line 366
    if-nez p3, :cond_0

    const/4 v1, -0x1

    .local v1, "offset":I
    :goto_0
    const/4 v0, 0x0

    .line 368
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :goto_1
    if-nez v0, :cond_2

    .line 374
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 375
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v0, :cond_4

    .line 378
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 381
    :goto_2
    if-nez v0, :cond_7

    const/4 v3, 0x0

    .line 386
    .local v3, "skippedColumns":I
    :goto_3
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 387
    sub-int/2addr p1, v1

    .line 388
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_4
    if-ge v4, v7, :cond_b

    aget-object v2, v6, v4

    .line 389
    .local v2, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v2, :cond_9

    .line 388
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "offset":I
    .end local v2    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "skippedColumns":I
    :cond_0
    const/4 v1, 0x1

    .line 366
    goto :goto_0

    .line 369
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v1    # "offset":I
    :cond_1
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    goto :goto_1

    .line 372
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    :goto_5
    return v4

    :cond_3
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_5

    .line 376
    .restart local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    :goto_6
    return v4

    :cond_5
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_6

    .line 379
    :cond_6
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    goto :goto_2

    .line 382
    :cond_7
    if-nez p3, :cond_8

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    :goto_7
    return v4

    :cond_8
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_7

    .line 390
    .restart local v2    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v3    # "skippedColumns":I
    :cond_9
    if-nez p3, :cond_a

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    .line 391
    :goto_8
    mul-int v5, v1, v3

    .line 393
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 391
    mul-int/2addr v5, v6

    .line 390
    add-int/2addr v4, v5

    return v4

    :cond_a
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_8

    .line 396
    .end local v2    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 398
    :cond_c
    if-nez p3, :cond_d

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v4

    :goto_9
    return v4

    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    goto :goto_9
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 2
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .prologue
    const/4 v1, 0x0

    .line 359
    if-gez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 4
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    if-eqz p0, :cond_1

    .line 132
    :cond_0
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 133
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_2

    .line 136
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 137
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 138
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object v2

    .line 129
    .end local v0    # "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .end local v1    # "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :cond_1
    if-nez p1, :cond_0

    .line 130
    return-object v2

    .line 134
    .restart local v0    # "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_2
    return-object v2
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 560
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 568
    aget v0, p0, v3

    .line 569
    .local v0, "numberOfCodewords":I
    array-length v1, p0

    if-gt v0, v1, :cond_1

    .line 572
    if-eqz v0, :cond_2

    .line 580
    :goto_0
    return-void

    .line 563
    .end local v0    # "numberOfCodewords":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 570
    .restart local v0    # "numberOfCodewords":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 574
    :cond_2
    array-length v1, p0

    if-lt p1, v1, :cond_3

    .line 577
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 575
    :cond_3
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    goto :goto_0
.end method
