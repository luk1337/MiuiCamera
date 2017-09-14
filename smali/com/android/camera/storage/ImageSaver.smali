.class public Lcom/android/camera/storage/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/ImageSaver$1;,
        Lcom/android/camera/storage/ImageSaver$MemoryManager;,
        Lcom/android/camera/storage/ImageSaver$SaveRequest;
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

.method static synthetic -wrap0(Lcom/android/camera/storage/ImageSaver;)V
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/android/camera/storage/ImageSaver$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaver$1;-><init>(Lcom/android/camera/storage/ImageSaver;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    .line 63
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    .line 64
    iput-boolean p3, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/android/camera/storage/ImageSaver$MemoryManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;-><init>(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->start()V

    .line 61
    return-void
.end method

.method private isLastImageForThumbnail()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 332
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    iget-boolean v1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    if-eqz v1, :cond_0

    return v2

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLjava/lang/String;Z)V
    .locals 24
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p10, "orientation"    # I
    .param p11, "isHide"    # Z
    .param p12, "isMap"    # Z
    .param p13, "finalImage"    # Z
    .param p14, "oldTitle"    # Ljava/lang/String;
    .param p15, "isPortrait"    # Z

    .prologue
    .line 276
    if-eqz p2, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p10

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p14

    move/from16 v14, p15

    invoke-static/range {v4 .. v14}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;Z)Z

    .line 282
    :cond_0
    :goto_0
    if-eqz p15, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/camera/google/PhotosSpecialTypesProvider;->markPortraitSpecialType(Landroid/content/Context;Landroid/net/Uri;)V

    .line 285
    :cond_1
    invoke-static {}, Lcom/android/camera/google/ProcessingMediaManager;->instance()Lcom/android/camera/google/ProcessingMediaManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/google/ProcessingMediaManager;->removeProcessingMedia(Landroid/content/Context;Landroid/net/Uri;)V

    .line 289
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 290
    if-eqz p2, :cond_5

    .line 292
    monitor-enter p0

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    if-nez v4, :cond_2

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver;->isLastImageForThumbnail()Z

    move-result v4

    .line 297
    if-eqz v4, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    .line 297
    :cond_2
    const/16 v20, 0x0

    :goto_1
    monitor-exit p0

    .line 302
    if-eqz v20, :cond_3

    .line 305
    move/from16 v0, p7

    int-to-double v4, v0

    move/from16 v0, p8

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4080000000000000L    # 512.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v21, v0

    .line 306
    .local v21, "ratio":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v19

    .line 307
    .local v19, "inSampleSize":I
    if-eqz p12, :cond_8

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v4, v0, v5}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v22

    .line 310
    .local v22, "t":Lcom/android/camera/Thumbnail;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v5

    .line 313
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 318
    .end local v19    # "inSampleSize":I
    .end local v21    # "ratio":I
    .end local v22    # "t":Lcom/android/camera/Thumbnail;
    :cond_3
    monitor-enter p0

    .line 319
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 321
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    .line 322
    if-eqz p13, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    monitor-exit p0

    .line 275
    :cond_5
    return-void

    .line 278
    :cond_6
    if-eqz p1, :cond_0

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    .line 280
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p10

    move-object/from16 v10, p1

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v18, p15

    .line 279
    invoke-static/range {v4 .. v18}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZZ)Landroid/net/Uri;

    move-result-object p2

    goto/16 :goto_0

    .line 300
    :cond_7
    move/from16 v20, p13

    .local v20, "needThumbnail":Z
    goto/16 :goto_1

    .line 292
    .end local v20    # "needThumbnail":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 309
    .restart local v19    # "inSampleSize":I
    .restart local v21    # "ratio":I
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p10

    move/from16 v2, v19

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v22

    .restart local v22    # "t":Lcom/android/camera/Thumbnail;
    goto :goto_2

    .line 310
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 318
    .end local v19    # "inSampleSize":I
    .end local v21    # "ratio":I
    .end local v22    # "t":Lcom/android/camera/Thumbnail;
    :catchall_2
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateThumbnail()V
    .locals 4

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;

    .line 264
    .local v0, "t":Lcom/android/camera/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 259
    :cond_0
    return-void

    .line 261
    .end local v0    # "t":Lcom/android/camera/Thumbnail;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V
    .locals 2
    .param p1, "r"    # Lcom/android/camera/storage/ImageSaver$SaveRequest;

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 133
    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "addImage: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 134
    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    .line 139
    :cond_1
    iget-object v0, p1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    iget-object v1, p1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap4(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 130
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZ)V
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

    .prologue
    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v15, 0x0

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

    .line 74
    invoke-virtual/range {v0 .. v15}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZ)V

    .line 73
    return-void
