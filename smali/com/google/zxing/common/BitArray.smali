.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 38
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 39
    return-void
.end method

.method constructor <init>([II)V
    .locals 0
    .param p1, "bits"    # [I
    .param p2, "size"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 44
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 45
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 341
    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    .local v1, "max":I
    const/4 v0, 0x0

    .line 184
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    .prologue
    .line 372
    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 346
    instance-of v1, p1, Lcom/google/zxing/common/BitArray;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 349
    check-cast v0, Lcom/google/zxing/common/BitArray;

    .line 350
    .local v0, "other":Lcom/google/zxing/common/BitArray;
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-eq v1, v2, :cond_2

    :cond_0
    return v3

    .line 347
    .end local v0    # "other":Lcom/google/zxing/common/BitArray;
    :cond_1
    return v3

    .line 350
    .restart local v0    # "other":Lcom/google/zxing/common/BitArray;
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, v0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1
.end method

.method public get(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 v1, p1, 0x1f

    shl-int v1, v3, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .locals 5
    .param p1, "from"    # I

    .prologue
    .line 96
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p1, v3, :cond_0

    .line 99
    div-int/lit8 v0, p1, 0x20

    .line 100
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    .line 102
    .local v1, "currentBits":I
    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 103
    :goto_0
    if-nez v1, :cond_2

    .line 104
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-eq v0, v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v3, v0

    goto :goto_0

    .line 97
    .end local v0    # "bitsOffset":I
    .end local v1    # "currentBits":I
    :cond_0
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    .line 105
    .restart local v0    # "bitsOffset":I
    .restart local v1    # "currentBits":I
    :cond_1
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    .line 109
    :cond_2
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 110
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v2, v3, :cond_3

    .end local v2    # "result":I
    :goto_1
    return v2

    .restart local v2    # "result":I
    :cond_3
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_1
.end method

.method public getNextUnset(I)I
    .locals 5
    .param p1, "from"    # I

    .prologue
    .line 119
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p1, v3, :cond_0

    .line 122
    div-int/lit8 v0, p1, 0x20

    .line 123
    .local v0, "bitsOffset":I
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    .line 125
    .local v1, "currentBits":I
    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 126
    :goto_0
    if-nez v1, :cond_2

    .line 127
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    if-eq v0, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 120
    .end local v0    # "bitsOffset":I
    .end local v1    # "currentBits":I
    :cond_0
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    .line 128
    .restart local v0    # "bitsOffset":I
    .restart local v1    # "currentBits":I
    :cond_1
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v3

    .line 132
    :cond_2
    mul-int/lit8 v3, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int v2, v3, v4

    .line 133
    .local v2, "result":I
    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v2, v3, :cond_3

    .end local v2    # "result":I
    :goto_1
    return v2

    .restart local v2    # "result":I
    :cond_3
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    goto :goto_1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .prologue
    const/16 v8, 0x1f

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 199
    if-lt p2, p1, :cond_1

    .line 202
    if-eq p2, p1, :cond_2

    .line 205
    add-int/lit8 p2, p2, -0x1

    .line 206
    div-int/lit8 v1, p1, 0x20

    .line 207
    .local v1, "firstInt":I
    div-int/lit8 v5, p2, 0x20

    .line 208
    .local v5, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_9

    .line 209
    if-gt v2, v1, :cond_3

    and-int/lit8 v0, p1, 0x1f

    .line 210
    .local v0, "firstBit":I
    :goto_1
    if-lt v2, v5, :cond_4

    and-int/lit8 v4, p2, 0x1f

    .line 212
    .local v4, "lastBit":I
    :goto_2
    if-eqz v0, :cond_5

    :cond_0
    const/4 v6, 0x0

    .line 216
    .local v6, "mask":I
    move v3, v0

    .local v3, "j":I
    :goto_3
    if-gt v3, v4, :cond_6

    .line 217
    shl-int v9, v10, v3

    or-int/2addr v6, v9

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 200
    .end local v0    # "firstBit":I
    .end local v1    # "firstInt":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "lastBit":I
    .end local v5    # "lastInt":I
    .end local v6    # "mask":I
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 203
    :cond_2
    return v10

    .restart local v1    # "firstInt":I
    .restart local v2    # "i":I
    .restart local v5    # "lastInt":I
    :cond_3
    move v0, v7

    .line 209
    goto :goto_1

    .restart local v0    # "firstBit":I
    :cond_4
    move v4, v8

    .line 210
    goto :goto_2

    .line 212
    .restart local v4    # "lastBit":I
    :cond_5
    if-ne v4, v8, :cond_0

    const/4 v6, -0x1

    .line 223
    .restart local v6    # "mask":I
    :cond_6
    iget-object v9, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v9, v9, v2

    and-int/2addr v9, v6

    if-nez p3, :cond_7

    move v6, v7

    .end local v6    # "mask":I
    :cond_7
    if-ne v9, v6, :cond_8

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_8
    return v7

    .line 227
    .end local v0    # "firstBit":I
    .end local v4    # "lastBit":I
    :cond_9
    return v10
.end method

.method public reverse()V
    .locals 15

    .prologue
    .line 308
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v10, v10

    new-array v5, v10, [I

    .line 310
    .local v5, "newBits":[I
    iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v3, v10, 0x20

    .line 311
    .local v3, "len":I
    add-int/lit8 v7, v3, 0x1

    .local v7, "oldBitsLen":I
    const/4 v1, 0x0

    .line 312
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 313
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v10, v10, v1

    int-to-long v8, v10

    .local v8, "x":J
    const/4 v10, 0x1

    .line 314
    shr-long v10, v8, v10

    const-wide/32 v12, 0x55555555

    and-long/2addr v10, v12

    const-wide/32 v12, 0x55555555

    and-long/2addr v12, v8

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    const/4 v10, 0x2

    .line 315
    shr-long v10, v8, v10

    const-wide/32 v12, 0x33333333

    and-long/2addr v10, v12

    const-wide/32 v12, 0x33333333

    and-long/2addr v12, v8

    const/4 v14, 0x2

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    const/4 v10, 0x4

    .line 316
    shr-long v10, v8, v10

    const-wide/32 v12, 0xf0f0f0f

    and-long/2addr v10, v12

    const-wide/32 v12, 0xf0f0f0f

    and-long/2addr v12, v8

    const/4 v14, 0x4

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    const/16 v10, 0x8

    .line 317
    shr-long v10, v8, v10

    const-wide/32 v12, 0xff00ff

    and-long/2addr v10, v12

    const-wide/32 v12, 0xff00ff

    and-long/2addr v12, v8

    const/16 v14, 0x8

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    const/16 v10, 0x10

    .line 318
    shr-long v10, v8, v10

    const-wide/32 v12, 0xffff

    and-long/2addr v10, v12

    const-wide/32 v12, 0xffff

    and-long/2addr v12, v8

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    or-long v8, v10, v12

    .line 319
    sub-int v10, v3, v1

    long-to-int v11, v8

    aput v11, v5, v10

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v8    # "x":J
    :cond_0
    iget v10, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v11, v7, 0x20

    if-ne v10, v11, :cond_1

    .line 337
    :goto_1
    iput-object v5, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 338
    return-void

    .line 323
    :cond_1
    mul-int/lit8 v10, v7, 0x20

    iget v11, p0, Lcom/google/zxing/common/BitArray;->size:I

    sub-int v2, v10, v11

    .local v2, "leftOffset":I
    const/4 v4, 0x1

    .local v4, "mask":I
    const/4 v1, 0x0

    .line 325
    :goto_2
    rsub-int/lit8 v10, v2, 0x1f

    if-ge v1, v10, :cond_2

    .line 326
    shl-int/lit8 v10, v4, 0x1

    or-int/lit8 v4, v10, 0x1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 328
    aget v10, v5, v10

    shr-int/2addr v10, v2

    and-int v0, v10, v4

    .local v0, "currentInt":I
    const/4 v1, 0x1

    .line 329
    :goto_3
    if-ge v1, v7, :cond_3

    .line 330
    aget v6, v5, v1

    .line 331
    .local v6, "nextInt":I
    rsub-int/lit8 v10, v2, 0x20

    shl-int v10, v6, v10

    or-int/2addr v0, v10

    .line 332
    add-int/lit8 v10, v1, -0x1

    aput v0, v5, v10

    .line 333
    shr-int v10, v6, v2

    and-int v0, v10, v4

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 335
    .end local v6    # "nextInt":I
    :cond_3
    add-int/lit8 v10, v7, -0x1

    aput v0, v5, v10

    goto :goto_1
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 361
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_2

    .line 362
    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    .line 365
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2e

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v2, 0x58

    .line 365
    goto :goto_2

    .line 367
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
