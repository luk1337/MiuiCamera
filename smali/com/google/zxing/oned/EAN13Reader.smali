.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xa

    .line 61
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0xb

    .line 62
    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x13

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x19

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1a

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    const/16 v1, 0xa

    .line 129
    if-ge v0, v1, :cond_1

    .line 130
    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .local v2, "counters":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 76
    aput v9, v2, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 77
    aput v9, v2, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 78
    aput v9, v2, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 79
    aput v9, v2, v8

    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .local v3, "end":I
    const/4 v8, 0x1

    .line 81
    aget v6, p2, v8

    .local v6, "rowOffset":I
    const/4 v4, 0x0

    .local v4, "lgPatternFound":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_0
    const/4 v8, 0x6

    .line 85
    if-lt v7, v8, :cond_2

    .line 96
    :cond_0
    invoke-static {p3, v4}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    const/4 v9, 0x1

    invoke-static {p1, v6, v9, v8}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v5

    .local v5, "middleRange":[I
    const/4 v8, 0x1

    .line 99
    aget v6, v5, v8

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x6

    .line 101
    if-lt v7, v8, :cond_5

    .line 109
    :cond_1
    return v6

    .line 85
    .end local v5    # "middleRange":[I
    :cond_2
    if-ge v6, v3, :cond_0

    .line 86
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v2, v6, v8}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 87
    .local v0, "bestMatch":I
    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v9, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    aget v1, v2, v8

    .line 89
    .local v1, "counter":I
    add-int/2addr v6, v1

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v1    # "counter":I
    :cond_3
    const/16 v8, 0xa

    .line 91
    if-ge v0, v8, :cond_4

    .line 85
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    :cond_4
    rsub-int/lit8 v8, v7, 0x5

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v4, v8

    goto :goto_3

    .line 101
    .end local v0    # "bestMatch":I
    .restart local v5    # "middleRange":[I
    :cond_5
    if-ge v6, v3, :cond_1

    .line 102
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v6, v8}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 103
    .restart local v0    # "bestMatch":I
    add-int/lit8 v8, v0, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v9, v2

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v9, :cond_6

    aget v1, v2, v8

    .line 105
    .restart local v1    # "counter":I
    add-int/2addr v6, v1

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 101
    .end local v1    # "counter":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
