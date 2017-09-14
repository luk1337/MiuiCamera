.class Lcom/android/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    .line 34
    return-void

    .line 36
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/exif/IfdData;

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 51
    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/gallery3d/exif/IfdData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/gallery3d/exif/IfdData;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 138
    return-void
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;

    .prologue
    const/4 v1, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    .line 173
    .end local v0    # "ifd":I
    :cond_0
    return-object v1
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 3
    .param p1, "tag"    # Lcom/android/gallery3d/exif/ExifTag;
    .param p2, "ifdId"    # I

    .prologue
    const/4 v2, 0x0

    .line 181
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    .line 183
    .local v0, "ifdData":Lcom/android/gallery3d/exif/IfdData;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "ifdData":Lcom/android/gallery3d/exif/IfdData;
    :cond_0
    return-object v2
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 348
    if-ne p0, p1, :cond_0

    .line 349
    return v7

    .line 351
    :cond_0
    if-nez p1, :cond_1

    .line 352
    return v6

    .line 354
    :cond_1
    instance-of v4, p1, Lcom/android/gallery3d/exif/ExifData;

    if-eqz v4, :cond_9

    move-object v0, p1

    .line 355
    check-cast v0, Lcom/android/gallery3d/exif/ExifData;

    .line 356
    .local v0, "data":Lcom/android/gallery3d/exif/ExifData;
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    .line 357
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 359
    :cond_2
    return v6

    .line 358
    :cond_3
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 362
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 363
    return v6

    .line 361
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_5
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_8

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    .line 368
    .local v2, "ifd1":Lcom/android/gallery3d/exif/IfdData;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    .line 369
    .local v3, "ifd2":Lcom/android/gallery3d/exif/IfdData;
    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    :cond_7
    return v6

    .line 373
    .end local v2    # "ifd1":Lcom/android/gallery3d/exif/IfdData;
    .end local v3    # "ifd2":Lcom/android/gallery3d/exif/IfdData;
    :cond_8
    return v7

    .line 375
    .end local v0    # "data":Lcom/android/gallery3d/exif/ExifData;
    .end local v1    # "i":I
    :cond_9
    return v6
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/exif/ExifTag;>;"
    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 288
    .local v0, "d":Lcom/android/gallery3d/exif/IfdData;
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 290
    .local v3, "tags":[Lcom/android/gallery3d/exif/ExifTag;
    if-eqz v3, :cond_0

    .line 291
    array-length v9, v3

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v2, v3, v4

    .line 292
    .local v2, "t":Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    .end local v2    # "t":Lcom/android/gallery3d/exif/ExifTag;
    .end local v3    # "tags":[Lcom/android/gallery3d/exif/ExifTag;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 297
    .end local v0    # "d":Lcom/android/gallery3d/exif/IfdData;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 298
    return-object v10

    .line 300
    :cond_2
    return-object v1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 128
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v1, p1

    .line 148
    .local v0, "ifdData":Lcom/android/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    .end local v0    # "ifdData":Lcom/android/gallery3d/exif/IfdData;
    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    .line 150
    .restart local v0    # "ifdData":Lcom/android/gallery3d/exif/IfdData;
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/android/gallery3d/exif/ExifTag;
    .locals 3
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v2, p2

    .line 161
    .local v0, "ifdData":Lcom/android/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected getXiaomiComment()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 256
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    const/4 v5, 0x2

    aget-object v2, v4, v5

    .line 257
    .local v2, "ifdData":Lcom/android/gallery3d/exif/IfdData;
    if-nez v2, :cond_0

    .line 258
    return-object v8

    .line 260
    :cond_0
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 261
    .local v3, "tag":Lcom/android/gallery3d/exif/ExifTag;
    if-nez v3, :cond_1

    .line 262
    return-object v8

    .line 264
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 265
    return-object v8

    .line 268
    :cond_2
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 270
    .local v0, "buf":[B
    :try_start_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    if-nez v4, :cond_3

    .line 271
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    const-string/jumbo v6, "US-ASCII"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v4

    .line 273
    :cond_3
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "ExifData"

    const-string/jumbo v5, "Failed to decode the xiaomicomment"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v8
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v1, p2

    .line 206
    .local v0, "ifdData":Lcom/android/gallery3d/exif/IfdData;
    if-nez v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    .line 204
    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 68
    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
