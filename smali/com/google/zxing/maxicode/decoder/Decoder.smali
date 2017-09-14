.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 46
    return-void
.end method

.method private correctErrors([BIIII)V
    .locals 7
    .param p1, "codewordBytes"    # [B
    .param p2, "start"    # I
    .param p3, "dataCodewords"    # I
    .param p4, "ecCodewords"    # I
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 88
    add-int v0, p3, p4

    .line 91
    .local v0, "codewords":I
    if-eqz p5, :cond_1

    const/4 v2, 0x2

    .line 94
    .local v2, "divisor":I
    :goto_0
    div-int v5, v0, v2

    new-array v1, v5, [I

    .local v1, "codewordsInts":[I
    const/4 v3, 0x0

    .line 95
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 96
    if-nez p5, :cond_2

    .line 97
    :cond_0
    div-int v5, v3, v2

    add-int v6, v3, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v5

    .line 95
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "codewordsInts":[I
    .end local v2    # "divisor":I
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    .line 91
    goto :goto_0

    .line 96
    .restart local v1    # "codewordsInts":[I
    .restart local v2    # "divisor":I
    .restart local v3    # "i":I
    :cond_2
    rem-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p5, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_2

    .line 101
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int v6, p4, v2

    invoke-virtual {v5, v1, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 107
    :goto_3
    if-ge v3, p3, :cond_6

    .line 108
    if-nez p5, :cond_5

    .line 109
    :cond_4
    add-int v5, v3, p2

    div-int v6, v3, v2

    aget v6, v1, v6

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 107
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 102
    :catch_0
    move-exception v4

    .line 103
    .local v4, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v5

    throw v5

    .line 108
    .end local v4    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_5
    rem-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p5, -0x1

    if-eq v5, v6, :cond_4

    goto :goto_4

    .line 112
    :cond_6
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
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
    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v8, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    invoke-direct {v8, p1}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 55
    .local v8, "parser":Lcom/google/zxing/maxicode/decoder/BitMatrixParser;
    invoke-virtual {v8}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v1

    .local v1, "codewords":[B
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/4 v0, 0x0

    .line 58
    aget-byte v0, v1, v0

    and-int/lit8 v7, v0, 0xf

    .line 60
    .local v7, "mode":I
    packed-switch v7, :pswitch_data_0

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x1

    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x54

    const/16 v4, 0x28

    const/4 v5, 0x2

    move-object v0, p0

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x5e

    .line 66
    new-array v6, v0, [B

    .local v6, "datawords":[B
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 77
    invoke-static {v1, v0, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x14

    const/16 v2, 0xa

    .line 78
    array-length v3, v6

    add-int/lit8 v3, v3, -0xa

    invoke-static {v1, v0, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v6, v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0

    .end local v6    # "datawords":[B
    :pswitch_1
    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x1

    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v2, 0x14

    const/16 v3, 0x44

    const/16 v4, 0x38

    const/4 v5, 0x2

    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    const/16 v0, 0x4e

    .line 71
    new-array v6, v0, [B

    .restart local v6    # "datawords":[B
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
