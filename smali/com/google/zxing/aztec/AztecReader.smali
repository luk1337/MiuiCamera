.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 23
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v15, 0x0

    .local v15, "notFoundException":Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 61
    .local v14, "formatException":Lcom/google/zxing/FormatException;
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .local v7, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/16 v17, 0x0

    .local v17, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    .line 65
    .local v6, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v8

    .line 66
    .local v8, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 67
    .local v17, "points":[Lcom/google/zxing/ResultPoint;
    new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 73
    .end local v6    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v8    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    .end local v14    # "formatException":Lcom/google/zxing/FormatException;
    .end local v15    # "notFoundException":Ljava/lang/Exception;
    .end local v17    # "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    if-eqz v6, :cond_1

    .line 99
    :goto_1
    if-nez p2, :cond_4

    .line 108
    :cond_0
    new-instance v18, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v21

    sget-object v22, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 110
    .local v18, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v5

    .line 111
    .local v5, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v5, :cond_5

    .line 114
    :goto_2
    invoke-virtual {v6}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "ecLevel":Ljava/lang/String;
    if-nez v13, :cond_6

    .line 119
    :goto_3
    return-object v18

    .line 68
    .end local v5    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "ecLevel":Ljava/lang/String;
    .end local v18    # "result":Lcom/google/zxing/Result;
    .restart local v6    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .restart local v14    # "formatException":Lcom/google/zxing/FormatException;
    .restart local v15    # "notFoundException":Ljava/lang/Exception;
    :catch_0
    move-exception v10

    .line 69
    .local v10, "e":Lcom/google/zxing/NotFoundException;
    move-object v15, v10

    .local v15, "notFoundException":Ljava/lang/Exception;
    goto :goto_0

    .end local v10    # "e":Lcom/google/zxing/NotFoundException;
    .local v15, "notFoundException":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 71
    .local v9, "e":Lcom/google/zxing/FormatException;
    move-object v14, v9

    .local v14, "formatException":Lcom/google/zxing/FormatException;
    goto :goto_0

    .line 75
    .end local v6    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v9    # "e":Lcom/google/zxing/FormatException;
    .end local v14    # "formatException":Lcom/google/zxing/FormatException;
    .end local v15    # "notFoundException":Ljava/lang/Exception;
    :cond_1
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v8

    .line 76
    .restart local v8    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v8}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v17

    .line 77
    .restart local v17    # "points":[Lcom/google/zxing/ResultPoint;
    new-instance v20, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .local v6, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    goto :goto_1

    .line 78
    .end local v6    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v8    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    .end local v17    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_2
    move-exception v11

    .line 79
    .local v11, "e":Ljava/lang/Exception;
    if-nez v15, :cond_2

    .line 87
    :goto_4
    if-nez v14, :cond_3

    .line 91
    :try_start_2
    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v12

    .line 94
    .local v12, "e1":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v12    # "e1":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    throw v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :catch_4
    move-exception v12

    .line 84
    .restart local v12    # "e1":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 88
    .end local v12    # "e1":Ljava/lang/Exception;
    :cond_3
    throw v14

    .line 100
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/ResultPointCallback;

    .line 101
    .local v19, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v19, :cond_0

    .line 102
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v16, v17, v20

    .line 103
    .local v16, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 102
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 112
    .end local v16    # "point":Lcom/google/zxing/ResultPoint;
    .end local v19    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    .restart local v5    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v18    # "result":Lcom/google/zxing/Result;
    :cond_5
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_2

    .line 116
    .restart local v13    # "ecLevel":Ljava/lang/String;
    :cond_6
    sget-object v20, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
