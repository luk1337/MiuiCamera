.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v0, 0x20

    .line 34
    new-array v0, v0, [[I

    .line 35
    new-array v1, v4, [I

    const/16 v2, 0x5412

    aput v2, v1, v6

    aput-object v1, v0, v6

    .line 36
    new-array v1, v4, [I

    const/16 v2, 0x5125

    aput v2, v1, v6

    aput v5, v1, v5

    aput-object v1, v0, v5

    .line 37
    new-array v1, v4, [I

    const/16 v2, 0x5e7c

    aput v2, v1, v6

    aput v4, v1, v5

    aput-object v1, v0, v4

    .line 38
    new-array v1, v4, [I

    const/16 v2, 0x5b4b

    aput v2, v1, v6

    aput v7, v1, v5

    aput-object v1, v0, v7

    .line 39
    new-array v1, v4, [I

    const/16 v2, 0x45f9

    aput v2, v1, v6

    aput v8, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 40
    new-array v2, v4, [I

    const/16 v3, 0x40ce

    aput v3, v2, v6

    const/4 v3, 0x5

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 41
    new-array v2, v4, [I

    const/16 v3, 0x4f97

    aput v3, v2, v6

    const/4 v3, 0x6

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 42
    new-array v2, v4, [I

    const/16 v3, 0x4aa0

    aput v3, v2, v6

    const/4 v3, 0x7

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 43
    new-array v2, v4, [I

    const/16 v3, 0x77c4

    aput v3, v2, v6

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 44
    new-array v2, v4, [I

    const/16 v3, 0x72f3

    aput v3, v2, v6

    const/16 v3, 0x9

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 45
    new-array v2, v4, [I

    const/16 v3, 0x7daa

    aput v3, v2, v6

    const/16 v3, 0xa

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 46
    new-array v2, v4, [I

    const/16 v3, 0x789d

    aput v3, v2, v6

    const/16 v3, 0xb

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 47
    new-array v2, v4, [I

    const/16 v3, 0x662f

    aput v3, v2, v6

    const/16 v3, 0xc

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 48
    new-array v2, v4, [I

    const/16 v3, 0x6318

    aput v3, v2, v6

    const/16 v3, 0xd

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 49
    new-array v2, v4, [I

    const/16 v3, 0x6c41

    aput v3, v2, v6

    const/16 v3, 0xe

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 50
    new-array v2, v4, [I

    const/16 v3, 0x6976

    aput v3, v2, v6

    const/16 v3, 0xf

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 51
    new-array v2, v4, [I

    const/16 v3, 0x1689

    aput v3, v2, v6

    const/16 v3, 0x10

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 52
    new-array v2, v4, [I

    const/16 v3, 0x13be

    aput v3, v2, v6

    const/16 v3, 0x11

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 53
    new-array v2, v4, [I

    const/16 v3, 0x1ce7

    aput v3, v2, v6

    const/16 v3, 0x12

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 54
    new-array v2, v4, [I

    const/16 v3, 0x19d0

    aput v3, v2, v6

    const/16 v3, 0x13

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 55
    new-array v2, v4, [I

    const/16 v3, 0x762

    aput v3, v2, v6

    const/16 v3, 0x14

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 56
    new-array v2, v4, [I

    const/16 v3, 0x255

    aput v3, v2, v6

    const/16 v3, 0x15

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 57
    new-array v2, v4, [I

    const/16 v3, 0xd0c

    aput v3, v2, v6

    const/16 v3, 0x16

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 58
    new-array v2, v4, [I

    const/16 v3, 0x83b

    aput v3, v2, v6

    const/16 v3, 0x17

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 59
    new-array v2, v4, [I

    const/16 v3, 0x355f

    aput v3, v2, v6

    const/16 v3, 0x18

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 60
    new-array v2, v4, [I

    const/16 v3, 0x3068

    aput v3, v2, v6

    const/16 v3, 0x19

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 61
    new-array v2, v4, [I

    const/16 v3, 0x3f31

    aput v3, v2, v6

    const/16 v3, 0x1a

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 62
    new-array v2, v4, [I

    const/16 v3, 0x3a06

    aput v3, v2, v6

    const/16 v3, 0x1b

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 63
    new-array v2, v4, [I

    const/16 v3, 0x24b4

    aput v3, v2, v6

    const/16 v3, 0x1c

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 64
    new-array v2, v4, [I

    const/16 v3, 0x2183

    aput v3, v2, v6

    const/16 v3, 0x1d

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 65
    new-array v2, v4, [I

    const/16 v3, 0x2eda

    aput v3, v2, v6

    const/16 v3, 0x1e

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 66
    new-array v2, v4, [I

    const/16 v3, 0x2bed

    aput v3, v2, v6

    const/16 v3, 0x1f

    aput v3, v2, v5

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    const/16 v0, 0x10

    .line 73
    new-array v0, v0, [I

    aput v5, v0, v5

    aput v5, v0, v4

    aput v4, v0, v7

    aput v5, v0, v8

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v7, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v7, v0, v1

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v1, 0xd

    aput v7, v0, v1

    const/16 v1, 0xe

    aput v7, v0, v1

    const/16 v1, 0xf

    aput v8, v0, v1

    .line 72
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    .line 73
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "formatInfo"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 82
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 83
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 3
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    .line 107
    .local v0, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    if-nez v0, :cond_0

    .line 113
    xor-int/lit16 v1, p0, 0x5412

    .line 114
    xor-int/lit16 v2, p1, 0x5412

    .line 113
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    return-object v1

    .line 108
    :cond_0
    return-object v0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 10
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const v0, 0x7fffffff

    .local v0, "bestDifference":I
    const/4 v1, 0x0

    .line 121
    .local v1, "bestFormatInfo":I
    sget-object v7, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_5

    aget-object v3, v7, v5

    .line 122
    .local v3, "decodeInfo":[I
    aget v4, v3, v6

    .line 123
    .local v4, "targetInfo":I
    if-ne v4, p0, :cond_1

    .line 125
    :cond_0
    new-instance v5, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v6, v3, v9

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v5

    .line 123
    :cond_1
    if-eq v4, p1, :cond_0

    .line 127
    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 128
    .local v2, "bitsDifference":I
    if-lt v2, v0, :cond_3

    .line 132
    :goto_1
    if-ne p0, p1, :cond_4

    .line 121
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_3
    aget v1, v3, v9

    .line 130
    move v0, v2

    goto :goto_1

    .line 134
    :cond_4
    invoke-static {p1, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 135
    if-ge v2, v0, :cond_2

    .line 136
    aget v1, v3, v9

    .line 137
    move v0, v2

    goto :goto_2

    .end local v2    # "bitsDifference":I
    .end local v3    # "decodeInfo":[I
    .end local v4    # "targetInfo":I
    :cond_5
    const/4 v5, 0x3

    .line 143
    if-le v0, v5, :cond_6

    const/4 v5, 0x0

    .line 146
    return-object v5

    .line 144
    :cond_6
    new-instance v5, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v5, v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v5
.end method

.method static numBitsDiffering(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 86
    xor-int/2addr p0, p1

    .line 88
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v1, p0, 0xf

    aget v0, v0, v1

    .line 89
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 90
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 91
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 92
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 93
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 94
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    .line 95
    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    .line 88
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 164
    instance-of v1, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 168
    .local v0, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v2, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eq v1, v2, :cond_2

    :cond_0
    return v3

    .line 165
    .end local v0    # "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_1
    return v3

    .line 169
    .restart local v0    # "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_2
    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v2, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v1, v2, :cond_0

    .line 168
    const/4 v1, 0x1

    return v1
.end method

.method getDataMask()B
    .locals 1

    .prologue
    .line 154
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
