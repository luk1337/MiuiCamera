.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
.super Ljava/lang/Object;
.source "MpoData.java"


# instance fields
.field private mAuxiliaryImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private updateAttribIfdTags()V
    .locals 12

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Primary Mpo Image has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No auxiliary images have been added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_1
    const/4 v8, 0x1

    .line 170
    .local v8, "imageNum":I
    const/4 v0, 0x0

    .line 172
    .local v0, "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .end local v0    # "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v1, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 174
    .local v0, "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    const-wide v10, 0xffffffffL

    invoke-virtual {v0, v10, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(J)Z

    .line 175
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 178
    .local v6, "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .end local v0    # "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v1, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 180
    .restart local v0    # "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "imageNum":I
    .local v9, "imageNum":I
    invoke-virtual {v0, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    .line 181
    invoke-virtual {v6, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move v8, v9

    .end local v9    # "imageNum":I
    .restart local v8    # "imageNum":I
    goto :goto_0

    .line 163
    .end local v6    # "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    :cond_2
    return-void
.end method

.method private updateIndexIfdTags()V
    .locals 13

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Primary Mpo Image has not been set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No auxiliary images have been added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v3, v3

    .line 134
    const/4 v4, 0x1

    .line 133
    invoke-virtual {v2, v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    .line 135
    .local v0, "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .end local v0    # "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v2

    .line 137
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 139
    .restart local v0    # "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    .line 140
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 143
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v2, v2

    const/4 v3, 0x7

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 143
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 145
    .local v1, "mpEntryTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v12, "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;>;"
    const/4 v11, 0x0

    .line 149
    .local v11, "imgOffset":I
    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v7, v3, v2, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 150
    .local v7, "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v2

    add-int/lit8 v11, v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 154
    .local v8, "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    invoke-virtual {v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v10

    .line 155
    .local v10, "imageSize":I
    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    .end local v7    # "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    const v2, 0x20002

    invoke-direct {v7, v2, v10, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 156
    .restart local v7    # "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/2addr v11, v10

    goto :goto_0

    .line 159
    .end local v8    # "image":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    .end local v10    # "imageSize":I
    :cond_3
    invoke-virtual {v1, v12}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 160
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 127
    return-void
.end method


# virtual methods
.method public addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V
    .locals 3
    .param p1, "image"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 54
    .local v0, "imageNum":I
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V

    .line 51
    return-void

    .line 53
    .end local v0    # "imageNum":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V
    .locals 12
    .param p1, "image"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    .param p2, "imageNum"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 75
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    .line 76
    const/4 v2, 0x7

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 77
    .local v0, "mpFormatVersionTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget-object v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 80
    new-instance v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v7, v1

    .line 81
    const/4 v11, 0x0

    move v8, v3

    move v9, v5

    move v10, v4

    .line 80
    invoke-direct/range {v6 .. v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 82
    .local v6, "imageNumTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v6, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    .line 83
    invoke-virtual {p1, v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 74
    return-void
.end method

.method public addDefaultIndexIfdTags()V
    .locals 15

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 87
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Primary Mpo Image has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No auxiliary images have been added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 93
    sget v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v6, v6

    .line 92
    invoke-virtual {v1, v6, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    .line 94
    .local v0, "mpFormatVersionTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .end local v0    # "mpFormatVersionTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 97
    .restart local v0    # "mpFormatVersionTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget-object v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    .line 98
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v6, v6

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v5

    .line 103
    .local v5, "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    if-nez v5, :cond_3

    .line 104
    new-instance v5, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .end local v5    # "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v6, v1

    move v7, v3

    move v8, v4

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 107
    .restart local v5    # "numImagesTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    .line 108
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 111
    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v8, v1

    move v9, v2

    move v11, v4

    move v12, v10

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    .line 113
    .local v7, "mpEntryTag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v14, "mpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;>;"
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 116
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v7, v14}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 119
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v7}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 86
    return-void
.end method

.method public getAuxiliaryImageCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAuxiliaryMpoImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    return-object v0
.end method

.method public setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    .line 47
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultIndexIfdTags()V

    .line 45
    return-void
.end method

.method public updateAllTags()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateAttribIfdTags()V

    .line 124
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateIndexIfdTags()V

    .line 122
    return-void
.end method
