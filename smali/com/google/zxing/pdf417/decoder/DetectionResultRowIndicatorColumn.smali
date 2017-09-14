.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 32
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 33
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 7
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 223
    .local v1, "codewordRow":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 224
    aget-object v0, p1, v1

    .line 225
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v4, p1, v1

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x1e

    .line 229
    .local v3, "rowIndicatorValue":I
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v2

    .line 230
    .local v2, "codewordRowNumber":I
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 234
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v4, :cond_2

    .line 237
    :goto_1
    rem-int/lit8 v4, v2, 0x3

    packed-switch v4, :pswitch_data_0

    .line 223
    .end local v2    # "codewordRowNumber":I
    .end local v3    # "rowIndicatorValue":I
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .restart local v2    # "codewordRowNumber":I
    .restart local v3    # "rowIndicatorValue":I
    :cond_1
    aput-object v6, p1, v1

    goto :goto_2

    .line 235
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 239
    :pswitch_0
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 240
    aput-object v6, p1, v1

    goto :goto_2

    .line 244
    :pswitch_1
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 246
    :cond_3
    aput-object v6, p1, v1

    goto :goto_2

    .line 245
    :cond_4
    rem-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 250
    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 251
    aput-object v6, p1, v1

    goto :goto_2

    .line 256
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "codewordRowNumber":I
    .end local v3    # "rowIndicatorValue":I
    :cond_5
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .locals 22
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    .line 49
    .local v9, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 52
    .local v5, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 53
    .local v17, "top":Lcom/google/zxing/ResultPoint;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 54
    .local v4, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v12

    .line 55
    .local v12, "firstRow":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v14

    .line 58
    .local v14, "lastRow":I
    sub-int v18, v14, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v2, v18, v19

    .local v2, "averageRowHeight":F
    const/4 v3, -0x1

    .local v3, "barcodeRow":I
    const/4 v15, 0x1

    .local v15, "maxRowHeight":I
    const/4 v11, 0x0

    .line 62
    .local v11, "currentRowHeight":I
    move v10, v12

    .local v10, "codewordsRow":I
    :goto_2
    if-ge v10, v14, :cond_d

    .line 63
    aget-object v18, v9, v10

    if-eqz v18, :cond_1

    .line 66
    aget-object v8, v9, v10

    .line 76
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    sub-int v16, v18, v3

    .line 80
    .local v16, "rowDifference":I
    if-eqz v16, :cond_4

    const/16 v18, 0x1

    .line 82
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 86
    if-gez v16, :cond_6

    :cond_0
    const/16 v18, 0x0

    .line 89
    aput-object v18, v9, v10

    .line 62
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v16    # "rowDifference":I
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 52
    .end local v2    # "averageRowHeight":F
    .end local v3    # "barcodeRow":I
    .end local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v10    # "codewordsRow":I
    .end local v11    # "currentRowHeight":I
    .end local v12    # "firstRow":I
    .end local v14    # "lastRow":I
    .end local v15    # "maxRowHeight":I
    .end local v17    # "top":Lcom/google/zxing/ResultPoint;
    :cond_2
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v17

    goto :goto_0

    .line 53
    .restart local v17    # "top":Lcom/google/zxing/ResultPoint;
    :cond_3
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_1

    .line 81
    .restart local v2    # "averageRowHeight":F
    .restart local v3    # "barcodeRow":I
    .restart local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "codewordsRow":I
    .restart local v11    # "currentRowHeight":I
    .restart local v12    # "firstRow":I
    .restart local v14    # "lastRow":I
    .restart local v15    # "maxRowHeight":I
    .restart local v16    # "rowDifference":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 83
    :cond_5
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/4 v11, 0x1

    .line 85
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    goto :goto_3

    .line 87
    :cond_6
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 88
    move/from16 v0, v16

    if-gt v0, v10, :cond_0

    const/16 v18, 0x2

    .line 92
    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 95
    move/from16 v6, v16

    .line 97
    .local v6, "checkedRows":I
    :goto_4
    if-ge v6, v10, :cond_9

    const/4 v7, 0x0

    .local v7, "closePreviousCodewordFound":Z
    :goto_5
    const/4 v13, 0x1

    .line 98
    .local v13, "i":I
    :goto_6
    if-le v13, v6, :cond_a

    .line 103
    :cond_7
    if-nez v7, :cond_c

    .line 106
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    const/4 v11, 0x1

    .line 107
    goto :goto_3

    .line 93
    .end local v6    # "checkedRows":I
    .end local v7    # "closePreviousCodewordFound":Z
    .end local v13    # "i":I
    :cond_8
    add-int/lit8 v18, v15, -0x2

    mul-int v6, v18, v16

    .restart local v6    # "checkedRows":I
    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    .line 97
    goto :goto_5

    .line 98
    .restart local v7    # "closePreviousCodewordFound":Z
    .restart local v13    # "i":I
    :cond_a
    if-nez v7, :cond_7

    .line 101
    sub-int v18, v10, v13

    aget-object v18, v9, v18

    if-nez v18, :cond_b

    const/4 v7, 0x0

    .line 98
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x1

    .line 101
    goto :goto_7

    :cond_c
    const/16 v18, 0x0

    .line 104
    aput-object v18, v9, v10

    goto :goto_3

    .line 111
    .end local v6    # "checkedRows":I
    .end local v7    # "closePreviousCodewordFound":Z
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "i":I
    .end local v16    # "rowDifference":I
    :cond_d
    float-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    return v18
