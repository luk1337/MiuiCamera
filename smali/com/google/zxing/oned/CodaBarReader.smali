.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string/jumbo v0, "0123456789-$:/.+ABCD"

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    .line 50
    new-array v0, v0, [I

    .line 51
    aput v3, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v5

    const/16 v1, 0x9

    aput v1, v0, v6

    const/16 v1, 0x60

    aput v1, v0, v3

    const/16 v1, 0x12

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x42

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x21

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    .line 52
    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xe

    aput v2, v0, v1

    .line 50
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    new-array v0, v7, [C

    const/16 v1, 0x41

    aput-char v1, v0, v4

    const/16 v1, 0x42

    aput-char v1, v0, v5

    const/16 v1, 0x43

    aput-char v1, v0, v6

    const/16 v1, 0x44

    aput-char v1, v0, v3

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    .line 75
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 77
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .prologue
    const/4 v2, 0x0

    .line 282
    if-nez p0, :cond_1

    .line 289
    :cond_0
    return v2

    .line 283
    :cond_1
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v0, p0, v1

    .line 284
    .local v0, "c":C
    if-eq v0, p1, :cond_2

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private counterAppend(I)V
    .locals 4
    .param p1, "e"    # I

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v1, v2

    .line 255
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 256
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 258
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    goto :goto_0
.end method

.method private findStartPattern()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 264
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v4, :cond_5

    .line 265
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v0

    .local v0, "charOffset":I
    const/4 v4, -0x1

    .line 266
    if-ne v0, v4, :cond_1

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 266
    :cond_1
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v5, v5, v0

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 270
    .local v3, "patternSize":I
    move v2, v1

    .local v2, "j":I
    :goto_2
    add-int/lit8 v4, v1, 0x7

    if-ge v2, v4, :cond_2

    .line 271
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    .line 273
    if-ne v1, v4, :cond_4

    .line 274
    :cond_3
    return v1

    .line 273
    :cond_4
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    div-int/lit8 v5, v3, 0x2

    if-ge v4, v5, :cond_3

    goto :goto_1

    .line 278
    .end local v0    # "charOffset":I
    .end local v2    # "j":I
    .end local v3    # "patternSize":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    iput v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 233
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v2

    .line 234
    .local v2, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 235
    .local v1, "end":I
    if-ge v2, v1, :cond_0

    .line 238
    const/4 v3, 0x1

    .local v3, "isWhite":Z
    const/4 v0, 0x0

    .line 240
    .end local v3    # "isWhite":Z
    .local v0, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 241
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    if-nez v5, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    const/4 v0, 0x1

    .line 246
    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 248
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "count":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 242
    .restart local v0    # "count":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 246
    goto :goto_1

    .line 250
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 251
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 15
    .param p1, "position"    # I

    .prologue
    .line 294
    add-int/lit8 v2, p1, 0x7

    .line 295
    .local v2, "end":I
    iget v14, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v2, v14, :cond_0

    .line 299
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .local v10, "theCounters":[I
    const/4 v5, 0x0

    .local v5, "maxBar":I
    const v7, 0x7fffffff

    .line 303
    .local v7, "minBar":I
    move/from16 v4, p1

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 304
    aget v1, v10, v4

    .line 305
    .local v1, "currentCounter":I
    if-lt v1, v7, :cond_1

    .line 308
    :goto_1
    if-gt v1, v5, :cond_2

    .line 303
    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .end local v1    # "currentCounter":I
    .end local v4    # "j":I
    .end local v5    # "maxBar":I
    .end local v7    # "minBar":I
    .end local v10    # "theCounters":[I
    :cond_0
    const/4 v14, -0x1

    .line 296
    return v14

    .line 306
    .restart local v1    # "currentCounter":I
    .restart local v4    # "j":I
    .restart local v5    # "maxBar":I
    .restart local v7    # "minBar":I
    .restart local v10    # "theCounters":[I
    :cond_1
    move v7, v1

    goto :goto_1

    .line 309
    :cond_2
    move v5, v1

    goto :goto_2

    .line 312
    .end local v1    # "currentCounter":I
    :cond_3
    add-int v14, v7, v5

    div-int/lit8 v12, v14, 0x2

    .local v12, "thresholdBar":I
    const/4 v6, 0x0

    .local v6, "maxSpace":I
    const v8, 0x7fffffff

    .line 316
    .local v8, "minSpace":I
    add-int/lit8 v4, p1, 0x1

    :goto_3
    if-ge v4, v2, :cond_6

    .line 317
    aget v1, v10, v4

    .line 318
    .restart local v1    # "currentCounter":I
    if-lt v1, v8, :cond_4

    .line 321
    :goto_4
    if-gt v1, v6, :cond_5

    .line 316
    :goto_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 319
    :cond_4
    move v8, v1

    goto :goto_4

    .line 322
    :cond_5
    move v6, v1

    goto :goto_5

    .line 325
    .end local v1    # "currentCounter":I
    :cond_6
    add-int v14, v8, v6

    div-int/lit8 v13, v14, 0x2

    .local v13, "thresholdSpace":I
    const/16 v0, 0x80

    .local v0, "bitmask":I
    const/4 v9, 0x0

    .local v9, "pattern":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    const/4 v14, 0x7

    .line 329
    if-ge v3, v14, :cond_9

    .line 330
    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_7

    move v11, v13

    .line 331
    .local v11, "threshold":I
    :goto_7
    shr-int/lit8 v0, v0, 0x1

    .line 332
    add-int v14, p1, v3

    aget v14, v10, v14

    if-gt v14, v11, :cond_8

    .line 329
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .end local v11    # "threshold":I
    :cond_7
    move v11, v12

    .line 330
    goto :goto_7

    .line 333
    .restart local v11    # "threshold":I
    :cond_8
    or-int/2addr v9, v0

    goto :goto_8

    .end local v11    # "threshold":I
    :cond_9
    const/4 v3, 0x0

    .line 337
    :goto_9
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v14, v14

    if-ge v3, v14, :cond_b

    .line 338
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v14, v14, v3

    if-eq v14, v9, :cond_a

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 339
    :cond_a
    return v3

    :cond_b
    const/4 v14, -0x1

    .line 342
    return v14
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
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
    .line 82
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([II)V

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v10

    .line 85
    .local v10, "startOffset":I
    move v7, v10

    .line 87
    .local v7, "nextStart":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    .local v2, "charOffset":I
    const/4 v13, -0x1

    .line 90
    if-eq v2, v13, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v7, v7, 0x8

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_3

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 88
    if-lt v7, v13, :cond_0

    .line 106
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v14, v7, -0x1

    aget v12, v13, v14

    .local v12, "trailingWhitespace":I
    const/4 v5, 0x0

    .local v5, "lastPatternSize":I
    const/4 v4, -0x8

    .local v4, "i":I
    :goto_1
    const/4 v13, -0x1

    .line 108
    if-ge v4, v13, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v14, v7, v4

    aget v13, v13, v14

    add-int/2addr v5, v13

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    .end local v4    # "i":I
    .end local v5    # "lastPatternSize":I
    .end local v12    # "trailingWhitespace":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 100
    :cond_3
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v14, v14, v2

    invoke-static {v13, v14}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    .line 115
    .restart local v4    # "i":I
    .restart local v5    # "lastPatternSize":I
    .restart local v12    # "trailingWhitespace":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v7, v13, :cond_6

    .line 119
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    const/4 v4, 0x0

    .line 122
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-ge v4, v13, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    aget-char v14, v14, v15

    invoke-virtual {v13, v4, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    :cond_6
    div-int/lit8 v13, v5, 0x2

    if-ge v12, v13, :cond_5

    .line 116
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 126
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    .line 127
    .local v11, "startchar":C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 131
    .local v3, "endchar":C
    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v13, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_b

    .line 141
    if-nez p3, :cond_c

    .line 142
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v9, 0x0

    .local v9, "runningCount":I
    const/4 v4, 0x0

    .line 147
    :goto_4
    if-ge v4, v10, :cond_d

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 128
    .end local v3    # "endchar":C
    .end local v9    # "runningCount":I
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 132
    .restart local v3    # "endchar":C
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 138
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v13

    throw v13

    .line 141
    :cond_c
    sget-object v13, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    .line 150
    .restart local v9    # "runningCount":I
    :cond_d
    int-to-float v6, v9

    .line 151
    .local v6, "left":F
    move v4, v10

    :goto_5
    add-int/lit8 v13, v7, -0x1

    if-ge v4, v13, :cond_e

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v13, v13, v4

    add-int/2addr v9, v13

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 154
    :cond_e
    int-to-float v8, v9

    .line 155
    .local v8, "right":F
    new-instance v13, Lcom/google/zxing/Result;

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    .line 158
    new-array v15, v15, [Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    .line 159
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 160
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    .line 161
    sget-object v16, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/16 v17, 0x0

    .line 155
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v13, v14, v0, v15, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v13
.end method

.method validatePattern(I)V
    .locals 15
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    .line 166
    new-array v10, v11, [I

    .local v10, "sizes":[I
    const/4 v11, 0x4

    .line 167
    new-array v1, v11, [I

    .line 168
    .local v1, "counts":[I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 172
    .local v2, "end":I
    move/from16 v8, p1

    .local v8, "pos":I
    const/4 v3, 0x0

    .line 174
    .local v3, "i":I
    :goto_0
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    .local v7, "pattern":I
    const/4 v4, 0x6

    .line 175
    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 178
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 179
    .local v0, "category":I
    aget v11, v10, v0

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v8, v4

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v10, v0

    .line 180
    aget v11, v1, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v0

    .line 181
    shr-int/lit8 v7, v7, 0x1

    .line 175
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 183
    .end local v0    # "category":I
    :cond_0
    if-ge v3, v2, :cond_1

    .line 187
    add-int/lit8 v8, v8, 0x8

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x4

    .line 191
    new-array v5, v11, [F

    .local v5, "maxes":[F
    const/4 v11, 0x4

    .line 192
    new-array v6, v11, [F

    .local v6, "mins":[F
    const/4 v3, 0x0

    :goto_2
    const/4 v11, 0x2

    .line 196
    if-ge v3, v11, :cond_2

    const/4 v11, 0x0

    .line 197
    aput v11, v6, v3

    .line 198
    add-int/lit8 v11, v3, 0x2

    aget v12, v10, v3

    int-to-float v12, v12

    aget v13, v1, v3

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v10, v13

    int-to-float v13, v13

    add-int/lit8 v14, v3, 0x2

    aget v14, v1, v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v6, v11

    .line 199
    add-int/lit8 v11, v3, 0x2

    aget v11, v6, v11

    aput v11, v5, v3

    .line 200
    add-int/lit8 v11, v3, 0x2

    add-int/lit8 v12, v3, 0x2

    aget v12, v10, v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    add-float/2addr v12, v13

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v5, v11

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 204
    :cond_2
    move/from16 v8, p1

    const/4 v3, 0x0

    .line 206
    :goto_3
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v7, v11, v12

    const/4 v4, 0x6

    .line 207
    :goto_4
    if-ltz v4, :cond_6

    .line 210
    and-int/lit8 v11, v4, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int v0, v11, v12

    .line 211
    .restart local v0    # "category":I
    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v8, v4

    aget v9, v11, v12

    .line 212
    .local v9, "size":I
    int-to-float v11, v9

    aget v12, v6, v0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    const/4 v11, 0x1

    :goto_5
    if-nez v11, :cond_3

    int-to-float v11, v9

    aget v12, v5, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 213
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 212
    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    .line 215
    :cond_5
    shr-int/lit8 v7, v7, 0x1

    .line 207
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 217
    .end local v0    # "category":I
    .end local v9    # "size":I
    :cond_6
    if-ge v3, v2, :cond_7

    .line 220
    add-int/lit8 v8, v8, 0x8

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 222
    :cond_7
    return-void
.end method
