.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    .line 47
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x114

    .line 48
    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x148

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x144

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x142

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x128

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x124

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x122

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x150

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x112

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x10a

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x1a8

    .line 49
    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1a4

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1a2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x194

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x192

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x18a

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x168

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x164

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x162

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x134

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11a

    .line 50
    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x158

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x14c

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x146

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x12c

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x116

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1b4

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1b2

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1ac

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1a6

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x196

    .line 51
    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x19a

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x16c

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x166

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x136

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x13a

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x12e

    .line 52
    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x1d4

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1d2

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x1ca

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x16e

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x176

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x1ae

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x126

    .line 53
    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x1da

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x1d6

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x132

    aput v2, v0, v1

    const/16 v1, 0x15e

    aput v1, v0, v3

    .line 47
    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 55
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v0, v0, v3

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 63
    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 258
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 259
    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 260
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .param p0, "result"    # Ljava/lang/CharSequence;
    .param p1, "checkPosition"    # I
    .param p2, "weightMax"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .local v2, "weight":I
    const/4 v1, 0x0

    .line 266
    .local v1, "total":I
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    const-string/jumbo v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 267
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 268
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_0

    .line 266
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 269
    goto :goto_1

    .line 272
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v5, v1, 0x2f

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 275
    return-void

    .line 273
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 199
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 200
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_e

    .line 201
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v6, 0x61

    .line 202
    if-ge v0, v6, :cond_1

    .line 250
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x64

    .line 202
    if-gt v0, v6, :cond_0

    .line 203
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_2

    .line 206
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 207
    .local v5, "next":C
    const/4 v2, 0x0

    .line 208
    .local v2, "decodedChar":C
    packed-switch v0, :pswitch_data_0

    .line 246
    .end local v2    # "decodedChar":C
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v5    # "next":C
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 211
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :pswitch_0
    if-ge v5, v7, :cond_4

    .line 214
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 211
    :cond_4
    if-gt v5, v8, :cond_3

    .line 212
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    .local v2, "decodedChar":C
    goto :goto_2

    .line 219
    .local v2, "decodedChar":C
    :pswitch_1
    if-ge v5, v7, :cond_6

    .line 222
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 219
    :cond_6
    if-gt v5, v8, :cond_5

    .line 220
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    .local v2, "decodedChar":C
    goto :goto_2

    .line 227
    .local v2, "decodedChar":C
    :pswitch_2
    if-ge v5, v7, :cond_9

    :cond_7
    const/16 v6, 0x46

    .line 229
    if-ge v5, v6, :cond_a

    .line 232
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :cond_9
    const/16 v6, 0x45

    .line 227
    if-gt v5, v6, :cond_7

    .line 228
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    .local v2, "decodedChar":C
    goto :goto_2

    .local v2, "decodedChar":C
    :cond_a
    const/16 v6, 0x57

    .line 229
    if-gt v5, v6, :cond_8

    .line 230
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    .local v2, "decodedChar":C
    goto :goto_2

    .line 237
    .local v2, "decodedChar":C
    :pswitch_3
    if-ge v5, v7, :cond_c

    .line 239
    :cond_b
    if-eq v5, v8, :cond_d

    .line 242
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    :cond_c
    const/16 v6, 0x4f

    .line 237
    if-gt v5, v6, :cond_b

    .line 238
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    .local v2, "decodedChar":C
    goto :goto_2

    .line 240
    .local v2, "decodedChar":C
    :cond_d
    const/16 v2, 0x3a

    goto :goto_2

    .line 253
    .end local v0    # "c":C
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 133
    .local v7, "width":I
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 135
    .local v5, "rowOffset":I
    iget-object v10, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    .line 136
    iget-object v6, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 137
    .local v6, "theCounters":[I
    move v4, v5

    .line 138
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 139
    .local v2, "isWhite":Z
    array-length v3, v6

    .local v3, "patternLength":I
    const/4 v0, 0x0

    .line 142
    .local v0, "counterPosition":I
    move v1, v5

    .end local v2    # "isWhite":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 143
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v2

    if-nez v10, :cond_0

    .line 146
    add-int/lit8 v10, v3, -0x1

    if-eq v0, v10, :cond_1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 158
    :goto_1
    aput v8, v6, v0

    .line 159
    if-nez v2, :cond_3

    move v2, v8

    .line 142
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    goto :goto_2

    .line 147
    :cond_1
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-eq v10, v11, :cond_2

    .line 150
    aget v10, v6, v9

    aget v11, v6, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 151
    add-int/lit8 v10, v3, -0x2

    invoke-static {v6, v12, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v10, v3, -0x2

    aput v9, v6, v10

    .line 153
    add-int/lit8 v10, v3, -0x1

    aput v9, v6, v10

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 148
    :cond_2
    new-array v10, v12, [I

    aput v4, v10, v9

    aput v1, v10, v8

    return-object v10

    :cond_3
    move v2, v9

    .line 159
    goto :goto_2

    .line 162
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 189
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 190
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-eq v1, p0, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v1, v1, v0

    return v1

    .line 194
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toPattern([I)I
    .locals 9
    .param p0, "counters"    # [I

    .prologue
    const/4 v7, 0x0

    .line 166
    array-length v3, p0

    .local v3, "max":I
    const/4 v6, 0x0

    .line 168
    .local v6, "sum":I
    array-length v8, p0

    :goto_0
    if-ge v7, v8, :cond_0

    aget v0, p0, v7

    .line 169
    .local v0, "counter":I
    add-int/2addr v6, v0

    .line 168
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "counter":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "pattern":I
    const/4 v1, 0x0

    .line 172
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 173
    aget v7, p0, v1

    int-to-float v7, v7

    const/high16 v8, 0x41100000    # 9.0f

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .local v5, "scaled":I
    const/4 v7, 0x1

    .line 174
    if-ge v5, v7, :cond_2

    :cond_1
    const/4 v7, -0x1

    .line 175
    return v7

    :cond_2
    const/4 v7, 0x4

    .line 174
    if-gt v5, v7, :cond_1

    .line 177
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_4

    .line 182
    shl-int/2addr v4, v5

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 178
    .local v2, "j":I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 179
    shl-int/lit8 v7, v4, 0x1

    or-int/lit8 v4, v7, 0x1

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 185
    .end local v2    # "j":I
    .end local v5    # "scaled":I
    :cond_5
    return v4
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 22
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v15

    .local v15, "start":[I
    const/16 v17, 0x1

    .line 71
    aget v17, v15, v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v10

    .line 72
    .local v10, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 74
    .local v6, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    move-object/from16 v16, v0

    .local v16, "theCounters":[I
    const/16 v17, 0x0

    .line 75
    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->fill([II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .local v12, "result":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 77
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v11

    .line 84
    .local v11, "pattern":I
    if-ltz v11, :cond_1

    .line 87
    invoke-static {v11}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v5

    .line 88
    .local v5, "decodedChar":C
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    move v8, v10

    .line 90
    .local v8, "lastStart":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v4, v16, v17

    .line 91
    .local v4, "counter":I
    add-int/2addr v10, v4

    .line 90
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "counter":I
    .end local v5    # "decodedChar":C
    .end local v8    # "lastStart":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 94
    .restart local v5    # "decodedChar":C
    .restart local v8    # "lastStart":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v10

    const/16 v17, 0x2a

    .line 95
    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 96
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    .line 99
    .local v7, "lastPatternSize":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v4, v16, v17

    .line 100
    .restart local v4    # "counter":I
    add-int/2addr v7, v4

    .line 99
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 104
    .end local v4    # "counter":I
    :cond_3
    if-ne v10, v6, :cond_5

    .line 105
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 104
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 108
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 113
    invoke-static {v12}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    invoke-static {v12}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .local v13, "resultString":Ljava/lang/String;
    const/16 v17, 0x1

    .line 119
    aget v17, v15, v17

    const/16 v18, 0x0

    aget v18, v15, v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v9, v17, v18

    .line 120
    .local v9, "left":F
    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v14, v17, v18

    .line 121
    .local v14, "right":F
    new-instance v17, Lcom/google/zxing/Result;

    const/16 v18, 0x2

    .line 124
    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 125
    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 126
    new-instance v20, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v20, v18, v19

    .line 127
    sget-object v19, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    const/16 v20, 0x0

    .line 121
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v17

    .line 110
    .end local v9    # "left":F
    .end local v13    # "resultString":Ljava/lang/String;
    .end local v14    # "right":F
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17
.end method