.end method

.method public addImage([BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZ)V
    .locals 4
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
    .param p15, "isPortrait"    # Z

    .prologue
    .line 88
    new-instance v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v1}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>()V

    .line 89
    .local v1, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    .line 90
    iput-wide p4, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    .line 91
    iput-object p6, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 92
    iput-object p2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 93
    iput-object p3, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    .line 94
    if-nez p7, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    .line 95
    iput p8, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    .line 96
    iput p9, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    .line 97
    iput-object p10, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 98
    iput p11, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    .line 99
    move/from16 v0, p12

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    .line 100
    move/from16 v0, p13

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    .line 101
    move/from16 v0, p14

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    .line 102
    move/from16 v0, p15

    iput-boolean v0, v1, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isPortrait:Z

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 87
    return-void

    .line 94
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public getBurstDelay()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap3(Lcom/android/camera/storage/ImageSaver$MemoryManager;)I

    move-result v0

    return v0
.end method

.method public getSuitableBurstShotSpeed()F
    .locals 1

    .prologue
    .line 127
    const v0, 0x3f28f5c3    # 0.66f

    return v0
.end method

.method public isNeedSlowDown()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap0(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public isNeedStopCapture()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap1(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v0

    return v0
.end method

.method public onHostDestroy()V
    .locals 3

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 241
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 246
    const-string/jumbo v0, "ImageSaver"

    const-string/jumbo v1, "onHostDestroy"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "isQueueEmpty":Z
    monitor-enter p0

    .line 213
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 214
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isQueueEmpty":Z
    monitor-exit p0

    .line 217
    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/storage/ImageSaver;->mUpdateThumbnail:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mPendingThumbnail:Lcom/android/camera/Thumbnail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 222
    if-nez v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 225
    :cond_0
    const-string/jumbo v1, "ImageSaver"

    const-string/jumbo v2, "onHostPause"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    .local v0, "isQueueEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 217
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
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaver;->mIsImageCaptureIntent:Z

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver;->mHostState:I

    .line 200
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

    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap5(Lcom/android/camera/storage/ImageSaver$MemoryManager;)V

    .line 155
    :goto_0
    monitor-enter p0

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver;->mStop:Z

    if-eqz v2, :cond_0

    .line 160
    const-string/jumbo v2, "ImageSaver"

    const-string/jumbo v3, "run: exiting"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 151
    return-void

    .line 165
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v18

    .local v18, "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 171
    .end local v18    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v19, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    monitor-exit p0

    .line 175
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mLastImageUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 178
    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    .line 179
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, v19

    iget v12, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, v19

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    move-object/from16 v0, v19

    iget-boolean v14, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isPortrait:Z

    move/from16 v17, v0

    move-object/from16 v2, p0

    .line 178
    invoke-direct/range {v2 .. v17}, Lcom/android/camera/storage/ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLjava/lang/String;Z)V

    .line 180
    monitor-enter p0

    .line 181
    :try_start_3
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap6(Lcom/android/camera/storage/ImageSaver$MemoryManager;I)V

    .line 182
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver;->mMemoryManager:Lcom/android/camera/storage/ImageSaver$MemoryManager;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver$MemoryManager;->-wrap2(Lcom/android/camera/storage/ImageSaver$MemoryManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 155
    .end local v19    # "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public shouldStopShot()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/camera/storage/ImageSaver;->mShouldStop:Z

    return v0
.end method

.method public updateImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;

    invoke-direct {v0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>()V

    .line 109
    .local v0, "r":Lcom/android/camera/storage/ImageSaver$SaveRequest;
    iput-object p1, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 110
    iput-object p2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaver$SaveRequest;)V

    .line 107
    return-void
.end method
