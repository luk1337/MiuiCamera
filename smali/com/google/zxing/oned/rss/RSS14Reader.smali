.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x5

    .line 37
    new-array v0, v0, [I

    aput v4, v0, v8

    const/16 v1, 0xa

    aput v1, v0, v4

    const/16 v1, 0x22

    aput v1, v0, v6

    const/16 v1, 0x46

    aput v1, v0, v5

    const/16 v1, 0x7e

    aput v1, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 38
    new-array v0, v7, [I

    aput v7, v0, v8

    const/16 v1, 0x14

    aput v1, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v6

    const/16 v1, 0x51

    aput v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    const/4 v0, 0x5

    .line 39
    new-array v0, v0, [I

    const/16 v1, 0xa1

    aput v1, v0, v4

    const/16 v1, 0x3c1

    aput v1, v0, v6

    const/16 v1, 0x7df

    aput v1, v0, v5

    const/16 v1, 0xa9b

    aput v1, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 40
    new-array v0, v7, [I

    const/16 v1, 0x150

    aput v1, v0, v4

    const/16 v1, 0x40c

    aput v1, v0, v6

    const/16 v1, 0x5ec

    aput v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    const/4 v0, 0x5

    .line 41
    new-array v0, v0, [I

    const/16 v1, 0x8

    aput v1, v0, v8

    const/4 v1, 0x6

    aput v1, v0, v4

    aput v7, v0, v6

    aput v5, v0, v5

    aput v4, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 42
    new-array v0, v7, [I

    aput v6, v0, v8

    aput v7, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v6

    const/16 v1, 0x8

    aput v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v0, 0x9

    .line 44
    new-array v0, v0, [[I

    .line 45
    new-array v1, v7, [I

    aput v5, v1, v8

    const/16 v2, 0x8

    aput v2, v1, v4

    aput v6, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v8

    .line 46
    new-array v1, v7, [I

    aput v5, v1, v8

    const/4 v2, 0x5

    aput v2, v1, v4

    const/4 v2, 0x5

    aput v2, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v4

    .line 47
    new-array v1, v7, [I

    aput v5, v1, v8

    aput v5, v1, v4

    const/4 v2, 0x7

    aput v2, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v6

    .line 48
    new-array v1, v7, [I

    aput v5, v1, v8

    aput v4, v1, v4

    const/16 v2, 0x9

    aput v2, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v5

    .line 49
    new-array v1, v7, [I

    aput v6, v1, v8

    const/4 v2, 0x7

    aput v2, v1, v4

    aput v7, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 50
    new-array v2, v7, [I

    aput v6, v2, v8

    const/4 v3, 0x5

    aput v3, v2, v4

    const/4 v3, 0x6

    aput v3, v2, v6

    aput v4, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 51
    new-array v2, v7, [I

    aput v6, v2, v8

    aput v5, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v6

    aput v4, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 52
    new-array v2, v7, [I

    aput v4, v2, v8

    const/4 v3, 0x5

    aput v3, v2, v4

    const/4 v3, 0x7

    aput v3, v2, v6

    aput v4, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 53
    new-array v2, v7, [I

    aput v4, v2, v8

    aput v5, v2, v4

    const/16 v3, 0x9

    aput v3, v2, v6

    aput v4, v2, v5

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 62
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-eqz p1, :cond_2

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 98
    .local v1, "other":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 100
    const/4 v0, 0x1

    .line 104
    .end local v1    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    if-eqz v0, :cond_3

    .line 107
    :goto_0
    return-void

    .line 94
    .end local v0    # "found":Z
    :cond_2
    return-void

    .line 105
    .restart local v0    # "found":Z
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 11
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v8

    .line 363
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-static {v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v3

    .line 364
    .local v3, "evenSum":I
    add-int v9, v8, v3

    sub-int v6, v9, p2

    .line 365
    .local v6, "mismatch":I
    and-int/lit8 v10, v8, 0x1

    if-nez p1, :cond_1

    const/4 v9, 0x0

    :goto_0
    if-eq v10, v9, :cond_2

    const/4 v7, 0x0

    .line 366
    .local v7, "oddParityBad":Z
    :goto_1
    and-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v2, 0x0

    .line 368
    .local v2, "evenParityBad":Z
    :goto_2
    const/4 v5, 0x0

    .line 369
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 370
    .local v1, "decrementOdd":Z
    const/4 v4, 0x0

    .line 371
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 373
    .local v0, "decrementEven":Z
    if-nez p1, :cond_4

    const/16 v9, 0xb

    .line 385
    if-gt v8, v9, :cond_8

    const/4 v9, 0x5

    .line 387
    if-lt v8, v9, :cond_9

    :goto_3
    const/16 v9, 0xa

    .line 390
    if-gt v3, v9, :cond_a

    const/4 v9, 0x4

    .line 392
    if-lt v3, v9, :cond_b

    :cond_0
    :goto_4
    const/4 v9, 0x1

    .line 409
    if-eq v6, v9, :cond_c

    const/4 v9, -0x1

    .line 421
    if-eq v6, v9, :cond_11

    .line 433
    if-eqz v6, :cond_15

    .line 453
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .end local v0    # "decrementEven":Z
    .end local v1    # "decrementOdd":Z
    .end local v2    # "evenParityBad":Z
    .end local v4    # "incrementEven":Z
    .end local v5    # "incrementOdd":Z
    .end local v7    # "oddParityBad":Z
    :cond_1
    const/4 v9, 0x1

    .line 365
    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .restart local v7    # "oddParityBad":Z
    :cond_3
    const/4 v2, 0x1

    .line 366
    goto :goto_2

    .restart local v0    # "decrementEven":Z
    .restart local v1    # "decrementOdd":Z
    .restart local v2    # "evenParityBad":Z
    .restart local v4    # "incrementEven":Z
    .restart local v5    # "incrementOdd":Z
    :cond_4
    const/16 v9, 0xc

    .line 374
    if-gt v8, v9, :cond_5

    const/4 v9, 0x4

    .line 376
    if-lt v8, v9, :cond_6

    :goto_5
    const/16 v9, 0xc

    .line 379
    if-gt v3, v9, :cond_7

    const/4 v9, 0x4

    .line 381
    if-ge v3, v9, :cond_0

    .line 382
    const/4 v4, 0x1

    goto :goto_4

    .line 375
    :cond_5
    const/4 v1, 0x1

    goto :goto_5

    .line 377
    :cond_6
    const/4 v5, 0x1

    goto :goto_5

    .line 380
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 386
    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    .line 388
    :cond_9
    const/4 v5, 0x1

    goto :goto_3

    .line 391
    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    .line 393
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 410
    :cond_c
    if-nez v7, :cond_e

    .line 416
    if-eqz v2, :cond_10

    .line 419
    const/4 v0, 0x1

    .line 456
    :cond_d
    :goto_6
    if-nez v5, :cond_19

    .line 462
    :goto_7
    if-nez v1, :cond_1b

    .line 465
    :goto_8
    if-nez v4, :cond_1c

    .line 471
    :goto_9
    if-nez v0, :cond_1e

    .line 475
    :goto_a
    return-void

    .line 411
    :cond_e
    if-nez v2, :cond_f

    .line 414
    const/4 v1, 0x1

    goto :goto_6

    .line 412
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 417
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 422
    :cond_11
    if-nez v7, :cond_12

    .line 428
    if-eqz v2, :cond_14

    .line 431
    const/4 v4, 0x1

    goto :goto_6

    .line 423
    :cond_12
    if-nez v2, :cond_13

    .line 426
    const/4 v5, 0x1

    goto :goto_6

    .line 424
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 429
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 434
    :cond_15
    if-nez v7, :cond_16

    .line 447
    if-eqz v2, :cond_d

    .line 448
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 435
    :cond_16
    if-eqz v2, :cond_17

    .line 439
    if-lt v8, v3, :cond_18

    .line 443
    const/4 v1, 0x1

    .line 444
    const/4 v4, 0x1

    goto :goto_6

    .line 436
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 440
    :cond_18
    const/4 v5, 0x1

    .line 441
    const/4 v0, 0x1

    goto :goto_6

    .line 457
    :cond_19
    if-nez v1, :cond_1a

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_7

    .line 458
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 463
    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    goto :goto_8

    .line 466
    :cond_1c
    if-nez v0, :cond_1d

    .line 469
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_9

    .line 467
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 472
    :cond_1e
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    goto :goto_a
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    .line 153
    .local v0, "checkValue":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    .local v1, "targetCheckValue":I
    const/16 v2, 0x48

    .line 154
    if-gt v1, v2, :cond_0

    :goto_0
    const/16 v2, 0x8

    .line 157
    if-gt v1, v2, :cond_1

    .line 160
    :goto_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    return v2

    .line 155
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 160
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 14
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v9

    int-to-long v10, v9

    const-wide/32 v12, 0x453af5

    mul-long/2addr v10, v12

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v9

    int-to-long v12, v9

    add-long v6, v10, v12

    .line 117
    .local v6, "symbolValue":J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0xe

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    rsub-int/lit8 v3, v9, 0xd

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 121
    const/16 v9, 0x30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .local v1, "checkDigit":I
    const/4 v3, 0x0

    :goto_1
    const/16 v9, 0xd

    .line 126
    if-ge v3, v9, :cond_2

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    add-int/lit8 v2, v9, -0x30

    .line 128
    .local v2, "digit":I
    and-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_1

    .end local v2    # "digit":I
    :goto_2
    add-int/2addr v1, v2

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .restart local v2    # "digit":I
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 130
    .end local v2    # "digit":I
    :cond_2
    rem-int/lit8 v9, v1, 0xa

    rsub-int/lit8 v1, v9, 0xa

    const/16 v9, 0xa

    .line 131
    if-eq v1, v9, :cond_3

    .line 134
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 137
    .local v4, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 138
    .local v5, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v9, Lcom/google/zxing/Result;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    .line 141
    new-array v11, v11, [Lcom/google/zxing/ResultPoint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v4, v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-object v13, v4, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    aget-object v13, v5, v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x1

    aget-object v13, v5, v13

    aput-object v13, v11, v12

    .line 142
    sget-object v12, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    const/4 v13, 0x0

    .line 138
    invoke-direct {v9, v10, v13, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v9

    .end local v4    # "leftPoints":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "rightPoints":[Lcom/google/zxing/ResultPoint;
    :cond_3
    const/4 v1, 0x0

    .line 132
    goto :goto_3
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 31
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    .local v5, "counters":[I
    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 194
    aput v30, v5, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    .line 195
    aput v30, v5, v29

    const/16 v29, 0x2

    const/16 v30, 0x0

    .line 196
    aput v30, v5, v29

    const/16 v29, 0x3

    const/16 v30, 0x0

    .line 197
    aput v30, v5, v29

    const/16 v29, 0x4

    const/16 v30, 0x0

    .line 198
    aput v30, v5, v29

    const/16 v29, 0x5

    const/16 v30, 0x0

    .line 199
    aput v30, v5, v29

    const/16 v29, 0x6

    const/16 v30, 0x0

    .line 200
    aput v30, v5, v29

    const/16 v29, 0x7

    const/16 v30, 0x0

    .line 201
    aput v30, v5, v29

    .line 203
    if-nez p3, :cond_0

    .line 206
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v14, 0x0

    .line 208
    .local v14, "i":I
    array-length v0, v5

    move/from16 v29, v0

    add-int/lit8 v15, v29, -0x1

    .local v15, "j":I
    :goto_0
    if-ge v14, v15, :cond_1

    .line 209
    aget v25, v5, v14

    .line 210
    .local v25, "temp":I
    aget v29, v5, v15

    aput v29, v5, v14

    .line 211
    aput v25, v5, v15

    .line 208
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 204
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v25    # "temp":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 215
    :cond_1
    if-nez p3, :cond_2

    const/16 v16, 0xf

    .line 216
    .local v16, "numModules":I
    :goto_1
    invoke-static {v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v6, v29, v30

    .line 218
    .local v6, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    .line 219
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    .line 220
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 221
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .line 223
    .restart local v14    # "i":I
    :goto_2
    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_6

    .line 224
    aget v29, v5, v14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v29, v6

    .local v28, "value":F
    const/high16 v29, 0x3f000000    # 0.5f

    .line 225
    add-float v29, v29, v28

    move/from16 v0, v29

    float-to-int v4, v0

    .local v4, "count":I
    const/16 v29, 0x1

    .line 226
    move/from16 v0, v29

    if-lt v4, v0, :cond_3

    const/16 v29, 0x8

    .line 228
    move/from16 v0, v29

    if-gt v4, v0, :cond_4

    .line 231
    :goto_3
    div-int/lit8 v22, v14, 0x2

    .line 232
    .local v22, "offset":I
    and-int/lit8 v29, v14, 0x1

    if-eqz v29, :cond_5

    .line 236
    aput v4, v8, v22

    .line 237
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v9, v22

    .line 223
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v4    # "count":I
    .end local v6    # "elementWidth":F
    .end local v8    # "evenCounts":[I
    .end local v9    # "evenRoundingErrors":[F
    .end local v14    # "i":I
    .end local v16    # "numModules":I
    .end local v18    # "oddCounts":[I
    .end local v19    # "oddRoundingErrors":[F
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_2
    const/16 v16, 0x10

    .line 215
    goto :goto_1

    .restart local v4    # "count":I
    .restart local v6    # "elementWidth":F
    .restart local v8    # "evenCounts":[I
    .restart local v9    # "evenRoundingErrors":[F
    .restart local v14    # "i":I
    .restart local v16    # "numModules":I
    .restart local v18    # "oddCounts":[I
    .restart local v19    # "oddRoundingErrors":[F
    .restart local v28    # "value":F
    :cond_3
    const/4 v4, 0x1

    .line 227
    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    .line 229
    goto :goto_3

    .line 233
    .restart local v22    # "offset":I
    :cond_5
    aput v4, v18, v22

    .line 234
    int-to-float v0, v4

    move/from16 v29, v0

    sub-float v29, v28, v29

    aput v29, v19, v22

    goto :goto_4

    .line 241
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    const/16 v20, 0x0

    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 245
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_5
    if-ltz v14, :cond_7

    .line 246
    mul-int/lit8 v17, v17, 0x9

    .line 247
    aget v29, v18, v14

    add-int v17, v17, v29

    .line 248
    aget v29, v18, v14

    add-int v20, v20, v29

    .line 245
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .local v7, "evenChecksumPortion":I
    const/4 v10, 0x0

    .line 252
    .local v10, "evenSum":I
    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v14, v29, -0x1

    :goto_6
    if-ltz v14, :cond_8

    .line 253
    mul-int/lit8 v7, v7, 0x9

    .line 254
    aget v29, v8, v14

    add-int v7, v7, v29

    .line 255
    aget v29, v8, v14

    add-int v10, v10, v29

    .line 252
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 257
    :cond_8
    mul-int/lit8 v29, v7, 0x3

    add-int v3, v17, v29

    .line 259
    .local v3, "checksumPortion":I
    if-nez p3, :cond_a

    .line 272
    and-int/lit8 v29, v10, 0x1

    if-eqz v29, :cond_d

    .line 273
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    .line 260
    :cond_a
    and-int/lit8 v29, v20, 0x1

    if-eqz v29, :cond_c

    .line 261
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v29

    throw v29

    :cond_c
    const/16 v29, 0xc

    .line 260
    move/from16 v0, v20

    move/from16 v1, v29

    if-gt v0, v1, :cond_b

    const/16 v29, 0x4

    move/from16 v0, v20

    move/from16 v1, v29

    if-lt v0, v1, :cond_b

    .line 263
    rsub-int/lit8 v29, v20, 0xc

    div-int/lit8 v13, v29, 0x2

    .line 264
    .local v13, "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 265
    .local v21, "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 266
    .local v11, "evenWidest":I
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 267
    .local v27, "vOdd":I
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 268
    .local v26, "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v29, v13

    .line 269
    .local v23, "tEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v29, v13

    .line 270
    .local v12, "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v27, v23

    add-int v30, v30, v26

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v29

    .end local v11    # "evenWidest":I
    .end local v12    # "gSum":I
    .end local v13    # "group":I
    .end local v21    # "oddWidest":I
    .end local v23    # "tEven":I
    .end local v26    # "vEven":I
    .end local v27    # "vOdd":I
    :cond_d
    const/16 v29, 0xa

    .line 272
    move/from16 v0, v29

    if-gt v10, v0, :cond_9

    const/16 v29, 0x4

    move/from16 v0, v29

    if-lt v10, v0, :cond_9

    .line 275
    rsub-int/lit8 v29, v10, 0xa

    div-int/lit8 v13, v29, 0x2

    .line 276
    .restart local v13    # "group":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v29, v13

    .line 277
    .restart local v21    # "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 278
    .restart local v11    # "evenWidest":I
    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 279
    .restart local v27    # "vOdd":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 280
    .restart local v26    # "vEven":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v29, v13

    .line 281
    .local v24, "tOdd":I
    sget-object v29, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v29, v13

    .line 282
    .restart local v12    # "gSum":I
    new-instance v29, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v30, v26, v24

    add-int v30, v30, v27

    add-int v30, v30, v12

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v29
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .prologue
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x0

    .line 165
    :try_start_0
    invoke-direct {p0, p1, v7, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v6

    .line 166
    .local v6, "startEnd":[I
    invoke-direct {p0, p1, p3, p2, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    .line 168
    .local v4, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-eqz p4, :cond_0

    .line 169
    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPointCallback;

    move-object v5, v7

    .line 171
    .local v5, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-nez v5, :cond_1

    .line 180
    :goto_1
    const/4 v7, 0x1

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 181
    .local v3, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v7, 0x0

    invoke-direct {p0, p1, v4, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 182
    .local v2, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v7, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    .line 183
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    .line 182
    invoke-direct {v7, v8, v9, v4}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    return-object v7

    .end local v2    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_0
    const/4 v5, 0x0

    .line 168
    goto :goto_0

    .restart local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_1
    const/4 v7, 0x0

    .line 172
    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v7, v8

    .line 173
    .local v0, "center":F
    if-nez p2, :cond_2

    .line 177
    :goto_2
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_1

    .line 182
    .end local v0    # "center":F
    .end local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v6    # "startEnd":[I
    :catch_0
    move-exception v1

    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v7, 0x0

    .line 186
    return-object v7

    .line 175
    .end local v1    # "ignored":Lcom/google/zxing/NotFoundException;
    .restart local v0    # "center":F
    .restart local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v6    # "startEnd":[I
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    sub-float v0, v7, v0

    goto :goto_2
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowOffset"    # I
    .param p3, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 291
    .local v1, "counters":[I
    aput v7, v1, v7

    .line 292
    aput v7, v1, v6

    .line 293
    aput v7, v1, v10

    .line 294
    aput v7, v1, v11

    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 297
    .local v4, "width":I
    const/4 v2, 0x0

    .line 298
    :goto_0
    if-ge p2, v4, :cond_1

    .line 299
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_0

    move v2, v6

    .line 300
    .local v2, "isWhite":Z
    :goto_1
    if-eq p3, v2, :cond_1

    .line 304
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .end local v2    # "isWhite":Z
    :cond_0
    move v2, v7

    .line 299
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 308
    .local v0, "counterPosition":I
    move v3, p2

    .line 309
    .local v3, "patternStart":I
    move v5, p2

    .local v5, "x":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 310
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v2

    if-nez v8, :cond_2

    .line 313
    if-eq v0, v11, :cond_3

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 326
    :goto_3
    aput v6, v1, v0

    .line 327
    if-nez v2, :cond_5

    move v2, v6

    .line 309
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 311
    :cond_2
    aget v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v0

    goto :goto_4

    .line 314
    :cond_3
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 317
    aget v8, v1, v7

    aget v9, v1, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 318
    aget v8, v1, v10

    aput v8, v1, v7

    .line 319
    aget v8, v1, v11

    aput v8, v1, v6

    .line 320
    aput v7, v1, v10

    .line 321
    aput v7, v1, v11

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 315
    :cond_4
    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    :cond_5
    move v2, v7

    .line 327
    goto :goto_4

    .line 330
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 337
    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 338
    .local v9, "firstIsBlack":Z
    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    .line 340
    .local v8, "firstElementStart":I
    :goto_0
    if-gez v8, :cond_1

    .line 343
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 344
    aget v0, p4, v5

    sub-int v7, v0, v8

    .line 346
    .local v7, "firstCounter":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 347
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    aput v7, v6, v5

    .line 349
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    .line 350
    .local v1, "value":I
    move v3, v8

    .line 351
    .local v3, "start":I
    aget v4, p4, v10

    .line 352
    .local v4, "end":I
    if-nez p3, :cond_2

    .line 357
    :goto_1
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0

    .line 340
    .end local v1    # "value":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v6    # "counters":[I
    .end local v7    # "firstCounter":I
    :cond_1
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_0

    .line 341
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 354
    .restart local v1    # "value":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    .restart local v6    # "counters":[I
    .restart local v7    # "firstCounter":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v8

    .line 355
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    goto :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 68
    invoke-direct {p0, p2, v8, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v4

    .line 69
    .local v4, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v8, v4}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 70
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 71
    invoke-direct {p0, p2, v9, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v6

    .line 72
    .local v6, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 74
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "lefSize":I
    const/4 v0, 0x0

    .line 75
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 76
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/Pair;

    .line 77
    .local v3, "left":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-gt v8, v9, :cond_1

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "rightSize":I
    const/4 v1, 0x0

    .line 79
    .local v1, "j":I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 80
    iget-object v8, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/Pair;

    .line 81
    .local v5, "right":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v8

    if-gt v8, v9, :cond_3

    .line 79
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v3, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    invoke-static {v3, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v8

    return-object v8

    .line 89
    .end local v1    # "j":I
    .end local v3    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v5    # "right":Lcom/google/zxing/oned/rss/Pair;
    .end local v7    # "rightSize":I
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method
