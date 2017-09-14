.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .local v0, "dimension":I
    const/16 v1, 0x8

    .line 37
    if-ge v0, v1, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_1
    const/16 v1, 0x90

    .line 37
    if-gt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 41
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 43
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 44
    return-void
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 3
    .param p0, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 63
    .local v1, "numRows":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 64
    .local v0, "numColumns":I
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 23
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v18

    .line 404
    .local v18, "symbolSizeRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v17

    .line 406
    .local v17, "symbolSizeColumns":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v8

    .line 411
    .local v8, "dataRegionSizeRows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v7

    .line 413
    .local v7, "dataRegionSizeColumns":I
    div-int v12, v18, v8

    .line 414
    .local v12, "numDataRegionsRow":I
    div-int v11, v17, v7

    .line 416
    .local v11, "numDataRegionsColumn":I
    mul-int v16, v12, v8

    .line 417
    .local v16, "sizeDataRegionRow":I
    mul-int v15, v11, v7

    .line 419
    .local v15, "sizeDataRegionColumn":I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .local v2, "bitMatrixWithoutAlignment":Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .line 420
    .local v5, "dataRegionRow":I
    :goto_0
    if-ge v5, v12, :cond_5

    .line 421
    mul-int v6, v5, v8

    .local v6, "dataRegionRowOffset":I
    const/4 v3, 0x0

    .line 422
    .local v3, "dataRegionColumn":I
    :goto_1
    if-ge v3, v11, :cond_4

    .line 423
    mul-int v4, v3, v7

    .local v4, "dataRegionColumnOffset":I
    const/4 v9, 0x0

    .line 424
    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_3

    .line 425
    add-int/lit8 v21, v8, 0x2

    mul-int v21, v21, v5

    add-int/lit8 v21, v21, 0x1

    add-int v14, v21, v9

    .line 426
    .local v14, "readRowOffset":I
    add-int v20, v6, v9

    .local v20, "writeRowOffset":I
    const/4 v10, 0x0

    .line 427
    .local v10, "j":I
    :goto_3
    if-ge v10, v7, :cond_2

    .line 428
    add-int/lit8 v21, v7, 0x2

    mul-int v21, v21, v3

    add-int/lit8 v21, v21, 0x1

    add-int v13, v21, v10

    .line 429
    .local v13, "readColumnOffset":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v21

    if-nez v21, :cond_1

    .line 427
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 407
    .end local v2    # "bitMatrixWithoutAlignment":Lcom/google/zxing/common/BitMatrix;
    .end local v3    # "dataRegionColumn":I
    .end local v4    # "dataRegionColumnOffset":I
    .end local v5    # "dataRegionRow":I
    .end local v6    # "dataRegionRowOffset":I
    .end local v7    # "dataRegionSizeColumns":I
    .end local v8    # "dataRegionSizeRows":I
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "numDataRegionsColumn":I
    .end local v12    # "numDataRegionsRow":I
    .end local v13    # "readColumnOffset":I
    .end local v14    # "readRowOffset":I
    .end local v15    # "sizeDataRegionColumn":I
    .end local v16    # "sizeDataRegionRow":I
    .end local v20    # "writeRowOffset":I
    :cond_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "Dimension of bitMarix must match the version size"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 430
    .restart local v2    # "bitMatrixWithoutAlignment":Lcom/google/zxing/common/BitMatrix;
    .restart local v3    # "dataRegionColumn":I
    .restart local v4    # "dataRegionColumnOffset":I
    .restart local v5    # "dataRegionRow":I
    .restart local v6    # "dataRegionRowOffset":I
    .restart local v7    # "dataRegionSizeColumns":I
    .restart local v8    # "dataRegionSizeRows":I
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "numDataRegionsColumn":I
    .restart local v12    # "numDataRegionsRow":I
    .restart local v13    # "readColumnOffset":I
    .restart local v14    # "readRowOffset":I
    .restart local v15    # "sizeDataRegionColumn":I
    .restart local v16    # "sizeDataRegionRow":I
    .restart local v20    # "writeRowOffset":I
    :cond_1
    add-int v19, v4, v10

    .line 431
    .local v19, "writeColumnOffset":I
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_4

    .line 424
    .end local v13    # "readColumnOffset":I
    .end local v19    # "writeColumnOffset":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 422
    .end local v10    # "j":I
    .end local v14    # "readRowOffset":I
    .end local v20    # "writeRowOffset":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v4    # "dataRegionColumnOffset":I
    .end local v9    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "dataRegionColumn":I
    .end local v6    # "dataRegionRowOffset":I
    :cond_5
    return-object v2
