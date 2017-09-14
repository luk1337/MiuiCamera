.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$1;,
        Lcom/android/camera/storage/ImageSaver$DngSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;,
        Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mHandler:Landroid/os/Handler;

.field private mHostState:I

.field private mIsImageCaptureIntent:Z

.field private mLastImageUri:Landroid/net/Uri;

.field private mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

.field private mPendingThumbnail:Lcom/android/camera/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/storage/ImageSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldStop:Z

.field private mStop:Z

.field private mUpdateThumbnail:Ljava/lang/Runnable;

.field private mUpdateThumbnailLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z
    .locals 1
    .param p1, "finalImage"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->needThumbnail(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/storage/ImageSaver;[B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .locals 1
    .param p1, "csImage"    # [B
    .param p2, "bayerImg"    # [B
    .param p3, "monoImg"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "addToSecure"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/storage/ImageSaver;->notifyNewImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V
    .locals 0
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/storage/ImageSaver;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "isImageCaptureIntent"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    .line 76
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 77
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    .line 74
    return-void
.end method

.method private addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V
    .locals 2
    .param p1, "r"    # Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .prologue
    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 150
    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "addImage: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 151
    return-void

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {p1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    .locals 5
    .param p1, "csImage"    # [B
    .param p2, "bayerImg"    # [B
    .param p3, "monoImg"    # [B

    .prologue
    .line 306
    new-instance v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-direct {v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;-><init>()V

    .line 307
    .local v3, "mpo":Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 309
    .local v0, "bayer":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    new-instance v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, p3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 311
    .local v2, "mono":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    if-nez p1, :cond_0

    .line 312
    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    .line 313
    invoke-virtual {v3, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    .line 321
    :goto_0
    return-object v3

    .line 315
    :cond_0
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;-><init>([BLjava/nio/ByteOrder;)V

    .line 317
    .local v1, "cs":Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    invoke-virtual {v3, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    .line 318
    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    .line 319
    invoke-virtual {v3, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V

    goto :goto_0
.end method

.method private isLastImageForThumbnail()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    iget-boolean v1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    if-eqz v1, :cond_0

    return v2

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private needThumbnail(Z)Z
    .locals 2
    .param p1, "finalImage"    # Z

    .prologue
    const/4 v0, 0x0

    .line 325
    monitor-enter p0

    .line 330
    if-eqz p1, :cond_0

    .line 331
    :try_start_0
    iget v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez v1, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result v1

    .line 330
    if-eqz v1, :cond_0

    .line 333
    iget-boolean v1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 330
    return v0

    .line 333
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyNewImage(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "addToSecure"    # Z

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v0, p1}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 350
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 351
    if-eqz p2, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 346
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postUpdateThumbnail(Lcom/android/camera/Thumbnail;)V
    .locals 3
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 342
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 337
    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateThumbnail()V
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 290
    .local v0, "t":Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 293
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 285
    :cond_0
    return-void

    .line 287
    .end local v0    # "t":Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addDng(Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 14
    .param p1, "image"    # Landroid/media/Image;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p11, "metadata"    # Landroid/hardware/camera2/CaptureResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Landroid/location/Location;",
            "III",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "reader":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<Landroid/media/ImageReader;>;"
    new-instance v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 121
    .local v1, "r":Lcom/android/camera/storage/ImageSaver$DngSaveRequest;
    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 118
    return-void
.end method

.method public addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p10, "orientation"    # I
    .param p11, "isHide"    # Z
    .param p12, "isMapFile"    # Z
    .param p13, "finalImage"    # Z
    .param p14, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 88
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v0 .. v15}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 87
    return-void
.end method

.method public addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "oldTitle"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "loc"    # Landroid/location/Location;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p11, "orientation"    # I
    .param p12, "isHide"    # Z
    .param p13, "isMapFile"    # Z
    .param p14, "finalImage"    # Z
    .param p15, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 96
    new-instance v3, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 98
    .local v3, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 95
    return-void
.end method

.method public addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V
    .locals 13
    .param p1, "csImage"    # [B
    .param p2, "bayerImg"    # [B
    .param p3, "monoImg"    # [B
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "date"    # J
    .param p9, "loc"    # Landroid/location/Location;
    .param p10, "orientation"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;

    .line 112
    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p10

    .line 111
    invoke-direct/range {v0 .. v12}, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[B[B[BLjava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    .line 113
    .local v0, "r":Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 110
    return-void
.end method

.method public addYuv(Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;IILjava/lang/String;JLandroid/location/Location;I)V
    .locals 14
    .param p1, "bayerImg"    # Landroid/graphics/YuvImage;
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "orientation"    # I

    .prologue
    .line 126
    new-instance v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;

    .line 127
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p9

    .line 126
    invoke-direct/range {v1 .. v12}, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    .line 128
    .local v1, "r":Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;
    invoke-direct {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 125
    return-void
.end method

.method public getBurstDelay()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result v0

    return v0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 1

    .prologue
    .line 144
    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public isNeedSlowDown()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public onHostDestroy()V
    .locals 3

    .prologue
    .line 261
    monitor-enter p0

    .line 262
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 267
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 272
    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "isQueueEmpty":Z
    monitor-enter p0

    .line 239
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 240
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isQueueEmpty":Z
    monitor-exit p0

    .line 243
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 248
    if-nez v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 251
    :cond_0
    const-string/jumbo v1, "ImageSaver"

    const-string/jumbo v2, "onHostPause"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 238
    .local v0, "isQueueEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 243
    .local v0, "isQueueEmpty":Z
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onHostResume(Z)V
    .locals 3
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 226
    const-string/jumbo v0, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHostResume: isCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 222
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    .line 180
    :goto_0
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v2, :cond_0

    .line 185
    const-string/jumbo v2, "ImageSaver"

    const-string/jumbo v3, "run: exiting"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 176
    return-void

    .line 190
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 196
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v1, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    monitor-exit p0

    .line 200
    iget-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 203
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    .line 204
    monitor-enter p0

    .line 205
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->getSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 206
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 180
    .end local v1    # "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public saveMpoImage([B[B[B)[B
    .locals 2
    .param p1, "csImage"    # [B
    .param p2, "bayerImg"    # [B
    .param p3, "monoImg"    # [B

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->createMpoData([B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    move-result-object v0

    .line 301
    .local v0, "mpo":Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)[B

    move-result-object v1

    return-object v1
.end method

.method public shouldStopShot()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    return v0
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    .line 104
    .local v0, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 105
    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    .line 106
    invoke-direct {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 102
    return-void
.end method
