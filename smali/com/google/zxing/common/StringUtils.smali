.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string/jumbo v1, "SJIS"

    .line 39
    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    .line 38
    :cond_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 40
    return-void

    :cond_1
    const-string/jumbo v1, "EUC_JP"

    sget-object v2, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 23
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-nez p1, :cond_6

    .line 60
    :cond_0
    move-object/from16 v0, p0

    array-length v8, v0

    .line 61
    .local v8, "length":I
    const/4 v2, 0x1

    .line 62
    .local v2, "canBeISO88591":Z
    const/4 v3, 0x1

    .line 63
    .local v3, "canBeShiftJIS":Z
    const/4 v4, 0x1

    .local v4, "canBeUTF8":Z
    const/16 v18, 0x0

    .local v18, "utf8BytesLeft":I
    const/4 v15, 0x0

    .local v15, "utf2BytesChars":I
    const/16 v16, 0x0

    .local v16, "utf3BytesChars":I
    const/16 v17, 0x0

    .local v17, "utf4BytesChars":I
    const/4 v9, 0x0

    .local v9, "sjisBytesLeft":I
    const/4 v12, 0x0

    .local v12, "sjisKatakanaChars":I
    const/4 v11, 0x0

    .local v11, "sjisCurKatakanaWordLength":I
    const/4 v10, 0x0

    .local v10, "sjisCurDoubleBytesWordLength":I
    const/4 v14, 0x0

    .local v14, "sjisMaxKatakanaWordLength":I
    const/4 v13, 0x0

    .local v13, "sjisMaxDoubleBytesWordLength":I
    const/4 v7, 0x0

    .line 81
    .local v7, "isoHighOther":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_7

    :cond_1
    const/16 v19, 0x0

    .local v19, "utf8bom":Z
    :goto_0
    const/4 v6, 0x0

    .line 87
    .local v6, "i":I
    :goto_1
    if-lt v6, v8, :cond_8

    .line 174
    :cond_2
    if-nez v4, :cond_23

    .line 177
    :cond_3
    :goto_2
    if-nez v3, :cond_24

    .line 182
    :cond_4
    :goto_3
    if-nez v4, :cond_25

    .line 186
    :goto_4
    if-nez v3, :cond_28

    .line 194
    :goto_5
    if-nez v2, :cond_2b

    .line 200
    :cond_5
    if-nez v2, :cond_2f

    .line 203
    if-nez v3, :cond_30

    .line 206
    if-nez v4, :cond_31

    .line 210
    sget-object v21, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v21

    .line 53
    .end local v2    # "canBeISO88591":Z
    .end local v3    # "canBeShiftJIS":Z
    .end local v4    # "canBeUTF8":Z
    .end local v6    # "i":I
    .end local v7    # "isoHighOther":I
    .end local v8    # "length":I
    .end local v9    # "sjisBytesLeft":I
    .end local v10    # "sjisCurDoubleBytesWordLength":I
    .end local v11    # "sjisCurKatakanaWordLength":I
    .end local v12    # "sjisKatakanaChars":I
    .end local v13    # "sjisMaxDoubleBytesWordLength":I
    .end local v14    # "sjisMaxKatakanaWordLength":I
    .end local v15    # "utf2BytesChars":I
    .end local v16    # "utf3BytesChars":I
    .end local v17    # "utf4BytesChars":I
    .end local v18    # "utf8BytesLeft":I
    .end local v19    # "utf8bom":Z
    :cond_6
    sget-object v21, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "characterSet":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 55
    return-object v5

    .end local v5    # "characterSet":Ljava/lang/String;
    .restart local v2    # "canBeISO88591":Z
    .restart local v3    # "canBeShiftJIS":Z
    .restart local v4    # "canBeUTF8":Z
    .restart local v7    # "isoHighOther":I
    .restart local v8    # "length":I
    .restart local v9    # "sjisBytesLeft":I
    .restart local v10    # "sjisCurDoubleBytesWordLength":I
    .restart local v11    # "sjisCurKatakanaWordLength":I
    .restart local v12    # "sjisKatakanaChars":I
    .restart local v13    # "sjisMaxDoubleBytesWordLength":I
    .restart local v14    # "sjisMaxKatakanaWordLength":I
    .restart local v15    # "utf2BytesChars":I
    .restart local v16    # "utf3BytesChars":I
    .restart local v17    # "utf4BytesChars":I
    .restart local v18    # "utf8BytesLeft":I
    :cond_7
    const/16 v21, 0x0

    .line 82
    aget-byte v21, p0, v21

    const/16 v22, -0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    .line 83
    aget-byte v21, p0, v21

    const/16 v22, -0x45

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x2

    .line 84
    aget-byte v21, p0, v21

    const/16 v22, -0x41

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v19, 0x1

    .line 81
    goto :goto_0

    .line 87
    .restart local v6    # "i":I
    .restart local v19    # "utf8bom":Z
    :cond_8
    if-eqz v2, :cond_22

    .line 90
    :cond_9
    :goto_6
    aget-byte v21, p0, v6

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 93
    .local v20, "value":I
    if-nez v4, :cond_d

    .line 127
    :cond_a
    :goto_7
    if-nez v2, :cond_14

    .line 142
    :cond_b
    :goto_8
    if-nez v3, :cond_19

    .line 88
    :cond_c
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 94
    :cond_d
    if-gtz v18, :cond_e

    .line 100
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 101
    and-int/lit8 v21, v20, 0x40

    if-eqz v21, :cond_10

    .line 104
    add-int/lit8 v18, v18, 0x1

    .line 105
    and-int/lit8 v21, v20, 0x20

    if-eqz v21, :cond_11

    .line 108
    add-int/lit8 v18, v18, 0x1

    .line 109
    and-int/lit8 v21, v20, 0x10

    if-eqz v21, :cond_12

    .line 112
    add-int/lit8 v18, v18, 0x1

    .line 113
    and-int/lit8 v21, v20, 0x8

    if-eqz v21, :cond_13

    .line 116
    const/4 v4, 0x0

    goto :goto_7

    .line 95
    :cond_e
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 98
    add-int/lit8 v18, v18, -0x1

    goto :goto_7

    .line 96
    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .line 102
    :cond_10
    const/4 v4, 0x0

    goto :goto_7

    .line 106
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 110
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 114
    :cond_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_14
    const/16 v21, 0x7f

    .line 128
    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_17

    :cond_15
    const/16 v21, 0x9f

    .line 130
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    const/16 v21, 0xc0

    .line 131
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 132
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_17
    const/16 v21, 0xa0

    .line 128
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 129
    const/4 v2, 0x0

    goto :goto_8

    :cond_18
    const/16 v21, 0xd7

    .line 131
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    const/16 v21, 0xf7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    goto :goto_8

    .line 143
    :cond_19
    if-gtz v9, :cond_1b

    const/16 v21, 0x80

    .line 149
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 150
    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    :cond_1b
    const/16 v21, 0x40

    .line 144
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    .line 145
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_1d
    const/16 v21, 0x7f

    .line 144
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    const/16 v21, 0xfc

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1c

    .line 147
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_9

    :cond_1e
    const/16 v21, 0xa0

    .line 149
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    const/16 v21, 0xef

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    const/16 v21, 0xa0

    .line 151
    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_20

    :cond_1f
    const/16 v21, 0x7f

    .line 158
    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_21

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 169
    goto/16 :goto_9

    :cond_20
    const/16 v21, 0xe0

    .line 151
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1f

    .line 152
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    .line 154
    add-int/lit8 v11, v11, 0x1

    .line 155
    if-le v11, v14, :cond_c

    .line 156
    move v14, v11

    goto/16 :goto_9

    .line 159
    :cond_21
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x0

    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 163
    if-le v10, v13, :cond_c

    .line 164
    move v13, v10

    goto/16 :goto_9

    .line 87
    .end local v20    # "value":I
    :cond_22
    if-nez v3, :cond_9

    if-eqz v4, :cond_2

    goto/16 :goto_6

    .line 174
    :cond_23
    if-lez v18, :cond_3

    .line 175
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 177
    :cond_24
    if-lez v9, :cond_4

    .line 178
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 182
    :cond_25
    if-eqz v19, :cond_27

    :cond_26
    const-string/jumbo v21, "UTF8"

    .line 183
    return-object v21

    .line 182
    :cond_27
    add-int v21, v15, v16

    add-int v21, v21, v17

    if-gtz v21, :cond_26

    goto/16 :goto_4

    .line 186
    :cond_28
    sget-boolean v21, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v21, :cond_2a

    :cond_29
    const-string/jumbo v21, "SJIS"

    .line 187
    return-object v21

    :cond_2a
    const/16 v21, 0x3

    .line 186
    move/from16 v0, v21

    if-ge v14, v0, :cond_29

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v13, v0, :cond_29

    goto/16 :goto_5

    .line 194
    :cond_2b
    if-eqz v3, :cond_5

    const/16 v21, 0x2

    .line 195
    move/from16 v0, v21

    if-eq v14, v0, :cond_2d

    :cond_2c
    mul-int/lit8 v21, v7, 0xa

    move/from16 v0, v21

    if-ge v0, v8, :cond_2e

    const-string/jumbo v21, "ISO8859_1"

    :goto_a
    return-object v21

    :cond_2d
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_2c

    :cond_2e
    const-string/jumbo v21, "SJIS"

    goto :goto_a

    :cond_2f
    const-string/jumbo v21, "ISO8859_1"

    .line 201
    return-object v21

    :cond_30
    const-string/jumbo v21, "SJIS"

    .line 204
    return-object v21

    :cond_31
    const-string/jumbo v21, "UTF8"

    .line 207
    return-object v21
.end method
