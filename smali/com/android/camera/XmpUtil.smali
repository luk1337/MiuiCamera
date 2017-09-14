.class public Lcom/android/camera/XmpUtil;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/XmpUtil$Section;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "http://ns.google.com/photos/1.0/camera/"

    const-string/jumbo v3, "GCamera"

    .line 70
    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 72
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 73
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSpecialTypeMeta(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/camera/XmpUtil;->extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 80
    .local v1, "meta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    const-string/jumbo v2, "http://ns.google.com/photos/1.0/camera/"

    const-string/jumbo v3, "SpecialTypeID"

    const-string/jumbo v4, "PORTRAIT_TYPE"

    invoke-interface {v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-static {p0, v1}, Lcom/android/camera/XmpUtil;->writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    .line 77
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    const-string/jumbo v2, "XmpUtil"

    const-string/jumbo v3, "got exception when set metadata "

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    return-object v0
.end method

.method public static extractOrCreateXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/android/camera/XmpUtil;->extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 151
    .local v0, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .end local v0    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    return-object v0
.end method

.method public static extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x0

    .line 116
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/android/camera/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v6

    .line 117
    .local v6, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    if-nez v6, :cond_0

    .line 118
    return-object v11

    .line 121
    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "section$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/XmpUtil$Section;

    .line 122
    .local v4, "section":Lcom/android/camera/XmpUtil$Section;
    iget-object v7, v4, Lcom/android/camera/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/android/camera/XmpUtil;->hasXMPHeader([B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    iget-object v7, v4, Lcom/android/camera/XmpUtil$Section;->data:[B

    invoke-static {v7}, Lcom/android/camera/XmpUtil;->getXMPContentEnd([B)I

    move-result v2

    .line 124
    .local v2, "end":I
    add-int/lit8 v7, v2, -0x1d

    new-array v0, v7, [B

    .line 126
    .local v0, "buffer":[B
    iget-object v7, v4, Lcom/android/camera/XmpUtil$Section;->data:[B

    array-length v8, v0

    const/16 v9, 0x1d

    const/4 v10, 0x0

    .line 125
    invoke-static {v7, v9, v0, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 128
    :try_start_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    .local v3, "result":Lcom/adobe/xmp/XMPMeta;
    return-object v3

    .line 130
    .end local v3    # "result":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string/jumbo v7, "XmpUtil"

    const-string/jumbo v8, "XMP parse error"

    invoke-static {v7, v8, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-object v11

    .line 136
    .end local v0    # "buffer":[B
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .end local v2    # "end":I
    .end local v4    # "section":Lcom/android/camera/XmpUtil$Section;
    :cond_2
    return-object v11
.end method

.method public static extractXMPMeta(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/XmpUtil;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 97
    :cond_1
    const-string/jumbo v1, "XmpUtil"

    const-string/jumbo v2, "XMP parse: only jpeg file is supported"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "XmpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-object v4
.end method

.method private static getXMPContentEnd([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 328
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 329
    aget-byte v1, p0, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 330
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_0

    .line 331
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 328
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
    :cond_1
    array-length v1, p0

    return v1
.end method

.method private static hasXMPHeader([B)Z
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/16 v3, 0x1d

    const/4 v5, 0x0

    .line 302
    array-length v2, p0

    if-ge v2, v3, :cond_0

    .line 303
    return v5

    .line 306
    :cond_0
    const/16 v2, 0x1d

    :try_start_0
    new-array v1, v2, [B

    .line 307
    .local v1, "header":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1d

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 308
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const/4 v2, 0x1

    return v2

    .line 311
    .end local v1    # "header":[B
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    return v5

    .line 314
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "header":[B
    :cond_1
    return v5
.end method

.method private static insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    .locals 14
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/XmpUtil$Section;",
            ">;",
            "Lcom/adobe/xmp/XMPMeta;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    const/16 v13, 0x1d

    const/16 v12, 0xe1

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 246
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v5, :cond_1

    .line 247
    :cond_0
    return-object v11

    .line 251
    :cond_1
    :try_start_0
    new-instance v4, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v4}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    .line 252
    .local v4, "options":Lcom/adobe/xmp/options/SerializeOptions;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 256
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/adobe/xmp/options/SerializeOptions;->setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;

    .line 257
    invoke-static {p1, v4}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    .local v0, "buffer":[B
    array-length v8, v0

    const v10, 0xffde

    if-le v8, v10, :cond_2

    .line 264
    return-object v11

    .line 258
    .end local v0    # "buffer":[B
    .end local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string/jumbo v8, "XmpUtil"

    const-string/jumbo v9, "Serialize xmp failed"

    invoke-static {v8, v9, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v11

    .line 267
    .end local v1    # "e":Lcom/adobe/xmp/XMPException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "options":Lcom/adobe/xmp/options/SerializeOptions;
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, 0x1d

    new-array v7, v8, [B

    .line 268
    .local v7, "xmpdata":[B
    const-string/jumbo v8, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9, v7, v9, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 269
    array-length v8, v0

    invoke-static {v0, v9, v7, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 270
    new-instance v6, Lcom/android/camera/XmpUtil$Section;

    invoke-direct {v6, v11}, Lcom/android/camera/XmpUtil$Section;-><init>(Lcom/android/camera/XmpUtil$Section;)V

    .line 271
    .local v6, "xmpSection":Lcom/android/camera/XmpUtil$Section;
    iput v12, v6, Lcom/android/camera/XmpUtil$Section;->marker:I

    .line 273
    array-length v8, v7

    add-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/camera/XmpUtil$Section;->length:I

    .line 274
    iput-object v7, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    .line 276
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 278
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/XmpUtil$Section;

    iget v8, v8, Lcom/android/camera/XmpUtil$Section;->marker:I

    if-ne v8, v12, :cond_3

    .line 279
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/XmpUtil$Section;

    iget-object v8, v8, Lcom/android/camera/XmpUtil$Section;->data:[B

    invoke-static {v8}, Lcom/android/camera/XmpUtil;->hasXMPHeader([B)Z

    move-result v8

    .line 278
    if-eqz v8, :cond_3

    .line 281
    invoke-interface {p0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object p0

    .line 276
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v3, "newSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/XmpUtil$Section;

    iget v8, v8, Lcom/android/camera/XmpUtil$Section;->marker:I

    if-ne v8, v12, :cond_5

    .line 289
    .local v5, "position":I
    :goto_1
    invoke-interface {p0, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p0, v5, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    return-object v3

    .end local v5    # "position":I
    :cond_5
    move v5, v9

    .line 288
    goto :goto_1
.end method

.method private static parse(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "readMetaOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/XmpUtil$Section;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v13, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/16 v9, 0xd8

    if-eq v8, v9, :cond_2

    .line 403
    :cond_0
    if-eqz p0, :cond_1

    .line 405
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    :cond_1
    :goto_0
    return-object v11

    .line 406
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 353
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v7, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_11

    .line 356
    if-eq v0, v13, :cond_4

    .line 403
    if-eqz p0, :cond_3

    .line 405
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 357
    :cond_3
    :goto_2
    return-object v11

    .line 406
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_4

    .line 362
    if-ne v0, v12, :cond_6

    .line 403
    if-eqz p0, :cond_5

    .line 405
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 363
    :cond_5
    :goto_3
    return-object v11

    .line 406
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    move v5, v0

    .line 366
    .local v5, "marker":I
    const/16 v8, 0xda

    if-ne v0, v8, :cond_9

    .line 369
    if-nez p1, :cond_7

    .line 370
    :try_start_6
    new-instance v6, Lcom/android/camera/XmpUtil$Section;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/camera/XmpUtil$Section;-><init>(Lcom/android/camera/XmpUtil$Section;)V

    .line 371
    .local v6, "section":Lcom/android/camera/XmpUtil$Section;
    iput v0, v6, Lcom/android/camera/XmpUtil$Section;->marker:I

    .line 372
    const/4 v8, -0x1

    iput v8, v6, Lcom/android/camera/XmpUtil$Section;->length:I

    .line 373
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v8, v8, [B

    iput-object v8, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    .line 374
    iget-object v8, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    iget-object v9, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v10, v9}, Ljava/io/InputStream;->read([BII)I

    .line 375
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    .end local v6    # "section":Lcom/android/camera/XmpUtil$Section;
    :cond_7
    if-eqz p0, :cond_8

    .line 405
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 377
    :cond_8
    :goto_4
    return-object v7

    .line 406
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 379
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 380
    .local v3, "lh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    .line 381
    .local v4, "ll":I
    if-eq v3, v12, :cond_a

    if-ne v4, v12, :cond_c

    .line 403
    :cond_a
    if-eqz p0, :cond_b

    .line 405
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 382
    :cond_b
    :goto_5
    return-object v11

    .line 406
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    :cond_c
    shl-int/lit8 v8, v3, 0x8

    or-int v2, v8, v4

    .line 385
    .local v2, "length":I
    if-eqz p1, :cond_d

    const/16 v8, 0xe1

    if-ne v0, v8, :cond_f

    .line 386
    :cond_d
    :try_start_a
    new-instance v6, Lcom/android/camera/XmpUtil$Section;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/android/camera/XmpUtil$Section;-><init>(Lcom/android/camera/XmpUtil$Section;)V

    .line 387
    .restart local v6    # "section":Lcom/android/camera/XmpUtil$Section;
    iput v0, v6, Lcom/android/camera/XmpUtil$Section;->marker:I

    .line 388
    iput v2, v6, Lcom/android/camera/XmpUtil$Section;->length:I

    .line 389
    add-int/lit8 v8, v2, -0x2

    new-array v8, v8, [B

    iput-object v8, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    .line 390
    iget-object v8, v6, Lcom/android/camera/XmpUtil$Section;->data:[B

    add-int/lit8 v9, v2, -0x2

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v10, v9}, Ljava/io/InputStream;->read([BII)I

    .line 391
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 399
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v6    # "section":Lcom/android/camera/XmpUtil$Section;
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :catch_5
    move-exception v1

    .line 400
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v8, "XmpUtil"

    const-string/jumbo v9, "Could not parse file."

    invoke-static {v8, v9, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 403
    if-eqz p0, :cond_e

    .line 405
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 401
    :cond_e
    :goto_6
    return-object v11

    .line 395
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "length":I
    .restart local v3    # "lh":I
    .restart local v4    # "ll":I
    .restart local v5    # "marker":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :cond_f
    add-int/lit8 v8, v2, -0x2

    int-to-long v8, v8

    :try_start_d
    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 402
    .end local v0    # "c":I
    .end local v2    # "length":I
    .end local v3    # "lh":I
    .end local v4    # "ll":I
    .end local v5    # "marker":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :catchall_0
    move-exception v8

    .line 403
    if-eqz p0, :cond_10

    .line 405
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 402
    :cond_10
    :goto_7
    throw v8

    .line 403
    .restart local v0    # "c":I
    .restart local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :cond_11
    if-eqz p0, :cond_12

    .line 405
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 398
    :cond_12
    :goto_8
    return-object v7

    .line 406
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .end local v0    # "c":I
    .end local v7    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :catch_7
    move-exception v1

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7
.end method

.method private static writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/XmpUtil$Section;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    const/16 v5, 0xff

    .line 228
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 229
    const/16 v4, 0xd8

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "section$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/XmpUtil$Section;

    .line 231
    .local v2, "section":Lcom/android/camera/XmpUtil$Section;
    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget v4, v2, Lcom/android/camera/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 233
    iget v4, v2, Lcom/android/camera/XmpUtil$Section;->length:I

    if-lez v4, :cond_0

    .line 235
    iget v4, v2, Lcom/android/camera/XmpUtil$Section;->length:I

    shr-int/lit8 v0, v4, 0x8

    .line 236
    .local v0, "lh":I
    iget v4, v2, Lcom/android/camera/XmpUtil$Section;->length:I

    and-int/lit16 v1, v4, 0xff

    .line 237
    .local v1, "ll":I
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 238
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    .end local v0    # "lh":I
    .end local v1    # "ll":I
    :cond_0
    iget-object v4, v2, Lcom/android/camera/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 226
    .end local v2    # "section":Lcom/android/camera/XmpUtil$Section;
    :cond_1
    return-void
.end method

.method public static writeXMPMeta(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "meta"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v8, 0x0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_0
    const/4 v4, 0x0

    .line 165
    .local v4, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/XmpUtil;->parse(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    invoke-static {v4, p1}, Lcom/android/camera/XmpUtil;->insertXMPSection(Ljava/util/List;Lcom/adobe/xmp/XMPMeta;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 167
    if-nez v4, :cond_2

    .line 168
    return v8

    .line 160
    .end local v4    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :cond_1
    const-string/jumbo v5, "XmpUtil"

    const-string/jumbo v6, "XMP parse: only jpeg file is supported"

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v8

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not read file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return v8

    .line 174
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/XmpUtil$Section;>;"
    :cond_2
    const/4 v2, 0x0

    .line 177
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v3, v4}, Lcom/android/camera/XmpUtil;->writeJpegFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    if-eqz v3, :cond_3

    .line 185
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    :cond_3
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 186
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 180
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v5, "XmpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Write file failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    if-eqz v2, :cond_4

    .line 185
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 181
    :cond_4
    :goto_2
    return v8

    .line 186
    :catch_3
    move-exception v1

    goto :goto_2

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 183
    :goto_3
    if-eqz v2, :cond_5

    .line 185
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 182
    :cond_5
    :goto_4
    throw v5

    .line 186
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 179
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
