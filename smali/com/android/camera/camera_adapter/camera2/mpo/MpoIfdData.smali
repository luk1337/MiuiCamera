.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
.super Ljava/lang/Object;
.source "MpoIfdData.java"


# static fields
.field public static final MP_FORMAT_VER_VALUE:[B


# instance fields
.field private final mIfdId:I

.field private mOffsetToNextIfd:I

.field private final mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    .line 28
    return-void

    .line 31
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    .line 41
    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mIfdId:I

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 105
    if-ne p0, p1, :cond_0

    .line 106
    return v9

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 109
    return v5

    .line 111
    :cond_1
    instance-of v4, p1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    .line 113
    .local v0, "data":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 114
    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    .line 115
    .local v3, "tags":[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v3, v4

    .line 116
    .local v1, "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .line 117
    .local v2, "tag2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    return v5

    .line 115
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "tag":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .end local v2    # "tag2":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_3
    return v9

    .line 124
    .end local v0    # "data":Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .end local v3    # "tags":[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    :cond_4
    return v5
.end method

.method protected getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    .line 88
    return-void
.end method

.method protected setTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .locals 2
    .param p1, "tag"    # Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setIfd(I)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method
