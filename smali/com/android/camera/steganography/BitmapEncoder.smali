.class public Lcom/android/camera/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHeader(J)[B
    .locals 8
    .param p0, "size"    # J

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x5b

    const/4 v4, 0x0

    .line 17
    const/16 v5, 0xc

    new-array v1, v5, [B

    .line 19
    .local v1, "header":[B
    const/4 v2, 0x1

    .local v2, "i":I
    aput-byte v6, v1, v4

    .line 20
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-byte v6, v1, v2

    .line 21
    invoke-static {p0, p1}, Lcom/android/camera/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v0, v5, v4

    .line 22
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v0, v1, v3

    .line 21
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 24
    .end local v0    # "b":B
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-byte v7, v1, v3

    .line 25
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-byte v7, v1, v2

    .line 26
    return-object v1
.end method

.method public static encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bytes"    # [B

    .prologue
    .line 44
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/android/camera/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    .line 48
    .local v0, "header":[B
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    .line 49
    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 52
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/camera/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "header"    # [B
    .param p2, "bytes"    # [B

    .prologue
    .line 70
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 72
    .local v9, "outBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 73
    .local v12, "x":I
    const/4 v13, 0x0

    .line 74
    .local v13, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 75
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 80
    .local v6, "height":I
    const/4 v3, 0x0

    .line 81
    .local v3, "bufferPos":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    filled-new-array/range {v14 .. v16}, [I

    move-result-object v2

    .line 83
    .local v2, "buffer":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v14, v15

    if-ge v7, v14, :cond_a

    .line 86
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/16 v14, 0x8

    if-ge v8, v14, :cond_9

    .line 89
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v7, v14, :cond_7

    .line 90
    aget-byte v14, p1, v7

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    .line 96
    :goto_2
    const/4 v14, 0x2

    if-ne v3, v14, :cond_8

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 101
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 102
    .local v10, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 103
    .local v5, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 106
    .local v1, "b":I
    rem-int/lit8 v14, v10, 0x2

    const/4 v15, 0x0

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_0

    add-int/lit8 v10, v10, 0x1

    .line 107
    :cond_0
    rem-int/lit8 v14, v5, 0x2

    const/4 v15, 0x1

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 108
    :cond_1
    rem-int/lit8 v14, v1, 0x2

    const/4 v15, 0x2

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 111
    :cond_2
    const/16 v14, 0x100

    if-ne v10, v14, :cond_3

    const/16 v10, 0xfe

    .line 112
    :cond_3
    const/16 v14, 0x100

    if-ne v5, v14, :cond_4

    const/16 v5, 0xfe

    .line 113
    :cond_4
    const/16 v14, 0x100

    if-ne v1, v14, :cond_5

    const/16 v1, 0xfe

    .line 116
    :cond_5
    const/16 v14, 0xff

    invoke-static {v14, v10, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v9, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 119
    add-int/lit8 v12, v12, 0x1

    .line 120
    if-ne v12, v11, :cond_6

    .line 121
    const/4 v12, 0x0

    .line 122
    add-int/lit8 v13, v13, 0x1

    .line 124
    :cond_6
    const/4 v3, 0x0

    .line 86
    .end local v1    # "b":I
    .end local v4    # "color":I
    .end local v5    # "g":I
    .end local v10    # "r":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 92
    :cond_7
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v14, v7, v14

    aget-byte v14, p2, v14

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    goto :goto_2

    .line 126
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 131
    .end local v8    # "j":I
    :cond_a
    return-object v9
.end method

.method private static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 30
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
