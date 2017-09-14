.class public Lcom/adobe/xmp/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static xmlNameChars:[Z

.field private static xmlNameStartChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/adobe/xmp/impl/Utils;->initCharTables()V

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkUUIDFormat(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 274
    const/4 v2, 0x1

    .line 275
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 276
    .local v0, "delimCnt":I
    const/4 v1, 0x0

    .line 278
    .local v1, "delimPos":I
    if-nez p0, :cond_0

    .line 280
    return v3

    .line 283
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    if-eqz v2, :cond_4

    .line 289
    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 283
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_3
    const/16 v4, 0x12

    if-eq v1, v4, :cond_1

    const/16 v4, 0x17

    if-eq v1, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 288
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 293
    :cond_5
    if-eqz v2, :cond_6

    const/4 v4, 0x4

    if-ne v4, v0, :cond_6

    const/16 v4, 0x24

    if-ne v4, v1, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3
.end method

.method public static escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "forAttribute"    # Z
    .param p2, "escapeWhitespaces"    # Z

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, "needsEscaping":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 376
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 378
    .local v1, "c":C
    const/16 v4, 0x3c

    if-eq v1, v4, :cond_0

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_2

    .line 382
    :cond_0
    const/4 v3, 0x1

    .line 387
    .end local v1    # "c":C
    :cond_1
    if-nez v3, :cond_5

    .line 390
    return-object p0

    .line 378
    .restart local v1    # "c":C
    :cond_2
    const/16 v4, 0x26

    if-eq v1, v4, :cond_0

    .line 379
    if-eqz p2, :cond_3

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-eq v1, v9, :cond_0

    .line 380
    :cond_3
    if-eqz p1, :cond_4

    const/16 v4, 0x22

    if-eq v1, v4, :cond_0

    .line 374
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "c":C
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 396
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    .restart local v1    # "c":C
    if-eqz p2, :cond_8

    if-eq v1, v7, :cond_6

    if-ne v1, v8, :cond_7

    :cond_6
    move v4, v5

    :goto_2
    if-nez v4, :cond_a

    .line 401
    sparse-switch v1, :sswitch_data_0

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_7
    if-eq v1, v9, :cond_6

    :cond_8
    move v4, v6

    goto :goto_2

    .line 405
    :sswitch_0
    const-string/jumbo v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 406
    :sswitch_1
    const-string/jumbo v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 407
    :sswitch_2
    const-string/jumbo v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 408
    :sswitch_3
    if-eqz p1, :cond_9

    const-string/jumbo v4, "&quot;"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const-string/jumbo v4, "\""

    goto :goto_4

    .line 416
    :cond_a
    const-string/jumbo v4, "&#x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 421
    .end local v1    # "c":C
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static initCharTables()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 486
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 488
    const/4 v0, 0x0

    .local v0, "ch":C
    :goto_0
    sget-object v1, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 490
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    .line 491
    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    :cond_0
    move v1, v2

    .line 490
    :goto_1
    aput-boolean v1, v4, v0

    .line 498
    sget-object v4, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    .line 499
    const/16 v1, 0x61

    if-gt v1, v0, :cond_6

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_6

    :cond_1
    move v1, v2

    .line 498
    :goto_2
    aput-boolean v1, v4, v0

    .line 488
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 492
    :cond_2
    if-gt v6, v0, :cond_3

    if-le v0, v7, :cond_0

    .line 493
    :cond_3
    if-eq v0, v5, :cond_0

    .line 494
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    .line 495
    const/16 v1, 0xc0

    if-gt v1, v0, :cond_4

    const/16 v1, 0xd6

    if-le v0, v1, :cond_0

    .line 496
    :cond_4
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_5

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    .line 500
    :cond_6
    if-gt v6, v0, :cond_7

    if-le v0, v7, :cond_1

    .line 501
    :cond_7
    const/16 v1, 0x30

    if-gt v1, v0, :cond_8

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    .line 502
    :cond_8
    if-eq v0, v5, :cond_1

    .line 503
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    .line 504
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    .line 505
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    .line 506
    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    .line 507
    const/16 v1, 0xc0

    if-gt v1, v0, :cond_9

    const/16 v1, 0xd6

    if-le v0, v1, :cond_1

    .line 508
    :cond_9
    const/16 v1, 0xd8

    if-gt v1, v0, :cond_a

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_a

    move v1, v2

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_2

    .line 483
    :cond_b
    return-void
.end method

.method static isControlChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 353
    const/16 v1, 0x1f

    if-le p0, v1, :cond_0

    const/16 v1, 0x7f

    if-ne p0, v1, :cond_1

    .line 354
    :cond_0
    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    .line 353
    :cond_1
    return v0
.end method

.method private static isNameChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 476
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameChars:[Z

    aget-boolean v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNameStartChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 459
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/adobe/xmp/impl/Utils;->xmlNameStartChars:[Z

    aget-boolean v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXMLName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    return v2

    .line 310
    .end local v0    # "i":I
    :cond_1
    return v2

    .line 312
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isXMLNameNS(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3a

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 334
    :cond_0
    return v2

    .line 336
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->isNameChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    .line 340
    :cond_2
    return v2

    .line 336
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public static normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v3, "x-default"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    return-object p0

    .line 70
    :cond_0
    const/4 v2, 0x1

    .line 71
    .local v2, "subTag":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 88
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :sswitch_1
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method static removeControlChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/Utils;->isControlChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "selector"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, "eq":I
    const/4 v3, 0x1

    .line 126
    .local v3, "pos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_0

    .line 128
    const/4 v3, 0x2

    .line 130
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 135
    .local v4, "quote":C
    add-int/lit8 v3, v3, 0x1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x2

    .line 137
    .local v0, "end":I
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v6, v0, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v5, "value":Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_2

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_1

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    return-object v6
.end method
