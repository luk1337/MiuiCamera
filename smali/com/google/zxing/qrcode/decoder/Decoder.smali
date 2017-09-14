.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 194
    array-length v3, p1

    .line 196
    .local v3, "numCodewords":I
    new-array v0, v3, [I

    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .line 197
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 198
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    array-length v5, p1

    sub-int v4, v5, p2

    .line 202
    .local v4, "numECCodewords":I
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v5, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 208
    :goto_1
    if-ge v1, p2, :cond_1

    .line 209
    aget v5, v0, v1

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 211
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    return-void
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 16
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v12

    .line 156
    .local v12, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v5

    .line 159
    .local v5, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 161
    .local v2, "codewords":[B
    invoke-static {v2, v12, v5}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v4

    .local v4, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v11, 0x0

    .line 165
    .local v11, "totalBytes":I
    array-length v14, v4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v3, v4, v13

    .line 166
    .local v3, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v15

    add-int/2addr v11, v15

    .line 165
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    new-array v8, v11, [B

    .local v8, "resultBytes":[B
    const/4 v9, 0x0

    .line 172
    .local v9, "resultOffset":I
    array-length v14, v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_2

    aget-object v3, v4, v13

    .line 173
    .restart local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 174
    .local v1, "codewordBytes":[B
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v7

    .line 175
    .local v7, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    const/4 v6, 0x0

    .local v6, "i":I
    move v10, v9

    .line 176
    .end local v9    # "resultOffset":I
    .local v10, "resultOffset":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 177
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    aget-byte v15, v1, v6

    int-to-byte v15, v15

    aput-byte v15, v8, v10

    .line 176
    add-int/lit8 v6, v6, 0x1

    move v10, v9

    .end local v9    # "resultOffset":I
    .restart local v10    # "resultOffset":I
    goto :goto_2

    .line 172
    :cond_1
    add-int/lit8 v13, v13, 0x1

    move v9, v10

    .end local v10    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto :goto_1

    .line 182
    .end local v1    # "codewordBytes":[B
    .end local v3    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v6    # "i":I
    .end local v7    # "numDataCodewords":I
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v8, v12, v5, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v13

    return-object v13
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v4, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v4, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .local v4, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v3, 0x0

    .local v3, "fe":Lcom/google/zxing/FormatException;
    const/4 v0, 0x0

    .line 93
    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v4, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lcom/google/zxing/FormatException;
    move-object v3, v2

    .line 103
    .end local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .end local v2    # "e":Lcom/google/zxing/FormatException;
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 106
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 109
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 112
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 121
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 123
    invoke-direct {p0, v4, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    .line 126
    .local v5, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v6, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    .line 128
    return-object v5

    .line 95
    .end local v5    # "result":Lcom/google/zxing/common/DecoderResult;
    .restart local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .restart local v3    # "fe":Lcom/google/zxing/FormatException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Lcom/google/zxing/ChecksumException;
    move-object v0, v1

    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    goto :goto_0

    .line 128
    .end local v0    # "ce":Lcom/google/zxing/ChecksumException;
    .end local v1    # "e":Lcom/google/zxing/ChecksumException;
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :catch_2
    move-exception v2

    .line 132
    .restart local v2    # "e":Lcom/google/zxing/FormatException;
    if-nez v3, :cond_0

    .line 135
    if-nez v0, :cond_1

    .line 138
    throw v2

    .line 133
    :cond_0
    throw v3

    .line 136
    :cond_1
    throw v0

    .line 138
    .end local v2    # "e":Lcom/google/zxing/FormatException;
    :catch_3
    move-exception v1

    .line 142
    .restart local v1    # "e":Lcom/google/zxing/ChecksumException;
    if-nez v3, :cond_2

    .line 145
    if-nez v0, :cond_3

    .line 148
    throw v1

    .line 143
    :cond_2
    throw v3

    .line 146
    :cond_3
    throw v0
.end method
