.class public Lcom/adobe/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;
.source "Latin1Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/adobe/xmp/impl/ByteBuffer;)Lcom/adobe/xmp/impl/ByteBuffer;
    .locals 14
    .param p0, "buffer"    # Lcom/adobe/xmp/impl/ByteBuffer;

    .prologue
    .line 68
    const-string/jumbo v12, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 71
    const/16 v12, 0x8

    new-array v8, v12, [B

    .line 73
    .local v8, "readAheadBuffer":[B
    const/4 v6, 0x0

    .line 75
    .local v6, "readAhead":I
    const/4 v2, 0x0

    .line 77
    .local v2, "expectedBytes":I
    new-instance v5, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    div-int/lit8 v12, v12, 0x3

    invoke-direct {v5, v12}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(I)V

    .line 79
    .local v5, "out":Lcom/adobe/xmp/impl/ByteBuffer;
    const/4 v9, 0x0

    .line 80
    .local v9, "state":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/ByteBuffer;->length()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 82
    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/ByteBuffer;->charAt(I)I

    move-result v1

    .line 84
    .local v1, "b":I
    sparse-switch v9, :sswitch_data_0

    .line 88
    :sswitch_0
    const/16 v12, 0x7f

    if-ge v1, v12, :cond_0

    .line 90
    int-to-byte v12, v1

    invoke-virtual {v5, v12}, Lcom/adobe/xmp/impl/ByteBuffer;->append(B)V

    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v12, 0xc0

    if-lt v1, v12, :cond_2

    .line 95
    const/4 v2, -0x1

    .line 96
    move v10, v1

    .line 97
    .local v10, "test":I
    :goto_2
    const/16 v12, 0x8

    if-ge v2, v12, :cond_1

    and-int/lit16 v12, v10, 0x80

    const/16 v13, 0x80

    if-ne v12, v13, :cond_1

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 97
    shl-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "readAhead":I
    .local v7, "readAhead":I
    int-to-byte v12, v1

    aput-byte v12, v8, v6

    .line 102
    const/16 v9, 0xb

    move v6, v7

    .end local v7    # "readAhead":I
    .restart local v6    # "readAhead":I
    goto :goto_1

    .line 107
    .end local v10    # "test":I
    :cond_2
    int-to-byte v12, v1

    invoke-static {v12}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v11

    .line 108
    .local v11, "utf8":[B
    invoke-virtual {v5, v11}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    goto :goto_1

    .line 113
    .end local v11    # "utf8":[B
    :sswitch_1
    if-lez v2, :cond_3

    and-int/lit16 v12, v1, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_3

    .line 116
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "readAhead":I
    .restart local v7    # "readAhead":I
    int-to-byte v12, v1

    aput-byte v12, v8, v6

    .line 117
    add-int/lit8 v2, v2, -0x1

    .line 119
    if-nez v2, :cond_7

    .line 121
    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12, v7}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    .line 122
    const/4 v6, 0x0

    .line 124
    .end local v7    # "readAhead":I
    .restart local v6    # "readAhead":I
    const/4 v9, 0x0

    goto :goto_1

    .line 131
    :cond_3
    const/4 v12, 0x0

    aget-byte v12, v8, v12

    invoke-static {v12}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v11

    .line 132
    .restart local v11    # "utf8":[B
    invoke-virtual {v5, v11}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 135
    sub-int/2addr v3, v6

    .line 136
    const/4 v6, 0x0

    .line 138
    const/4 v9, 0x0

    goto :goto_1

    .line 145
    .end local v1    # "b":I
    .end local v11    # "utf8":[B
    :cond_4
    const/16 v12, 0xb

    if-ne v9, v12, :cond_5

    .line 147
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v6, :cond_5

    .line 149
    aget-byte v0, v8, v4

    .line 150
    .local v0, "b":B
    invoke-static {v0}, Lcom/adobe/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v11

    .line 151
    .restart local v11    # "utf8":[B
    invoke-virtual {v5, v11}, Lcom/adobe/xmp/impl/ByteBuffer;->append([B)V

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 155
    .end local v0    # "b":B
    .end local v4    # "j":I
    .end local v11    # "utf8":[B
    :cond_5
    return-object v5

    .line 160
    .end local v2    # "expectedBytes":I
    .end local v3    # "i":I
    .end local v5    # "out":Lcom/adobe/xmp/impl/ByteBuffer;
    .end local v6    # "readAhead":I
    .end local v8    # "readAheadBuffer":[B
    .end local v9    # "state":I
    :cond_6
    return-object p0

    .restart local v1    # "b":I
    .restart local v2    # "expectedBytes":I
    .restart local v3    # "i":I
    .restart local v5    # "out":Lcom/adobe/xmp/impl/ByteBuffer;
    .restart local v7    # "readAhead":I
    .restart local v8    # "readAheadBuffer":[B
    .restart local v9    # "state":I
    :cond_7
    move v6, v7

    .end local v7    # "readAhead":I
    .restart local v6    # "readAhead":I
    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method private static convertToUTF8(B)[B
    .locals 7
    .param p0, "ch"    # B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    and-int/lit16 v0, p0, 0xff

    .line 180
    .local v0, "c":I
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    .line 182
    const/16 v2, 0x81

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8d

    if-ne v0, v2, :cond_1

    .line 184
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/16 v3, 0x20

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    return-object v2

    .line 182
    :cond_1
    const/16 v2, 0x8f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x90

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9d

    if-eq v0, v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte p0, v3, v4

    const-string/jumbo v4, "cp1252"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 192
    :catch_0
    move-exception v1

    .line 195
    :cond_2
    new-array v2, v6, [B

    aput-byte p0, v2, v5

    return-object v2
.end method
