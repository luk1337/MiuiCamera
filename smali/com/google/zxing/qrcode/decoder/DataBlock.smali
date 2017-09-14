.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 25
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    .local v4, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v20, 0x0

    .line 61
    .local v20, "totalBlocks":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    .line 62
    .local v3, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v2, v3, v21

    .line 63
    .local v2, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    add-int v20, v20, v23

    .line 62
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v3    # "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v4    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v20    # "totalBlocks":I
    :cond_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 67
    .restart local v3    # "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .restart local v4    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .restart local v20    # "totalBlocks":I
    :cond_1
    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v17, v0

    .local v17, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v13, 0x0

    .line 69
    .local v13, "numResultBlocks":I
    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v2, v3, v21

    .restart local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v5, 0x0

    .local v5, "i":I
    move v14, v13

    .line 70
    .end local v13    # "numResultBlocks":I
    .local v14, "numResultBlocks":I
    :goto_2
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v5, v0, :cond_2

    .line 71
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 72
    .local v12, "numDataCodewords":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v23

    add-int v10, v23, v12

    .line 73
    .local v10, "numBlockCodewords":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "numResultBlocks":I
    .restart local v13    # "numResultBlocks":I
    new-instance v23, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v23, v17, v14

    .line 70
    add-int/lit8 v5, v5, 0x1

    move v14, v13

    .end local v13    # "numResultBlocks":I
    .restart local v14    # "numResultBlocks":I
    goto :goto_2

    .line 69
    .end local v10    # "numBlockCodewords":I
    .end local v12    # "numDataCodewords":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    move v13, v14

    .end local v14    # "numResultBlocks":I
    .restart local v13    # "numResultBlocks":I
    goto :goto_1

    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v5    # "i":I
    :cond_3
    const/16 v21, 0x0

    .line 79
    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v19, v0

    .line 80
    .local v19, "shorterBlocksTotalCodewords":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v8, v21, -0x1

    .line 81
    .local v8, "longerBlocksStartAt":I
    :goto_3
    if-ltz v8, :cond_4

    .line 82
    aget-object v21, v17, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v11, v0

    .line 83
    .local v11, "numCodewords":I
    move/from16 v0, v19

    if-eq v11, v0, :cond_4

    .line 86
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 88
    .end local v11    # "numCodewords":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 90
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v21

    sub-int v18, v19, v21

    .local v18, "shorterBlocksNumDataCodewords":I
    const/4 v15, 0x0

    .local v15, "rawCodewordsOffset":I
    const/4 v5, 0x0

    .line 94
    .restart local v5    # "i":I
    :goto_4
    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    const/4 v7, 0x0

    .local v7, "j":I
    move/from16 v16, v15

    .line 95
    .end local v15    # "rawCodewordsOffset":I
    .local v16, "rawCodewordsOffset":I
    :goto_5
    if-ge v7, v13, :cond_5

    .line 96
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v5

    .line 95
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto :goto_5

    .line 94
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_4

    .line 100
    .end local v7    # "j":I
    :cond_6
    move v7, v8

    .restart local v7    # "j":I
    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :goto_6
    if-ge v7, v13, :cond_7

    .line 101
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v18

    .line 100
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto :goto_6

    :cond_7
    const/16 v21, 0x0

    .line 104
    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v9, v0

    .line 105
    .local v9, "max":I
    move/from16 v5, v18

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_7
    if-ge v5, v9, :cond_a

    const/4 v7, 0x0

    move/from16 v16, v15

    .line 106
    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    :goto_8
    if-ge v7, v13, :cond_9

    .line 107
    if-lt v7, v8, :cond_8

    add-int/lit8 v6, v5, 0x1

    .line 108
    .local v6, "iOffset":I
    :goto_9
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    aget-byte v22, p0, v16

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v6

    .line 106
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v16    # "rawCodewordsOffset":I
    goto :goto_8

    .end local v6    # "iOffset":I
    :cond_8
    move v6, v5

    .line 107
    goto :goto_9

    .line 105
    :cond_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_7

    .line 111
    :cond_a
    return-object v17
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
