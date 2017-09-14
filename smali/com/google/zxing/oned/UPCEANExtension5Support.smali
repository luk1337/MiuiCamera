.class final Lcom/google/zxing/oned/UPCEANExtension5Support;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 34
    new-array v0, v7, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    .line 35
    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v1, v0, v3

    const/4 v1, 0x4

    const/16 v2, 0xc

    aput v2, v0, v1

    aput v5, v0, v4

    aput v3, v0, v5

    const/4 v1, 0x7

    aput v7, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    aput v4, v0, v6

    .line 34
    sput-object v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static determineCheckDigit(I)I
    .locals 2
    .param p0, "lgPatternFound"    # I
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

    .line 119
    if-ge v0, v1, :cond_1

    .line 120
    sget-object v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-eq p0, v1, :cond_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v0

    .line 124
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static extensionChecksum(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    const/4 v2, 0x0

    .line 106
    .local v2, "sum":I
    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 107
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 106
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 109
    :cond_0
    mul-int/lit8 v2, v2, 0x3

    .line 110
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 111
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    .line 110
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 113
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 114
    rem-int/lit8 v3, v2, 0xa

    return v3
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v0, ""

    .local v0, "currency":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    .line 174
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "rawAmount":I
    div-int/lit8 v5, v3, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "unitsString":Ljava/lang/String;
    rem-int/lit8 v1, v3, 0x64

    .local v1, "hundredths":I
    const/16 v5, 0xa

    .line 177
    if-lt v1, v5, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "hundredthsString":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v0    # "currency":Ljava/lang/String;
    .end local v1    # "hundredths":I
    .end local v2    # "hundredthsString":Ljava/lang/String;
    .end local v3    # "rawAmount":I
    .end local v4    # "unitsString":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "\u00a3"

    .line 149
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "currency":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "$"

    .line 152
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "currency":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "90000"

    .line 156
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "99991"

    .line 160
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "99990"

    .line 164
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v0, ""

    .line 168
    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "currency":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 158
    return-object v5

    :cond_1
    const-string/jumbo v5, "0.00"

    .line 162
    return-object v5

    :cond_2
    const-string/jumbo v5, "Used"

    .line 165
    return-object v5

    .line 177
    .restart local v0    # "currency":Ljava/lang/String;
    .restart local v1    # "hundredths":I
    .restart local v3    # "rawAmount":I
    .restart local v4    # "unitsString":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 136
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 140
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v0

    .line 134
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v4

    .line 138
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
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
    .line 65
    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .local v3, "counters":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 66
    aput v9, v3, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 67
    aput v9, v3, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 68
    aput v9, v3, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 69
    aput v9, v3, v8

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .local v4, "end":I
    const/4 v8, 0x1

    .line 71
    aget v6, p2, v8

    .local v6, "rowOffset":I
    const/4 v5, 0x0

    .local v5, "lgPatternFound":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_0
    const/4 v8, 0x5

    .line 75
    if-lt v7, v8, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    .line 95
    invoke-static {v5}, Lcom/google/zxing/oned/UPCEANExtension5Support;->determineCheckDigit(I)I

    move-result v1

    .line 96
    .local v1, "checkDigit":I
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/oned/UPCEANExtension5Support;->extensionChecksum(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne v8, v1, :cond_6

    .line 100
    return v6

    .line 75
    .end local v1    # "checkDigit":I
    :cond_1
    if-ge v6, v4, :cond_0

    .line 76
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v3, v6, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 77
    .local v0, "bestMatch":I
    rem-int/lit8 v8, v0, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    array-length v9, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_2

    aget v2, v3, v8

    .line 79
    .local v2, "counter":I
    add-int/2addr v6, v2

    .line 78
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2    # "counter":I
    :cond_2
    const/16 v8, 0xa

    .line 81
    if-ge v0, v8, :cond_3

    :goto_2
    const/4 v8, 0x4

    .line 84
    if-ne v7, v8, :cond_4

    .line 75
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    :cond_3
    rsub-int/lit8 v8, v7, 0x4

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v5, v8

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    .line 87
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    goto :goto_3

    .line 92
    .end local v0    # "bestMatch":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 97
    .restart local v1    # "checkDigit":I
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 12
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "extensionStartRange"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 43
    iget-object v3, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 44
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-virtual {p0, p2, p3, v3}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    .line 47
    .local v0, "end":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 51
    .local v1, "extensionData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v2, Lcom/google/zxing/Result;

    const/4 v5, 0x2

    .line 53
    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    .line 54
    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v7, p3, v9

    aget v8, p3, v10

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v9

    .line 55
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v0

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v10

    .line 57
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    .line 51
    invoke-direct {v2, v4, v11, v5, v6}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 58
    .local v2, "extensionResult":Lcom/google/zxing/Result;
    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-object v2

    .line 59
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    goto :goto_0
.end method