.end method

.method adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I
    .locals 20
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 138
    .local v5, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v15, :cond_1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 139
    .local v14, "top":Lcom/google/zxing/ResultPoint;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v15, :cond_2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 140
    .local v4, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_1
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v10

    .line 141
    .local v10, "firstRow":I
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v11

    .line 142
    .local v11, "lastRow":I
    sub-int v15, v11, v10

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v2, v15, v16

    .line 143
    .local v2, "averageRowHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .local v7, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v3, -0x1

    .local v3, "barcodeRow":I
    const/4 v12, 0x1

    .local v12, "maxRowHeight":I
    const/4 v9, 0x0

    .line 147
    .local v9, "currentRowHeight":I
    move v8, v10

    .local v8, "codewordsRow":I
    :goto_2
    if-ge v8, v11, :cond_6

    .line 148
    aget-object v15, v7, v8

    if-eqz v15, :cond_0

    .line 151
    aget-object v6, v7, v8

    .line 153
    .local v6, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 155
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v15

    sub-int v13, v15, v3

    .line 159
    .local v13, "rowDifference":I
    if-eqz v13, :cond_3

    const/4 v15, 0x1

    .line 161
    if-eq v13, v15, :cond_4

    .line 165
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 168
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    const/4 v9, 0x1

    .line 147
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 138
    .end local v2    # "averageRowHeight":F
    .end local v3    # "barcodeRow":I
    .end local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v7    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v8    # "codewordsRow":I
    .end local v9    # "currentRowHeight":I
    .end local v10    # "firstRow":I
    .end local v11    # "lastRow":I
    .end local v12    # "maxRowHeight":I
    .end local v14    # "top":Lcom/google/zxing/ResultPoint;
    :cond_1
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    goto :goto_0

    .line 139
    .restart local v14    # "top":Lcom/google/zxing/ResultPoint;
    :cond_2
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_1

    .line 160
    .restart local v2    # "averageRowHeight":F
    .restart local v3    # "barcodeRow":I
    .restart local v4    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v7    # "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v8    # "codewordsRow":I
    .restart local v9    # "currentRowHeight":I
    .restart local v10    # "firstRow":I
    .restart local v11    # "lastRow":I
    .restart local v12    # "maxRowHeight":I
    .restart local v13    # "rowDifference":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 162
    :cond_4
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v9, 0x1

    .line 164
    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 166
    aput-object v15, v7, v8

    goto :goto_3

    .line 172
    .end local v6    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :cond_6
    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    return v15
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    .line 177
    .local v7, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 178
    .local v0, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 179
    .local v4, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 180
    .local v3, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 181
    .local v1, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    array-length v11, v7

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v7, v9

    .line 182
    .local v5, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v5, :cond_0

    .line 185
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 186
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v12

    rem-int/lit8 v8, v12, 0x1e

    .line 187
    .local v8, "rowIndicatorValue":I
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    .line 188
    .local v6, "codewordRowNumber":I
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v12, :cond_1

    .line 191
    :goto_1
    rem-int/lit8 v12, v6, 0x3

    packed-switch v12, :pswitch_data_0

    .line 181
    .end local v6    # "codewordRowNumber":I
    .end local v8    # "rowIndicatorValue":I
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 189
    .restart local v6    # "codewordRowNumber":I
    .restart local v8    # "rowIndicatorValue":I
    :cond_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 193
    :pswitch_0
    mul-int/lit8 v12, v8, 0x3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_2

    .line 196
    :pswitch_1
    div-int/lit8 v12, v8, 0x3

    invoke-virtual {v1, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 197
    rem-int/lit8 v12, v8, 0x3

    invoke-virtual {v3, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_2

    .line 200
    :pswitch_2
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_2

    .line 205
    .end local v5    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "codewordRowNumber":I
    .end local v8    # "rowIndicatorValue":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_4

    .line 212
    :cond_3
    return-object v13

    .line 206
    :cond_4
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    .line 207
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    .line 208
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_3

    .line 209
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    const/4 v11, 0x1

    if-lt v9, v11, :cond_3

    .line 210
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/4 v11, 0x3

    if-lt v9, v11, :cond_3

    .line 211
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    add-int/2addr v9, v11

    const/16 v11, 0x5a

    if-gt v9, v11, :cond_3

    .line 214
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v10

    .line 215
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v11

    aget v11, v11, v10

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v12

    aget v12, v12, v10

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v13

    aget v10, v13, v10

    .line 214
    invoke-direct {v2, v9, v11, v12, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 216
    .local v2, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    invoke-direct {p0, v7, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 217
    return-object v2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getRowHeights()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 116
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    .line 120
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    new-array v2, v4, [I

    .line 121
    .local v2, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 122
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v1, :cond_1

    .line 121
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v2    # "result":[I
    :cond_0
    return-object v4

    .line 123
    .restart local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v2    # "result":[I
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    .line 124
    .local v3, "rowNumber":I
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 127
    aget v7, v2, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v3

    goto :goto_1

    .line 125
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 130
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "rowNumber":I
    :cond_3
    return-object v2
.end method

.method isLeft()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method setRowNumbers()V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 37
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v0, :cond_0

    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    goto :goto_1

    .line 41
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
