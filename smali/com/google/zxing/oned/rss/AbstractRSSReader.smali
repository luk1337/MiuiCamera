.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 44
    return-void
.end method

.method protected static count([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    const/4 v1, 0x0

    .line 83
    .local v1, "count":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 84
    .local v0, "a":I
    add-int/2addr v1, v0

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "a":I
    :cond_0
    return v1
.end method

.method protected static decrement([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v3, 0x0

    .line 103
    aget v0, p1, v3

    .local v0, "biggestError":F
    const/4 v1, 0x1

    .line 104
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 105
    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 106
    aget v0, p1, v1

    .line 107
    move v2, v1

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    .line 111
    return-void
.end method

.method protected static increment([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v3, 0x0

    .line 91
    aget v0, p1, v3

    .local v0, "biggestError":F
    const/4 v1, 0x1

    .line 92
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 93
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 94
    aget v0, p1, v1

    .line 95
    move v2, v1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    .line 99
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 10
    .param p0, "counters"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 114
    aget v6, p0, v7

    aget v8, p0, v9

    add-int v1, v6, v8

    .local v1, "firstTwoSum":I
    const/4 v6, 0x2

    .line 115
    aget v6, p0, v6

    add-int/2addr v6, v1

    const/4 v8, 0x3

    aget v8, p0, v8

    add-int v5, v6, v8

    .line 116
    .local v5, "sum":I
    int-to-float v6, v1

    int-to-float v8, v5

    div-float v4, v6, v8

    .local v4, "ratio":F
    const v6, 0x3f4aaaab

    .line 117
    cmpl-float v6, v4, v6

    if-ltz v6, :cond_4

    const v6, 0x3f649249

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_4

    const v3, 0x7fffffff

    .local v3, "minCounter":I
    const/high16 v2, -0x80000000

    .line 121
    .local v2, "maxCounter":I
    array-length v8, p0

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget v0, p0, v6

    .line 122
    .local v0, "counter":I
    if-gt v0, v2, :cond_0

    .line 125
    :goto_1
    if-lt v0, v3, :cond_1

    .line 121
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    :cond_0
    move v2, v0

    goto :goto_1

    .line 126
    :cond_1
    move v3, v0

    goto :goto_2

    .line 129
    .end local v0    # "counter":I
    :cond_2
    mul-int/lit8 v6, v3, 0xa

    if-lt v2, v6, :cond_3

    return v7

    :cond_3
    return v9

    .line 131
    .end local v2    # "maxCounter":I
    .end local v3    # "minCounter":I
    :cond_4
    return v7
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 3
    .param p0, "counters"    # [I
    .param p1, "finderPatterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    .local v0, "value":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    .line 74
    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 75
    return v0

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
