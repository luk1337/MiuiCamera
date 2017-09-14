.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
.super Lcom/android/gallery3d/exif/ExifTag;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    }
.end annotation


# direct methods
.method constructor <init>(SSIIZ)V
    .locals 0
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 45
    return-void
.end method


# virtual methods
.method public getMpEntryValue()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v3

    sget v4, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v4

    if-eq v3, v4, :cond_0

    .line 64
    const/4 v3, 0x0

    return-object v3

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAsBytes()[B

    move-result-object v0

    .line 68
    .local v0, "bytes":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 70
    new-instance v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    const/16 v4, 0x10

    invoke-static {v0, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 72
    :cond_1
    return-object v1
.end method

.method public setValue(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;>;"
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v3

    sget v4, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v4

    if-eq v3, v4, :cond_0

    .line 51
    const/4 v3, 0x0

    return v3

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    new-array v0, v3, [B

    .line 55
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    .line 57
    .local v1, "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    mul-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->getBytes(Ljava/nio/ByteBuffer;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "entry":Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    move-result v3

    return v3
.end method