.end method

.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    new-array v7, v11, [B

    .local v7, "result":[B
    const/4 v8, 0x0

    .local v8, "resultOffset":I
    const/4 v10, 0x4

    .local v10, "row":I
    const/4 v0, 0x0

    .line 83
    .local v0, "column":I
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 84
    .local v6, "numRows":I
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 86
    .local v5, "numColumns":I
    const/4 v1, 0x0

    .line 87
    .local v1, "corner1Read":Z
    const/4 v2, 0x0

    .line 88
    .local v2, "corner2Read":Z
    const/4 v3, 0x0

    .line 89
    .local v3, "corner3Read":Z
    const/4 v4, 0x0

    .local v4, "corner4Read":Z
    move v9, v8

    .line 94
    .end local v8    # "resultOffset":I
    .local v9, "resultOffset":I
    :goto_0
    if-eq v10, v6, :cond_8

    .line 99
    :cond_0
    add-int/lit8 v11, v6, -0x2

    if-eq v10, v11, :cond_9

    .line 104
    :cond_1
    add-int/lit8 v11, v6, 0x4

    if-eq v10, v11, :cond_a

    .line 109
    :cond_2
    add-int/lit8 v11, v6, -0x2

    if-eq v10, v11, :cond_b

    .line 117
    :cond_3
    :goto_1
    if-lt v10, v6, :cond_c

    :cond_4
    move v8, v9

    .line 120
    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    :goto_2
    add-int/lit8 v10, v10, -0x2

    .line 121
    add-int/lit8 v0, v0, 0x2

    .line 122
    if-gez v10, :cond_d

    .line 123
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 124
    add-int/lit8 v0, v0, 0x3

    move v9, v8

    .line 128
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :goto_3
    if-gez v10, :cond_e

    :cond_6
    move v8, v9

    .line 131
    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    :goto_4
    add-int/lit8 v10, v10, 0x2

    .line 132
    add-int/lit8 v0, v0, -0x2

    .line 133
    if-lt v10, v6, :cond_f

    .line 134
    :cond_7
    add-int/lit8 v10, v10, 0x3

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 137
    :goto_5
    if-ge v10, v6, :cond_10

    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto :goto_0

    .line 94
    :cond_8
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 95
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 96
    add-int/lit8 v10, v10, -0x2

    .line 97
    add-int/lit8 v0, v0, 0x2

    .line 98
    const/4 v1, 0x1

    goto :goto_5

    .line 99
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_9
    if-nez v0, :cond_1

    and-int/lit8 v11, v5, 0x3

    if-eqz v11, :cond_1

    if-nez v2, :cond_1

    .line 100
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 101
    add-int/lit8 v10, v10, -0x2

    .line 102
    add-int/lit8 v0, v0, 0x2

    .line 103
    const/4 v2, 0x1

    goto :goto_5

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_a
    const/4 v11, 0x2

    .line 104
    if-ne v0, v11, :cond_2

    and-int/lit8 v11, v5, 0x7

    if-nez v11, :cond_2

    if-nez v3, :cond_2

    .line 105
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 106
    add-int/lit8 v10, v10, -0x2

    .line 107
    add-int/lit8 v0, v0, 0x2

    .line 108
    const/4 v3, 0x1

    goto :goto_5

    .line 109
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_b
    if-nez v0, :cond_3

    and-int/lit8 v11, v5, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    if-nez v4, :cond_3

    .line 110
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    .line 111
    add-int/lit8 v10, v10, -0x2

    .line 112
    add-int/lit8 v0, v0, 0x2

    .line 113
    const/4 v4, 0x1

    goto :goto_5

    .line 117
    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    :cond_c
    if-ltz v0, :cond_4

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 118
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    goto/16 :goto_2

    .line 116
    :cond_d
    if-ge v0, v5, :cond_5

    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto/16 :goto_1

    .line 128
    :cond_e
    if-ge v0, v5, :cond_6

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 129
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    invoke-virtual {p0, v10, v0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v11

    int-to-byte v11, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v9

    goto/16 :goto_4

    .line 127
    :cond_f
    if-ltz v0, :cond_7

    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto/16 :goto_3

    .line 92
    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    :cond_10
    if-ge v0, v5, :cond_11

    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto/16 :goto_0

    .line 139
    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    :cond_11
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    if-ne v8, v11, :cond_12

    .line 142
    return-object v7

    .line 140
    :cond_12
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11
.end method

.method readCorner1(II)I
    .locals 5
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 226
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 230
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 234
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    .line 238
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 241
    :goto_3
    shl-int/lit8 v0, v0, 0x1

    .line 242
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 245
    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 246
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 249
    :goto_5
    shl-int/lit8 v0, v0, 0x1

    .line 250
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 253
    :goto_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    .line 254
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 257
    :goto_7
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 243
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 247
    :cond_5
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 251
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 255
    :cond_7
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method readCorner2(II)I
    .locals 3
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 271
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 275
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 279
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    .line 283
    add-int/lit8 v1, p2, -0x4

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    :goto_3
    shl-int/lit8 v0, v0, 0x1

    .line 287
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 290
    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 294
    :goto_5
    shl-int/lit8 v0, v0, 0x1

    .line 295
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 298
    :goto_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    .line 299
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 302
    :goto_7
    return v0

    .line 272
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 284
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 288
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_5
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 300
    :cond_7
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method readCorner3(II)I
    .locals 5
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 316
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 320
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 324
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    .line 328
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 331
    :goto_3
    shl-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 336
    add-int/lit8 v1, p2, -0x3

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 339
    :goto_5
    shl-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 343
    :goto_6
    shl-int/lit8 v0, v0, 0x1

    .line 344
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v4, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 347
    :goto_7
    return v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 329
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 333
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 337
    :cond_5
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 341
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 345
    :cond_7
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method readCorner4(II)I
    .locals 3
    .param p1, "numRows"    # I
    .param p2, "numColumns"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 361
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 365
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    .line 373
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 376
    :goto_3
    shl-int/lit8 v0, v0, 0x1

    .line 377
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 380
    :goto_4
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    .line 381
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 384
    :goto_5
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    .line 385
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 388
    :goto_6
    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    .line 389
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 392
    :goto_7
    return v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 378
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 382
    :cond_5
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 386
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 390
    :cond_7
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method readModule(IIII)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "numRows"    # I
    .param p4, "numColumns"    # I

    .prologue
    .line 156
    if-ltz p1, :cond_0

    .line 160
    :goto_0
    if-ltz p2, :cond_1

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    return v0

    .line 157
    :cond_0
    add-int/2addr p1, p3

    .line 158
    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    goto :goto_0

    .line 161
    :cond_1
    add-int/2addr p2, p4

    .line 162
    add-int/lit8 v0, p4, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    goto :goto_1
.end method

.method readUtah(IIII)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "numRows"    # I
    .param p4, "numColumns"    # I

    .prologue
    const/4 v0, 0x0

    .line 181
    .local v0, "currentByte":I
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, p1, -0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    .line 193
    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    :goto_3
    shl-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 201
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    :goto_5
    shl-int/lit8 v0, v0, 0x1

    .line 205
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_6

    .line 208
    :goto_6
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-nez v1, :cond_7

    .line 212
    :goto_7
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_3
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 198
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 202
    :cond_5
    or-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 206
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 210
    :cond_7
    or-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
