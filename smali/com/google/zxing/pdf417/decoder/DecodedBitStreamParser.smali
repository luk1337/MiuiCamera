.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xd

    const/16 v5, 0x9

    const/16 v2, 0x1d

    .line 67
    new-array v2, v2, [C

    .line 68
    const/16 v3, 0x3b

    aput-char v3, v2, v7

    const/16 v3, 0x3c

    aput-char v3, v2, v8

    const/4 v3, 0x2

    const/16 v4, 0x3e

    aput-char v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x40

    aput-char v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x5b

    aput-char v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x5c

    aput-char v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x5d

    aput-char v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x5f

    aput-char v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x60

    aput-char v4, v2, v3

    const/16 v3, 0x7e

    aput-char v3, v2, v5

    const/16 v3, 0x21

    aput-char v3, v2, v9

    const/16 v3, 0xb

    .line 69
    aput-char v6, v2, v3

    const/16 v3, 0xc

    aput-char v5, v2, v3

    const/16 v3, 0x2c

    aput-char v3, v2, v6

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-char v4, v2, v3

    const/16 v3, 0xf

    aput-char v9, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-char v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-char v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x22

    aput-char v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x7c

    aput-char v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-char v4, v2, v3

    const/16 v3, 0x17

    .line 70
    const/16 v4, 0x28

    aput-char v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x29

    aput-char v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x3f

    aput-char v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x7b

    aput-char v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x7d

    aput-char v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x27

    aput-char v4, v2, v3

    .line 67
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v2, 0x19

    .line 72
    new-array v2, v2, [C

    .line 73
    const/16 v3, 0x30

    aput-char v3, v2, v7

    const/16 v3, 0x31

    aput-char v3, v2, v8

    const/4 v3, 0x2

    const/16 v4, 0x32

    aput-char v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x33

    aput-char v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x34

    aput-char v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x35

    aput-char v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x36

    aput-char v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x37

    aput-char v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x38

    aput-char v4, v2, v3

    const/16 v3, 0x39

    aput-char v3, v2, v5

    const/16 v3, 0x26

    aput-char v3, v2, v9

    const/16 v3, 0xb

    .line 74
    aput-char v6, v2, v3

    const/16 v3, 0xc

    aput-char v5, v2, v3

    const/16 v3, 0x2c

    aput-char v3, v2, v6

    const/16 v3, 0xe

    const/16 v4, 0x3a

    aput-char v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x23

    aput-char v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d

    aput-char v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x2e

    aput-char v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x24

    aput-char v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x2b

    aput-char v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x25

    aput-char v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x2a

    aput-char v4, v2, v3

    const/16 v3, 0x17

    .line 75
    const/16 v4, 0x3d

    aput-char v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x5e

    aput-char v4, v2, v3

    .line 72
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string/jumbo v2, "ISO-8859-1"

    .line 77
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v2, 0x10

    .line 85
    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v3, v2, v7

    const-wide/16 v2, 0x384

    .line 87
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 88
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    aput-object v1, v2, v8

    const/4 v0, 0x2

    .line 89
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 90
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 448
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v7, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x385

    .line 449
    move/from16 v0, p0

    if-eq v0, v14, :cond_0

    const/16 v14, 0x39c

    .line 497
    move/from16 v0, p0

    if-eq v0, v14, :cond_b

    .line 532
    :goto_0
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return p3

    :cond_0
    const/4 v5, 0x0

    .local v5, "count":I
    const-wide/16 v12, 0x0

    .local v12, "value":J
    const/4 v14, 0x6

    .line 454
    new-array v2, v14, [I

    .line 455
    .local v2, "byteCompactedCodewords":[I
    const/4 v8, 0x0

    .line 456
    .local v8, "end":Z
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p3

    .local v11, "nextCode":I
    move v6, v5

    .end local v5    # "count":I
    .local v6, "count":I
    :goto_1
    const/4 v14, 0x0

    .line 457
    aget v14, p1, v14

    if-lt v4, v14, :cond_3

    :cond_1
    const/4 v14, 0x0

    .line 486
    aget v14, p1, v14

    if-eq v4, v14, :cond_9

    :cond_2
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    :goto_2
    const/4 v9, 0x0

    .line 493
    .local v9, "i":I
    :goto_3
    if-ge v9, v5, :cond_a

    .line 494
    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 457
    .end local v5    # "count":I
    .end local v9    # "i":I
    .restart local v6    # "count":I
    :cond_3
    if-nez v8, :cond_1

    .line 458
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    aput v11, v2, v6

    const-wide/16 v14, 0x384

    .line 460
    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 461
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    aget v11, p1, v4

    const/16 v14, 0x384

    .line 463
    if-ne v11, v14, :cond_5

    .line 470
    :cond_4
    add-int/lit8 p3, p3, -0x1

    .line 471
    const/4 v8, 0x1

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    move/from16 v4, p3

    .line 472
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_1

    .end local v4    # "codeIndex":I
    .end local v6    # "count":I
    .restart local v5    # "count":I
    .restart local p3    # "codeIndex":I
    :cond_5
    const/16 v14, 0x385

    .line 464
    if-eq v11, v14, :cond_4

    const/16 v14, 0x386

    .line 465
    if-eq v11, v14, :cond_4

    const/16 v14, 0x39c

    .line 466
    if-eq v11, v14, :cond_4

    const/16 v14, 0x3a0

    .line 467
    if-eq v11, v14, :cond_4

    const/16 v14, 0x39b

    .line 468
    if-eq v11, v14, :cond_4

    const/16 v14, 0x39a

    .line 469
    if-eq v11, v14, :cond_4

    .line 473
    rem-int/lit8 v14, v5, 0x5

    if-eqz v14, :cond_7

    :cond_6
    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    move/from16 v4, p3

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_1

    .end local v4    # "codeIndex":I
    .end local v6    # "count":I
    .restart local v5    # "count":I
    .restart local p3    # "codeIndex":I
    :cond_7
    if-lez v5, :cond_6

    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    const/4 v14, 0x6

    .line 476
    if-ge v10, v14, :cond_8

    .line 477
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    move v6, v5

    .end local v5    # "count":I
    .restart local v6    # "count":I
    move/from16 v4, p3

    .line 480
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_1

    .end local v10    # "j":I
    :cond_9
    const/16 v14, 0x384

    .line 486
    if-ge v11, v14, :cond_2

    .line 487
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "count":I
    .restart local v5    # "count":I
    aput v11, v2, v6

    goto :goto_2

    .restart local v9    # "i":I
    :cond_a
    move/from16 p3, v4

    .line 497
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0

    .end local v2    # "byteCompactedCodewords":[I
    .end local v5    # "count":I
    .end local v8    # "end":Z
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .end local v12    # "value":J
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "count":I
    const-wide/16 v12, 0x0

    .line 502
    .restart local v12    # "value":J
    const/4 v8, 0x0

    .restart local v8    # "end":Z
    move/from16 v4, p3

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :goto_5
    const/4 v14, 0x0

    .line 503
    aget v14, p1, v14

    if-lt v4, v14, :cond_c

    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_c
    if-nez v8, :cond_13

    .line 504
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    aget v3, p1, v4

    .local v3, "code":I
    const/16 v14, 0x384

    .line 505
    if-lt v3, v14, :cond_f

    const/16 v14, 0x384

    .line 510
    if-ne v3, v14, :cond_10

    .line 517
    :cond_d
    add-int/lit8 p3, p3, -0x1

    .line 518
    const/4 v8, 0x1

    .line 521
    :goto_6
    rem-int/lit8 v14, v5, 0x5

    if-eqz v14, :cond_11

    :cond_e
    move/from16 v4, p3

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_5

    .line 506
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_f
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v14, 0x384

    .line 508
    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    goto :goto_6

    :cond_10
    const/16 v14, 0x385

    .line 511
    if-eq v3, v14, :cond_d

    const/16 v14, 0x386

    .line 512
    if-eq v3, v14, :cond_d

    const/16 v14, 0x39c

    .line 513
    if-eq v3, v14, :cond_d

    const/16 v14, 0x3a0

    .line 514
    if-eq v3, v14, :cond_d

    const/16 v14, 0x39b

    .line 515
    if-eq v3, v14, :cond_d

    const/16 v14, 0x39a

    .line 516
    if-eq v3, v14, :cond_d

    goto :goto_6

    .line 521
    :cond_11
    if-lez v5, :cond_e

    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_7
    const/4 v14, 0x6

    .line 524
    if-ge v10, v14, :cond_12

    .line 525
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    move/from16 v4, p3

    .line 528
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_5

    .end local v3    # "code":I
    .end local v10    # "j":I
    :cond_13
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v6, "result":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .local v5, "encoding":Ljava/nio/charset/Charset;
    const/4 v8, 0x1

    .line 104
    const/4 v2, 0x2

    .local v2, "codeIndex":I
    aget v1, p0, v8

    .line 105
    .local v1, "code":I
    new-instance v7, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v7, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v3, v2

    .line 106
    .end local v2    # "codeIndex":I
    .local v3, "codeIndex":I
    :goto_0
    aget v8, p0, v9

    if-ge v3, v8, :cond_1

    .line 107
    sparse-switch v1, :sswitch_data_0

    .line 145
    add-int/lit8 v2, v3, -0x1

    .line 146
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 149
    :goto_1
    array-length v8, p0

    if-lt v2, v8, :cond_0

    .line 152
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 109
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_0
    invoke-static {p0, v3, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 113
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_1
    invoke-static {v1, p0, v5, v3, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 116
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v8, p0, v3

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_3
    invoke-static {p0, v3, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 123
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v8, p0, v3

    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 124
    .local v0, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_1

    .line 128
    .end local v0    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x2

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 132
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 135
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_7
    invoke-static {p0, v3, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 140
    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 150
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v1, p0, v2

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v10, v8, v10, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 159
    .local v4, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v4, v7}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 160
    return-object v4

    .line 156
    .end local v4    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 630
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 631
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 632
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 638
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 636
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 165
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-gt v9, v10, :cond_0

    const/4 v9, 0x2

    .line 169
    new-array v8, v9, [I

    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x2

    .line 170
    if-ge v7, v9, :cond_1

    .line 171
    aget v9, p0, p1

    aput v9, v8, v7

    .line 170
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 167
    .end local v7    # "i":I
    .end local v8    # "segmentIndexArray":[I
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .restart local v7    # "i":I
    .restart local v8    # "segmentIndexArray":[I
    :cond_1
    const/4 v9, 0x2

    .line 173
    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 180
    aget v9, p0, p1

    const/16 v10, 0x39b

    if-eq v9, v10, :cond_2

    .line 204
    aget v9, p0, p1

    const/16 v10, 0x39a

    if-eq v9, v10, :cond_6

    .line 209
    :goto_1
    return p1

    .line 181
    :cond_2
    add-int/lit8 p1, p1, 0x1

    const/4 v9, 0x0

    .line 182
    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 185
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .local v5, "end":Z
    move v2, v1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    move v4, p1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    :goto_2
    const/4 v9, 0x0

    .line 186
    aget v9, p0, v9

    if-lt v4, v9, :cond_4

    .line 203
    :cond_3
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    move p1, v4

    .line 204
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 186
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_4
    if-nez v5, :cond_3

    .line 187
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v3, p0, v4

    .local v3, "code":I
    const/16 v9, 0x384

    .line 188
    if-lt v3, v9, :cond_5

    .line 191
    packed-switch v3, :pswitch_data_0

    .line 198
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 189
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    aput v3, v0, v2

    move v2, v1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .restart local v2    # "additionalOptionCodeWordsIndex":I
    move v4, p1

    .line 190
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_2

    .line 193
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 194
    add-int/lit8 p1, p1, 0x1

    .line 195
    const/4 v5, 0x1

    move v4, p1

    .line 196
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    goto :goto_2

    .line 205
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v2    # "additionalOptionCodeWordsIndex":I
    .end local v3    # "code":I
    .end local v4    # "codeIndex":I
    .end local v5    # "end":Z
    .restart local p1    # "codeIndex":I
    :cond_6
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 206
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x1b

    const/16 v10, 0x391

    const/16 v9, 0x384

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 294
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 295
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 297
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1d

    .line 298
    aget v4, p0, v1

    .line 299
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 300
    .local v0, "ch":C
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 423
    .end local v0    # "ch":C
    :cond_0
    :goto_1
    if-nez v0, :cond_1c

    .line 427
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .restart local v0    # "ch":C
    :pswitch_0
    if-lt v4, v7, :cond_1

    .line 307
    if-eq v4, v7, :cond_2

    .line 309
    if-eq v4, v11, :cond_3

    const/16 v5, 0x1c

    .line 311
    if-eq v4, v5, :cond_4

    .line 313
    if-eq v4, v8, :cond_5

    .line 317
    if-eq v4, v10, :cond_6

    .line 319
    if-ne v4, v9, :cond_0

    .line 320
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 305
    :cond_1
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .local v0, "ch":C
    goto :goto_1

    .line 308
    .local v0, "ch":C
    :cond_2
    const/16 v0, 0x20

    goto :goto_1

    .line 310
    :cond_3
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 312
    :cond_4
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 315
    :cond_5
    move-object v2, v3

    .line 316
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 318
    :cond_6
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    :pswitch_1
    if-lt v4, v7, :cond_7

    .line 330
    if-eq v4, v7, :cond_8

    .line 332
    if-eq v4, v11, :cond_9

    const/16 v5, 0x1c

    .line 336
    if-eq v4, v5, :cond_a

    .line 338
    if-eq v4, v8, :cond_b

    .line 342
    if-eq v4, v10, :cond_c

    .line 345
    if-ne v4, v9, :cond_0

    .line 346
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 328
    :cond_7
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    .local v0, "ch":C
    goto :goto_1

    .line 331
    .local v0, "ch":C
    :cond_8
    const/16 v0, 0x20

    goto :goto_1

    .line 334
    :cond_9
    move-object v2, v3

    .line 335
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 337
    :cond_a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 340
    :cond_b
    move-object v2, v3

    .line 341
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 344
    :cond_c
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x19

    .line 353
    if-lt v4, v5, :cond_d

    const/16 v5, 0x19

    .line 356
    if-eq v4, v5, :cond_e

    .line 358
    if-eq v4, v7, :cond_f

    .line 360
    if-eq v4, v11, :cond_10

    const/16 v5, 0x1c

    .line 362
    if-eq v4, v5, :cond_11

    .line 364
    if-eq v4, v8, :cond_12

    .line 368
    if-eq v4, v10, :cond_13

    .line 370
    if-ne v4, v9, :cond_0

    .line 371
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 354
    :cond_d
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    .local v0, "ch":C
    goto :goto_1

    .line 357
    .local v0, "ch":C
    :cond_e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 359
    :cond_f
    const/16 v0, 0x20

    goto :goto_1

    .line 361
    :cond_10
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 363
    :cond_11
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 366
    :cond_12
    move-object v2, v3

    .line 367
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 369
    :cond_13
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 378
    :pswitch_3
    if-lt v4, v8, :cond_14

    .line 381
    if-eq v4, v8, :cond_15

    .line 383
    if-eq v4, v10, :cond_16

    .line 385
    if-ne v4, v9, :cond_0

    .line 386
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 379
    :cond_14
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .local v0, "ch":C
    goto/16 :goto_1

    .line 382
    .local v0, "ch":C
    :cond_15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 384
    :cond_16
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 393
    :pswitch_4
    move-object v3, v2

    .line 394
    if-lt v4, v7, :cond_17

    .line 397
    if-eq v4, v7, :cond_18

    .line 399
    if-ne v4, v9, :cond_0

    .line 400
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 395
    :cond_17
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .local v0, "ch":C
    goto/16 :goto_1

    .line 398
    .local v0, "ch":C
    :cond_18
    const/16 v0, 0x20

    goto/16 :goto_1

    .line 407
    :pswitch_5
    move-object v3, v2

    .line 408
    if-lt v4, v8, :cond_19

    .line 411
    if-eq v4, v8, :cond_1a

    .line 413
    if-eq v4, v10, :cond_1b

    .line 417
    if-ne v4, v9, :cond_0

    .line 418
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 409
    :cond_19
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .local v0, "ch":C
    goto/16 :goto_1

    .line 412
    .local v0, "ch":C
    :cond_1a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 416
    :cond_1b
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 425
    .end local v0    # "ch":C
    :cond_1c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 429
    .end local v4    # "subModeCh":I
    :cond_1d
    return-void

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 546
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "end":Z
    const/16 v6, 0xf

    .line 548
    new-array v4, v6, [I

    .local v4, "numericCodewords":[I
    move v1, p1

    .line 550
    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    :goto_0
    aget v6, p0, v7

    if-lt v1, v6, :cond_1

    .line 583
    :cond_0
    return v1

    .line 550
    :cond_1
    if-nez v3, :cond_0

    .line 551
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v0, p0, v1

    .line 552
    .local v0, "code":I
    aget v6, p0, v7

    if-eq p1, v6, :cond_4

    .line 555
    :goto_1
    if-lt v0, v8, :cond_5

    .line 559
    if-ne v0, v8, :cond_6

    .line 565
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 566
    const/4 v3, 0x1

    .line 569
    :goto_2
    rem-int/lit8 v6, v2, 0xf

    if-nez v6, :cond_7

    .line 576
    :cond_3
    if-gtz v2, :cond_8

    move v1, p1

    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 553
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 556
    :cond_5
    aput v0, v4, v2

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0x385

    .line 560
    if-eq v0, v6, :cond_2

    const/16 v6, 0x39c

    .line 561
    if-eq v0, v6, :cond_2

    const/16 v6, 0x3a0

    .line 562
    if-eq v0, v6, :cond_2

    const/16 v6, 0x39b

    .line 563
    if-eq v0, v6, :cond_2

    const/16 v6, 0x39a

    .line 564
    if-eq v0, v6, :cond_2

    goto :goto_2

    :cond_7
    const/16 v6, 0x386

    .line 570
    if-eq v0, v6, :cond_3

    .line 571
    if-nez v3, :cond_3

    move v1, p1

    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 577
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :cond_8
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v1, p1

    .line 579
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 224
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .line 226
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [I

    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 229
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "end":Z
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    move v2, p1

    .line 230
    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    :goto_0
    aget v7, p0, v9

    if-lt v2, v7, :cond_1

    .line 266
    :cond_0
    invoke-static {v6, v0, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 267
    return v2

    .line 230
    :cond_1
    if-nez v3, :cond_0

    .line 231
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 232
    .local v1, "code":I
    if-lt v1, v10, :cond_2

    .line 237
    sparse-switch v1, :sswitch_data_0

    move v2, p1

    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .line 233
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :cond_2
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v5

    .line 234
    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 235
    add-int/lit8 v4, v5, 0x2

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    move v2, p1

    .line 236
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .line 240
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput v10, v6, v5

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    move v2, p1

    .line 241
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .line 248
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, p1, -0x1

    .line 249
    const/4 v3, 0x1

    move v2, p1

    .line 250
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    .line 258
    aput v7, v6, v5

    .line 259
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v1, p0, p1

    .line 260
    aput v1, v0, v5

    .line 261
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
