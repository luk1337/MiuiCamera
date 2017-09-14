.class Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO_BYTE_SIZE:I


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

.field private mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "ou"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    .line 60
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 61
    sget v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 63
    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 64
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 66
    return-void
.end method

.method private isDualCamCropInfo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sget v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    if-eq v2, v3, :cond_0

    .line 96
    return v4

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string/jumbo v2, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-char v0, v2

    .line 103
    .local v0, "c":C
    const-string/jumbo v2, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    .line 104
    return v4

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestByteCount"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p2, v2

    .line 88
    .local v0, "byteNeeded":I
    if-le p5, v0, :cond_0

    move v1, v0

    .line 89
    .local v1, "byteToRead":I
    :goto_0
    invoke-virtual {p1, p3, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 90
    return v1

    .end local v1    # "byteToRead":I
    :cond_0
    move v1, p5

    .line 88
    goto :goto_0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    .line 81
    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    .line 82
    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    .line 83
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 79
    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)V
    .locals 7
    .param p1, "indexIfd"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .param p2, "mpoOffset"    # I

    .prologue
    .line 319
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    move-result-object v4

    sget v5, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v5, v5

    .line 320
    const/4 v6, 0x1

    .line 319
    invoke-virtual {v4, v5, v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    .line 321
    .local v3, "mpEntryTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object v2

    .line 322
    .local v2, "mpEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 324
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    .line 325
    .local v0, "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 317
    return-void
.end method

.method private writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 3
    .param p1, "dataOutputStream"    # Lcom/android/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    .line 333
    .local v1, "indexIfd":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 334
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->updateIndexIfdOffsets(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)V

    .line 335
    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    .line 339
    .local v0, "attribIfd":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 340
    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 331
    :cond_1
    return-void
.end method

.method private writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 11
    .param p1, "ifd"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .param p2, "dataOutputStream"    # Lcom/android/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v4, 0x0

    .line 345
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    .line 346
    .local v3, "tags":[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 347
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v3, v5

    .line 348
    .local v2, "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 349
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 350
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 352
    const-string/jumbo v7, "MpoOutputStream"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 355
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 347
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {v2, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 359
    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 364
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 365
    .restart local v2    # "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v6

    if-le v6, v10, :cond_3

    .line 366
    invoke-static {v2, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 364
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 344
    .end local v2    # "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_4
    return-void
.end method

.method private writeMpoData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    if-nez v2, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    const-string/jumbo v2, "MpoOutputStream"

    const-string/jumbo v3, "Writing mpo data..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v2

    add-int/lit8 v1, v2, 0x6

    .line 290
    .local v1, "exifSize":I
    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 291
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_1
    new-instance v0, Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 294
    .local v0, "dataOutputStream":Lcom/android/gallery3d/exif/OrderedDataOutputStream;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 295
    const/16 v2, -0x1e

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 296
    int-to-short v2, v1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 297
    const v2, 0x4d504600    # 2.18390528E8f

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 298
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 299
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 302
    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 307
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 308
    const/16 v2, 0xe

    if-le v1, v2, :cond_4

    .line 309
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 310
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    .line 314
    :goto_1
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 282
    return-void

    .line 304
    :cond_3
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_0

    .line 312
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_1
.end method

.method static writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0, "tag"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .param p1, "dataOutputStream"    # Lcom/android/gallery3d/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 375
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    .line 376
    .local v0, "buf":[B
    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 377
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    .line 378
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 381
    invoke-virtual {p1, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_0

    .line 386
    .end local v0    # "buf":[B
    :pswitch_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/android/gallery3d/exif/Rational;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 398
    .end local v1    # "i":I
    .end local v2    # "n":I
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    .line 399
    .restart local v0    # "buf":[B
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getBytes([B)V

    .line 400
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_0

    .line 403
    .end local v0    # "buf":[B
    :pswitch_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    .restart local v2    # "n":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 404
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected setMpoData(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)V
    .locals 1
    .param p1, "mpoData"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    .line 76
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateAllTags()V

    .line 74
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    return v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 271
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    .line 269
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([BII)V

    .line 278
    return-void
.end method

.method public write([BII)V
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    :goto_0
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_3

    :cond_0
    if-lez p3, :cond_4

    .line 137
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-lez v0, :cond_1

    .line 138
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_6

    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    .line 139
    .local v7, "byteToProcess":I
    :goto_1
    sub-int/2addr p3, v7

    .line 140
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    .line 141
    add-int/2addr p2, v7

    .line 143
    .end local v7    # "byteToProcess":I
    :cond_1
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_2

    .line 144
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_7

    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    .line 145
    .restart local v7    # "byteToProcess":I
    :goto_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 147
    sub-int/2addr p3, v7

    .line 148
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    .line 149
    add-int/2addr p2, v7

    .line 151
    .end local v7    # "byteToProcess":I
    :cond_2
    if-nez p3, :cond_8

    .line 152
    return-void

    .line 136
    :cond_3
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 258
    :cond_4
    if-lez p3, :cond_5

    .line 259
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 260
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 135
    :cond_5
    return-void

    :cond_6
    move v7, p3

    .line 138
    goto :goto_1

    .line 144
    :cond_7
    move v7, p3

    .restart local v7    # "byteToProcess":I
    goto :goto_2

    .line 154
    .end local v7    # "byteToProcess":I
    :cond_8
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 157
    .local v6, "byteRead":I
    add-int/2addr p2, v6

    .line 158
    sub-int/2addr p3, v6

    .line 159
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 160
    return-void

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_a

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_a
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 167
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    .line 169
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 174
    .end local v6    # "byteRead":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 176
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 177
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 178
    .local v10, "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_b

    .line 179
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 180
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 181
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    .end local v10    # "tag":S
    :cond_b
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    .line 185
    return-void

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 189
    .local v8, "marker":S
    const/16 v0, -0x1f

    if-eq v8, v0, :cond_d

    const/16 v0, -0x20

    if-ne v8, v0, :cond_e

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 192
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    .line 193
    add-int/2addr p2, v6

    .line 194
    sub-int/2addr p3, v6

    .line 202
    :goto_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 196
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeMpoData()V

    .line 197
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v0, :cond_f

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_3

    .line 200
    :cond_f
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_3

    .line 205
    .end local v6    # "byteRead":I
    .end local v8    # "marker":S
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 207
    .restart local v6    # "byteRead":I
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 208
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 209
    .restart local v10    # "tag":S
    const/16 v0, -0x27

    if-ne v10, v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 212
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 215
    .end local v10    # "tag":S
    :cond_10
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 216
    return-void

    .line 219
    :cond_11
    add-int/2addr p2, v6

    .line 220
    sub-int/2addr p3, v6

    .line 221
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 224
    .restart local v8    # "marker":S
    invoke-static {v8}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_14

    .line 227
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    .line 228
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 230
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 231
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 233
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x2

    iput v9, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    .line 234
    .local v9, "sizeToClear":I
    :goto_4
    if-lez v9, :cond_12

    .line 235
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 236
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 237
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 239
    :cond_12
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    .line 247
    .end local v9    # "sizeToClear":I
    :goto_5
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 254
    :goto_6
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 243
    :cond_13
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 245
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    goto :goto_5

    .line 250
    :cond_14
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 251
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    .line 252
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_6

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method writeMpoFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 114
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 115
    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->flush()V

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    .line 122
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 123
    .local v0, "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->resetStates()V

    .line 124
    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 125
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->flush()V

    goto :goto_0

    .line 110
    .end local v0    # "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    :cond_1
    return-void
.end method
