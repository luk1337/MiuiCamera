.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
.super Ljava/lang/Object;
.source "MpoImageData.java"


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mJpegData:[B

.field private final mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

.field private final mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;


# direct methods
.method public constructor <init>([BLjava/nio/ByteOrder;)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    .line 38
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    .line 43
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    .line 44
    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    .line 42
    return-void
.end method

.method private calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I
    .locals 6
    .param p1, "ifd"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .param p2, "offset"    # I

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p2, v2

    .line 220
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    .line 221
    .local v1, "tags":[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 222
    .local v0, "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 223
    invoke-virtual {v0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setOffset(I)V

    .line 224
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v4

    add-int/2addr p2, v4

    .line 221
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_1
    return p2
.end method


# virtual methods
.method protected addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2
    .param p1, "tag"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getIfd()I

    move-result v0

    .line 98
    .local v0, "ifd":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "ifd":I
    :cond_0
    return-object v1
.end method

.method protected addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2
    .param p1, "tag"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .param p2, "ifdId"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->setTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    return-object v1
.end method

.method public calculateAllIfdOffsets()I
    .locals 4

    .prologue
    .line 231
    const/16 v2, 0x8

    .line 232
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    .line 233
    .local v1, "indexIfd":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I

    move-result v2

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    .line 237
    .local v0, "attribIfd":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->setOffsetToNextIfd(I)V

    .line 239
    invoke-direct {p0, v0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I

    move-result v2

    .line 242
    :cond_1
    return v2
.end method

.method public calculateImageSize()I
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    if-ne p0, p1, :cond_0

    .line 191
    return v8

    .line 193
    :cond_0
    if-nez p1, :cond_1

    .line 194
    return v7

    .line 196
    :cond_1
    instance-of v5, p1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-eqz v5, :cond_7

    move-object v2, p1

    .line 197
    check-cast v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 198
    .local v2, "data":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    iget-object v5, v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    if-eq v5, v6, :cond_2

    .line 199
    return v7

    .line 202
    :cond_2
    invoke-virtual {v2, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v3

    .line 203
    .local v3, "indexIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v4

    .line 204
    .local v4, "indexIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    :cond_3
    invoke-virtual {v2, v9}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    .line 209
    .local v0, "attribIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {p0, v9}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    .line 210
    .local v1, "attribIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    :cond_4
    return v8

    .line 205
    .end local v0    # "attribIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .end local v1    # "attribIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    :cond_5
    return v7

    .line 211
    .restart local v0    # "attribIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .restart local v1    # "attribIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    :cond_6
    return v7

    .line 215
    .end local v0    # "attribIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .end local v1    # "attribIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .end local v2    # "data":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    .end local v3    # "indexIfd1":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .end local v4    # "indexIfd2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    :cond_7
    return v7
.end method

.method protected getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    return-object v0
.end method

.method protected getJpegData()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    return-object v0
.end method

.method protected getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    goto :goto_0
.end method

.method protected getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    .line 88
    .local v0, "mpIfdData":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTag(S)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    return-object v1
.end method
