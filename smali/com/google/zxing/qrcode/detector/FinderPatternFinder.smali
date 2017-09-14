.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v0, 0x5

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    const/4 v0, 0x4

    .line 191
    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .locals 8
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    :goto_0
    if-ge p1, v0, :cond_3

    .line 253
    :cond_0
    :goto_1
    if-ge p1, v0, :cond_4

    .line 254
    :cond_1
    const/4 v5, 0x0

    return v5

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 249
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    if-ge p2, v0, :cond_2

    goto :goto_1

    .line 253
    :cond_4
    if-lt p2, v0, :cond_1

    .line 258
    :goto_2
    if-ge p1, v0, :cond_8

    .line 265
    :cond_5
    :goto_3
    if-ge p1, v0, :cond_9

    .line 266
    :cond_6
    const/4 v5, 0x0

    return v5

    :cond_7
    const/4 v5, 0x1

    .line 259
    aget v5, v3, v5

    .line 258
    if-gt v5, p3, :cond_5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 260
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_8
    if-lt p2, v0, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 265
    :cond_9
    if-lt p2, v0, :cond_6

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_6

    .line 270
    :goto_4
    if-ge p1, v0, :cond_e

    :cond_a
    :goto_5
    const/4 v5, 0x0

    .line 275
    aget v5, v3, v5

    if-gt v5, p3, :cond_f

    .line 279
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 280
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .local v2, "maxJ":I
    const/4 v0, 0x1

    .line 284
    :goto_6
    add-int v5, p1, v0

    if-lt v5, v1, :cond_11

    .line 290
    :cond_b
    :goto_7
    add-int v5, p1, v0

    if-lt v5, v1, :cond_12

    .line 291
    :cond_c
    const/4 v5, 0x0

    return v5

    .end local v1    # "maxI":I
    .end local v2    # "maxJ":I
    :cond_d
    const/4 v5, 0x0

    .line 271
    aget v5, v3, v5

    .line 270
    if-gt v5, p3, :cond_a

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 272
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 270
    :cond_e
    if-lt p2, v0, :cond_a

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 276
    :cond_f
    const/4 v5, 0x0

    return v5

    .line 284
    .restart local v1    # "maxI":I
    .restart local v2    # "maxJ":I
    :cond_10
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 285
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 284
    :cond_11
    add-int v5, p2, v0

    if-lt v5, v2, :cond_10

    goto :goto_7

    .line 290
    :cond_12
    add-int v5, p2, v0

    if-ge v5, v2, :cond_c

    .line 294
    :goto_8
    add-int v5, p1, v0

    if-lt v5, v1, :cond_16

    .line 300
    :cond_13
    :goto_9
    add-int v5, p1, v0

    if-lt v5, v1, :cond_17

    .line 301
    :cond_14
    const/4 v5, 0x0

    return v5

    :cond_15
    const/4 v5, 0x3

    .line 295
    aget v5, v3, v5

    .line 294
    if-ge v5, p3, :cond_13

    const/4 v5, 0x3

    const/4 v6, 0x3

    .line 296
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 294
    :cond_16
    add-int v5, p2, v0

    if-ge v5, v2, :cond_13

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_9

    .line 300
    :cond_17
    add-int v5, p2, v0

    if-ge v5, v2, :cond_14

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    .line 304
    :goto_a
    add-int v5, p1, v0

    if-lt v5, v1, :cond_1b

    :cond_18
    :goto_b
    const/4 v5, 0x4

    .line 310
    aget v5, v3, v5

    if-ge v5, p3, :cond_1c

    const/4 v5, 0x0

    .line 316
    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 318
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_1d

    .line 317
    :cond_19
    const/4 v5, 0x0

    return v5

    .end local v4    # "stateCountTotal":I
    :cond_1a
    const/4 v5, 0x4

    .line 305
    aget v5, v3, v5

    .line 304
    if-ge v5, p3, :cond_18

    const/4 v5, 0x4

    const/4 v6, 0x4

    .line 306
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 304
    :cond_1b
    add-int v5, p2, v0

    if-ge v5, v2, :cond_18

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_b

    .line 311
    :cond_1c
    const/4 v5, 0x0

    return v5

    .line 319
    .restart local v4    # "stateCountTotal":I
    :cond_1d
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 317
    const/4 v5, 0x1

    return v5
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 409
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 410
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 412
    .local v3, "stateCount":[I
    move v1, p1

    .line 413
    .local v1, "j":I
    :goto_0
    if-gez v1, :cond_3

    .line 417
    :cond_0
    if-ltz v1, :cond_4

    .line 420
    :goto_1
    if-gez v1, :cond_6

    .line 424
    :cond_1
    :goto_2
    if-gez v1, :cond_7

    :cond_2
    const/high16 v5, 0x7fc00000    # NaNf

    .line 425
    return v5

    .line 413
    :cond_3
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 414
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 415
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/high16 v5, 0x7fc00000    # NaNf

    .line 418
    return v5

    :cond_5
    const/4 v5, 0x1

    .line 420
    aget v5, v3, v5

    if-gt v5, p3, :cond_1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 421
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 420
    :cond_6
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    .line 424
    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 427
    :goto_3
    if-gez v1, :cond_d

    :cond_8
    :goto_4
    const/4 v5, 0x0

    .line 431
    aget v5, v3, v5

    if-gt v5, p3, :cond_e

    .line 435
    add-int/lit8 v1, p1, 0x1

    .line 436
    :goto_5
    if-lt v1, v2, :cond_f

    .line 440
    :cond_9
    if-eq v1, v2, :cond_10

    .line 443
    :goto_6
    if-lt v1, v2, :cond_12

    .line 447
    :cond_a
    :goto_7
    if-ne v1, v2, :cond_13

    :cond_b
    const/high16 v5, 0x7fc00000    # NaNf

    .line 448
    return v5

    :cond_c
    const/4 v5, 0x0

    .line 427
    aget v5, v3, v5

    if-gt v5, p3, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 428
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 429
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 427
    :cond_d
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_e
    const/high16 v5, 0x7fc00000    # NaNf

    .line 432
    return v5

    .line 436
    :cond_f
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 437
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    const/high16 v5, 0x7fc00000    # NaNf

    .line 441
    return v5

    :cond_11
    const/4 v5, 0x3

    .line 443
    aget v5, v3, v5

    if-ge v5, p3, :cond_a

    const/4 v5, 0x3

    const/4 v6, 0x3

    .line 444
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 443
    :cond_12
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_13
    const/4 v5, 0x3

    .line 447
    aget v5, v3, v5

    if-ge v5, p3, :cond_b

    .line 450
    :goto_8
    if-lt v1, v2, :cond_16

    :cond_14
    :goto_9
    const/4 v5, 0x4

    .line 454
    aget v5, v3, v5

    if-ge v5, p3, :cond_17

    const/4 v5, 0x0

    .line 460
    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    .line 461
    aget v6, v3, v6

    .line 460
    add-int v4, v5, v6

    .line 462
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-ge v5, p4, :cond_18

    .line 466
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-nez v5, :cond_19

    const/high16 v5, 0x7fc00000    # NaNf

    :goto_a
    return v5

    .end local v4    # "stateCountTotal":I
    :cond_15
    const/4 v5, 0x4

    .line 450
    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    const/4 v5, 0x4

    const/4 v6, 0x4

    .line 451
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 450
    :cond_16
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_9

    :cond_17
    const/high16 v5, 0x7fc00000    # NaNf

    .line 455
    return v5

    .restart local v4    # "stateCountTotal":I
    :cond_18
    const/high16 v5, 0x7fc00000    # NaNf

    .line 463
    return v5

    .line 466
    :cond_19
    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_a
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 338
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 341
    .local v3, "stateCount":[I
    move v0, p1

    .line 342
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_3

    .line 346
    :cond_0
    if-ltz v0, :cond_4

    .line 349
    :goto_1
    if-gez v0, :cond_6

    .line 354
    :cond_1
    :goto_2
    if-gez v0, :cond_7

    :cond_2
    const/high16 v5, 0x7fc00000    # NaNf

    .line 355
    return v5

    .line 342
    :cond_3
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 343
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/high16 v5, 0x7fc00000    # NaNf

    .line 347
    return v5

    :cond_5
    const/4 v5, 0x1

    .line 349
    aget v5, v3, v5

    if-gt v5, p3, :cond_1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 350
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 351
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 349
    :cond_6
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    .line 354
    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 357
    :goto_3
    if-gez v0, :cond_d

    :cond_8
    :goto_4
    const/4 v5, 0x0

    .line 361
    aget v5, v3, v5

    if-gt v5, p3, :cond_e

    .line 366
    add-int/lit8 v0, p1, 0x1

    .line 367
    :goto_5
    if-lt v0, v2, :cond_f

    .line 371
    :cond_9
    if-eq v0, v2, :cond_10

    .line 374
    :goto_6
    if-lt v0, v2, :cond_12

    .line 378
    :cond_a
    :goto_7
    if-ne v0, v2, :cond_13

    :cond_b
    const/high16 v5, 0x7fc00000    # NaNf

    .line 379
    return v5

    :cond_c
    const/4 v5, 0x0

    .line 357
    aget v5, v3, v5

    if-gt v5, p3, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 358
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 359
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 357
    :cond_d
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_e
    const/high16 v5, 0x7fc00000    # NaNf

    .line 362
    return v5

    .line 367
    :cond_f
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 368
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    const/high16 v5, 0x7fc00000    # NaNf

    .line 372
    return v5

    :cond_11
    const/4 v5, 0x3

    .line 374
    aget v5, v3, v5

    if-ge v5, p3, :cond_a

    const/4 v5, 0x3

    const/4 v6, 0x3

    .line 375
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 374
    :cond_12
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_13
    const/4 v5, 0x3

    .line 378
    aget v5, v3, v5

    if-ge v5, p3, :cond_b

    .line 381
    :goto_8
    if-lt v0, v2, :cond_16

    :cond_14
    :goto_9
    const/4 v5, 0x4

    .line 385
    aget v5, v3, v5

    if-ge v5, p3, :cond_17

    const/4 v5, 0x0

    .line 391
    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    .line 392
    aget v6, v3, v6

    .line 391
    add-int v4, v5, v6

    .line 393
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_18

    .line 397
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-nez v5, :cond_19

    const/high16 v5, 0x7fc00000    # NaNf

    :goto_a
    return v5

    .end local v4    # "stateCountTotal":I
    :cond_15
    const/4 v5, 0x4

    .line 381
    aget v5, v3, v5

    if-ge v5, p3, :cond_14

    const/4 v5, 0x4

    const/4 v6, 0x4

    .line 382
    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 381
    :cond_16
    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_9

    :cond_17
    const/high16 v5, 0x7fc00000    # NaNf

    .line 386
    return v5

    .restart local v4    # "stateCountTotal":I
    :cond_18
    const/high16 v5, 0x7fc00000    # NaNf

    .line 394
    return v5

    .line 397
    :cond_19
    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto :goto_a
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 529
    .local v2, "max":I
    if-le v2, v7, :cond_1

    const/4 v1, 0x0

    .line 533
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 535
    if-eqz v1, :cond_2

    .line 543
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 545
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 544
    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    return v3

    .line 530
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    return v6

    .line 536
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    move-object v1, v0

    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 549
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v1    # "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    :cond_3
    return v6
.end method

.method protected static foundPatternCross([I)Z
    .locals 10
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    const/4 v4, 0x0

    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    .line 201
    if-ge v1, v5, :cond_1

    .line 202
    aget v0, p0, v1

    .line 203
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 206
    add-int/2addr v4, v0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return v7

    .end local v0    # "count":I
    :cond_1
    const/4 v5, 0x7

    .line 208
    if-lt v4, v5, :cond_2

    .line 211
    int-to-float v5, v4

    const/high16 v6, 0x40e00000    # 7.0f

    div-float v3, v5, v6

    .local v3, "moduleSize":F
    const/high16 v5, 0x40000000    # 2.0f

    .line 212
    div-float v2, v3, v5

    .line 215
    .local v2, "maxVariance":F
    aget v5, p0, v7

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 216
    aget v5, p0, v9

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    .line 217
    mul-float v5, v8, v3

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v6, v8, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x3

    .line 218
    aget v5, p0, v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    const/4 v5, 0x4

    .line 219
    aget v5, p0, v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 214
    cmpg-float v5, v5, v2

    if-gez v5, :cond_3

    return v9

    .line 209
    .end local v2    # "maxVariance":F
    .end local v3    # "moduleSize":F
    :cond_2
    return v7

    .line 214
    .restart local v2    # "maxVariance":F
    .restart local v3    # "moduleSize":F
    :cond_3
    return v7
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .local v1, "confirmedCount":I
    const/4 v5, 0x0

    .line 560
    .local v5, "totalModuleSize":F
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 561
    .local v2, "max":I
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    .local v3, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 563
    add-int/lit8 v1, v1, 0x1

    .line 564
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v7

    add-float/2addr v5, v7

    goto :goto_0

    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v6, 0x3

    .line 567
    if-lt v1, v6, :cond_2

    .line 574
    int-to-float v6, v2

    div-float v0, v5, v6

    .local v0, "average":F
    const/4 v4, 0x0

    .line 576
    .local v4, "totalDeviation":F
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    .restart local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v4, v7

    goto :goto_1

    .line 568
    .end local v0    # "average":F
    .end local v3    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v4    # "totalDeviation":F
    :cond_2
    return v9

    .restart local v0    # "average":F
    .restart local v4    # "totalDeviation":F
    :cond_3
    const v6, 0x3d4ccccd    # 0.05f

    .line 579
    mul-float/2addr v6, v5

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_4

    const/4 v6, 0x1

    return v6

    :cond_4
    return v9
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "startSize":I
    const/4 v11, 0x3

    .line 591
    if-lt v8, v11, :cond_1

    const/4 v11, 0x3

    .line 597
    if-gt v8, v11, :cond_2

    .line 622
    :cond_0
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-gt v11, v12, :cond_5

    :goto_0
    const/4 v11, 0x3

    .line 637
    new-array v12, v11, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v13, 0x0

    .line 638
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    const/4 v13, 0x1

    .line 639
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    const/4 v13, 0x2

    .line 640
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v11, v12, v13

    .line 637
    return-object v12

    .line 593
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    :cond_2
    const/4 v10, 0x0

    .local v10, "totalModuleSize":F
    const/4 v7, 0x0

    .line 601
    .local v7, "square":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    .local v1, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    .line 603
    .local v6, "size":F
    add-float/2addr v10, v6

    .line 604
    mul-float v12, v6, v6

    add-float/2addr v7, v12

    goto :goto_1

    .line 606
    .end local v1    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v6    # "size":F
    :cond_3
    int-to-float v11, v8

    div-float v0, v10, v11

    .line 607
    .local v0, "average":F
    int-to-float v11, v8

    div-float v11, v7, v11

    mul-float v12, v0, v0

    sub-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 609
    .local v9, "stdDev":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v11, 0x3e4ccccd    # 0.2f

    .line 611
    mul-float/2addr v11, v0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .local v3, "limit":F
    const/4 v2, 0x0

    .line 613
    .local v2, "i":I
    :goto_2
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_0

    .line 614
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    .local v4, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v3

    if-lez v11, :cond_4

    .line 616
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v2, v2, -0x1

    .line 613
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "average":F
    .end local v2    # "i":I
    .end local v3    # "limit":F
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v7    # "square":F
    .end local v9    # "stdDev":F
    .end local v10    # "totalModuleSize":F
    :cond_5
    const/4 v10, 0x0

    .line 626
    .restart local v10    # "totalModuleSize":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    .local v5, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    add-float/2addr v10, v12

    goto :goto_3

    .line 630
    .end local v5    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_6
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 632
    .restart local v0    # "average":F
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v11, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_4

    :cond_0
    const/4 v13, 0x0

    .line 78
    .local v13, "tryHarder":Z
    :goto_0
    if-nez p1, :cond_5

    :cond_1
    const/4 v10, 0x0

    .line 79
    .local v10, "pureBarcode":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 80
    .local v7, "maxI":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 88
    .local v8, "maxJ":I
    mul-int/lit8 v14, v7, 0x3

    div-int/lit16 v5, v14, 0xe4

    .local v5, "iSkip":I
    const/4 v14, 0x3

    .line 89
    if-ge v5, v14, :cond_6

    :cond_2
    const/4 v5, 0x3

    .line 93
    :goto_2
    const/4 v3, 0x0

    .local v3, "done":Z
    const/4 v14, 0x5

    .line 94
    new-array v12, v14, [I

    .line 95
    .local v12, "stateCount":[I
    add-int/lit8 v4, v5, -0x1

    .end local v3    # "done":Z
    .local v4, "i":I
    :goto_3
    if-lt v4, v7, :cond_7

    .line 180
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 181
    .local v9, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v14

    .line 77
    .end local v4    # "i":I
    .end local v5    # "iSkip":I
    .end local v7    # "maxI":I
    .end local v8    # "maxJ":I
    .end local v9    # "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "pureBarcode":Z
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_4
    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    .line 78
    .restart local v13    # "tryHarder":Z
    :cond_5
    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    .line 89
    .restart local v5    # "iSkip":I
    .restart local v7    # "maxI":I
    .restart local v8    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    :cond_6
    if-nez v13, :cond_2

    goto :goto_2

    .line 95
    .restart local v4    # "i":I
    .restart local v12    # "stateCount":[I
    :cond_7
    if-nez v3, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 97
    aput v15, v12, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 98
    aput v15, v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 99
    aput v15, v12, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 100
    aput v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 101
    aput v15, v12, v14

    const/4 v2, 0x0

    .local v2, "currentState":I
    const/4 v6, 0x0

    .line 103
    .local v6, "j":I
    :goto_4
    if-ge v6, v8, :cond_10

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-nez v14, :cond_8

    .line 111
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_a

    .line 164
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    .line 103
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 106
    :cond_8
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    .line 109
    :goto_6
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto :goto_5

    .line 107
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v14, 0x4

    .line 112
    if-eq v2, v14, :cond_b

    .line 161
    add-int/lit8 v2, v2, 0x1

    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto :goto_5

    .line 113
    :cond_b
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v14, 0x0

    const/4 v15, 0x2

    .line 153
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x1

    const/4 v15, 0x3

    .line 154
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x4

    .line 155
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x3

    const/4 v15, 0x1

    .line 156
    aput v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 157
    aput v15, v12, v14

    const/4 v2, 0x3

    .line 158
    goto :goto_5

    .line 114
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 115
    .local v1, "confirmed":Z
    if-nez v1, :cond_d

    const/4 v14, 0x0

    const/4 v15, 0x2

    .line 137
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x1

    const/4 v15, 0x3

    .line 138
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x4

    .line 139
    aget v15, v12, v15

    aput v15, v12, v14

    const/4 v14, 0x3

    const/4 v15, 0x1

    .line 140
    aput v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 141
    aput v15, v12, v14

    const/4 v2, 0x3

    .line 142
    goto :goto_5

    :cond_d
    const/4 v5, 0x2

    .line 119
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-nez v14, :cond_e

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v11

    .local v11, "rowSkip":I
    const/4 v14, 0x2

    .line 123
    aget v14, v12, v14

    if-gt v11, v14, :cond_f

    .end local v11    # "rowSkip":I
    :goto_7
    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 147
    aput v15, v12, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 148
    aput v15, v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 149
    aput v15, v12, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 150
    aput v15, v12, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 151
    aput v15, v12, v14

    goto/16 :goto_5

    .line 120
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .local v3, "done":Z
    goto :goto_7

    .end local v3    # "done":Z
    .restart local v11    # "rowSkip":I
    :cond_f
    const/4 v14, 0x2

    .line 132
    aget v14, v12, v14

    sub-int v14, v11, v14

    add-int/lit8 v14, v14, -0x2

    add-int/2addr v4, v14

    .line 133
    add-int/lit8 v6, v8, -0x1

    goto :goto_7

    .line 168
    .end local v1    # "confirmed":Z
    .end local v11    # "rowSkip":I
    :cond_10
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-nez v14, :cond_12

    .line 95
    :cond_11
    :goto_8
    add-int/2addr v4, v5

    goto/16 :goto_3

    .line 169
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 170
    .restart local v1    # "confirmed":Z
    if-eqz v1, :cond_11

    const/4 v14, 0x0

    .line 171
    aget v5, v12, v14

    .line 172
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_11

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .restart local v3    # "done":Z
    goto :goto_8
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .prologue
    const/4 v8, 0x0

    .line 488
    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    .line 489
    aget v9, p1, v9

    .line 488
    add-int v7, v8, v9

    .line 490
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 491
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 492
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 518
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 494
    :cond_1
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 495
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_0

    .line 496
    if-nez p4, :cond_3

    .line 497
    :cond_2
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 498
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .local v4, "found":Z
    const/4 v5, 0x0

    .line 499
    .local v5, "index":I
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 500
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-nez v8, :cond_4

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 496
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_3
    float-to-int v8, v1

    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 503
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_4
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v4, 0x1

    .line 508
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_5
    if-eqz v4, :cond_7

    .line 515
    :cond_6
    :goto_2
    const/4 v8, 0x1

    return v8

    .line 509
    :cond_7
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_6

    .line 512
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_2
.end method
