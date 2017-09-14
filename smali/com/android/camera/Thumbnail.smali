.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .param p4, "mirror"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 72
    iput-object p1, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 73
    invoke-static {p2, p3, p4}, Lcom/android/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    return-void
.end method

.method public static createBitmap([BIZI)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "jpeg"    # [B
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z
    .param p3, "inSampleSize"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 472
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 473
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput p3, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 474
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 475
    array-length v1, p0

    invoke-static {p0, v2, v1, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    rem-int/lit16 p1, p1, 0x168

    .line 478
    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 479
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 480
    .local v5, "m1":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 481
    .local v7, "m2":Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 482
    int-to-float v1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 482
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 485
    :cond_1
    if-eqz p2, :cond_2

    .line 486
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 487
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    .line 486
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 488
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 493
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 492
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 493
    const/4 v6, 0x1

    .line 492
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 496
    .local v9, "rotated":Landroid/graphics/Bitmap;
    if-eq v9, v0, :cond_3

    .line 497
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_3
    return-object v9

    .line 500
    .end local v9    # "rotated":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 501
    .local v10, "t":Ljava/lang/Exception;
    const-string/jumbo v1, "Thumbnail"

    const-string/jumbo v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v5    # "m1":Landroid/graphics/Matrix;
    .end local v7    # "m2":Landroid/graphics/Matrix;
    .end local v10    # "t":Ljava/lang/Exception;
    :cond_4
    return-object v0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "mirror"    # Z

    .prologue
    const/4 v2, 0x0

    .line 552
    if-nez p1, :cond_0

    .line 553
    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "Failed to create thumbnail from null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-object v2

    .line 556
    :cond_0
    new-instance v0, Lcom/android/camera/Thumbnail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    return-object v0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 4
    .param p0, "jpeg"    # [B
    .param p1, "orientation"    # I
    .param p2, "inSampleSize"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mirror"    # Z

    .prologue
    .line 419
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 420
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 421
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 422
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1, p4}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mirror"    # Z

    .prologue
    .line 427
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 430
    .local v11, "isImage":Z
    if-eqz v11, :cond_3

    .line 431
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "_data"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "orientation"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 433
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 429
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 434
    .local v9, "cursor":Landroid/database/Cursor;
    const-wide/16 v12, -0x1

    .line 435
    .local v12, "id":J
    const/4 v15, 0x0

    .line 436
    .local v15, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 437
    .local v14, "orientation":I
    const/4 v10, 0x0

    .line 439
    .local v10, "find":Z
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 441
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 442
    .local v15, "path":Ljava/lang/String;
    if-eqz v11, :cond_4

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 443
    :goto_1
    const/4 v10, 0x1

    .line 446
    .end local v15    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    .line 447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 448
    const/4 v9, 0x0

    .line 451
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v8, 0x0

    .line 452
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_7

    .line 453
    if-eqz v11, :cond_6

    .line 454
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 455
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_2

    .line 456
    const/4 v2, 0x1

    invoke-static {v15, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 464
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v8, v14, v1}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    return-object v2

    .line 432
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "find":Z
    .end local v12    # "id":J
    .end local v14    # "orientation":I
    :cond_3
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "_data"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    goto :goto_0

    .line 442
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "find":Z
    .restart local v12    # "id":J
    .restart local v14    # "orientation":I
    .restart local v15    # "path":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 445
    .end local v15    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 446
    if-eqz v9, :cond_5

    .line 447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 448
    const/4 v9, 0x0

    .line 445
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_5
    throw v2

    .line 459
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 460
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_2

    .line 461
    const/4 v2, 0x1

    invoke-static {v15, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 467
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "find":Z
    .end local v11    # "isImage":Z
    .end local v12    # "id":J
    .end local v14    # "orientation":I
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "targetWidth"    # I

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "targetWidth"    # I

    .prologue
    const/4 v9, 0x0

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 520
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 521
    :try_start_0
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 525
    :goto_0
    const-wide/16 v10, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 532
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 537
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_1

    return-object v9

    .line 523
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_2
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 533
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    goto :goto_1

    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 528
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v2

    .line 532
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 533
    :catch_4
    move-exception v2

    goto :goto_1

    .line 530
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    .line 532
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 530
    :goto_2
    throw v9

    .line 533
    :catch_5
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_2

    .line 540
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 541
    .local v8, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 542
    .local v4, "height":I
    if-le v8, p2, :cond_2

    .line 543
    int-to-float v9, p2

    int-to-float v10, v8

    div-float v6, v9, v10

    .line 544
    .local v6, "scale":F
    int-to-float v9, v8

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 545
    .local v7, "w":I
    int-to-float v9, v4

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 546
    .local v3, "h":I
    const/4 v9, 0x1

    invoke-static {v0, v7, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .end local v3    # "h":I
    .end local v6    # "scale":F
    .end local v7    # "w":I
    :cond_2
    return-object v0
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 128
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 129
    .local v2, "h":I
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 130
    .local v1, "d":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Rect;

    sub-int v9, v8, v1

    shr-int/lit8 v9, v9, 0x1

    sub-int v10, v2, v1

    shr-int/lit8 v10, v10, 0x1

    .line 132
    add-int v11, v8, v1

    shr-int/lit8 v11, v11, 0x1

    add-int v12, v2, v1

    shr-int/lit8 v12, v12, 0x1

    .line 131
    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v7, "rectSrc":Landroid/graphics/Rect;
    const/16 v9, 0x96

    if-ge v1, v9, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 137
    :cond_0
    shr-int/lit8 v5, v1, 0x1

    .line 138
    .local v5, "r":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v13, v13, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .local v6, "rectDst":Landroid/graphics/Rect;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-static {v1, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 146
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    int-to-float v9, v5

    int-to-float v10, v5

    int-to-float v11, v5

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 150
    invoke-virtual {v0, p0, v7, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    return-object v3
.end method

.method private static getImageBucketIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, ","

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, ")"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 20
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 317
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 319
    .local v16, "baseUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 320
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "orientation"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 321
    const-string/jumbo v1, "datetaken"

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const-string/jumbo v1, "_data"

    const/4 v5, 0x3

    aput-object v1, v3, v5

    .line 322
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=\'image/jpeg\' AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    invoke-static {}, Lcom/android/camera/Thumbnail;->getImageBucketIds()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    const-string/jumbo v5, " AND "

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    const-string/jumbo v5, "_size"

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    const-string/jumbo v5, " > 0"

    .line 322
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v6, "datetaken DESC,_id DESC"

    .line 325
    .local v6, "order":Ljava/lang/String;
    const/16 v17, 0x0

    .line 326
    .local v17, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 327
    .local v18, "cursorAll":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 329
    .local v19, "firstMiss":Z
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 330
    .local v17, "cursor":Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 331
    if-eqz v1, :cond_1

    .line 333
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 334
    .local v8, "id":J
    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 335
    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 334
    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-eqz v17, :cond_0

    .line 357
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_0
    return-object v7

    .line 338
    .end local v8    # "id":J
    :cond_1
    const/16 v19, 0x1

    .line 342
    :cond_2
    if-eqz v19, :cond_6

    .line 343
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v16

    move-object v12, v3

    move-object v13, v4

    move-object v15, v6

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 344
    .local v18, "cursorAll":Landroid/database/Cursor;
    if-eqz v18, :cond_6

    .line 345
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 346
    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 347
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 346
    if-eqz v1, :cond_3

    .line 348
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 349
    .restart local v8    # "id":J
    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 350
    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 349
    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    if-eqz v17, :cond_4

    .line 357
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_4
    if-eqz v18, :cond_5

    .line 360
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_5
    return-object v7

    .line 356
    .end local v8    # "id":J
    .end local v18    # "cursorAll":Landroid/database/Cursor;
    :cond_6
    if-eqz v17, :cond_7

    .line 357
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_7
    if-eqz v18, :cond_8

    .line 360
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_8
    const/4 v1, 0x0

    return-object v1

    .line 355
    .end local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 356
    if-eqz v17, :cond_9

    .line 357
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_9
    if-eqz v18, :cond_a

    .line 360
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_a
    throw v1
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "result"    # [Lcom/android/camera/Thumbnail;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v2

    .line 221
    .local v2, "image":Lcom/android/camera/Thumbnail$Media;
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v4

    .line 222
    .local v4, "video":Lcom/android/camera/Thumbnail$Media;
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    const/4 v5, 0x0

    return v5

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 228
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    if-eqz v4, :cond_1

    iget-wide v6, v2, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v8, v4, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    .line 229
    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, v2, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    const/4 v5, -0x1

    return v5

    .line 232
    :cond_2
    iget-wide v6, v2, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v5, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 237
    :try_start_0
    iget-object v5, v2, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :cond_3
    :goto_0
    move-object v3, v2

    .line 262
    .local v3, "lastMedia":Lcom/android/camera/Thumbnail$Media;
    :goto_1
    if-eqz v0, :cond_7

    iget-object v5, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v5, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    iget-object v5, v3, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v6, v3, Lcom/android/camera/Thumbnail$Media;->orientation:I

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p1, v6

    .line 264
    const/4 v5, 0x1

    return v5

    .line 238
    .end local v3    # "lastMedia":Lcom/android/camera/Thumbnail$Media;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Thumbnail"

    const-string/jumbo v6, "exception in createImageThumbnail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p2, :cond_5

    iget-object v5, v4, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    const/4 v5, -0x1

    return v5

    .line 247
    :cond_5
    iget-wide v6, v4, Lcom/android/camera/Thumbnail$Media;->id:J

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v5, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    .line 252
    :try_start_1
    iget-object v5, v4, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 258
    :cond_6
    :goto_2
    move-object v3, v4

    .restart local v3    # "lastMedia":Lcom/android/camera/Thumbnail$Media;
    goto :goto_1

    .line 253
    .end local v3    # "lastMedia":Lcom/android/camera/Thumbnail$Media;
    :catch_1
    move-exception v1

    .line 254
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Thumbnail"

    const-string/jumbo v6, "exception in createVideoThumbnail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastMedia":Lcom/android/camera/Thumbnail$Media;
    :cond_7
    const/4 v5, 0x2

    return v5
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;
    .locals 16
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 182
    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "last_thumb"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 184
    .local v11, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 185
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 186
    .local v7, "f":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 187
    .local v1, "b":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 188
    .local v4, "d":Ljava/io/DataInputStream;
    sget-object v13, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 190
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v7    # "f":Ljava/io/FileInputStream;
    .local v8, "f":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 192
    .local v2, "b":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 193
    .local v5, "d":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .end local v4    # "d":Ljava/io/DataInputStream;
    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 194
    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 195
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 204
    :try_start_4
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    .line 198
    :cond_0
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 199
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 204
    :try_start_6
    invoke-static {v8}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v13

    .line 209
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v3, v12, v13}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v10

    .line 210
    .local v10, "thumbnail":Lcom/android/camera/Thumbnail;
    if-eqz v10, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/camera/Thumbnail;->setFromFile(Z)V

    .line 211
    :cond_1
    return-object v10

    .line 200
    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .end local v5    # "d":Ljava/io/DataInputStream;
    .end local v8    # "f":Ljava/io/FileInputStream;
    .end local v10    # "thumbnail":Lcom/android/camera/Thumbnail;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    .local v11, "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 201
    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .end local v11    # "uri":Landroid/net/Uri;
    .local v6, "e":Ljava/io/IOException;
    :goto_0
    :try_start_7
    const-string/jumbo v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Fail to load bitmap. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 204
    :try_start_8
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 202
    const/4 v12, 0x0

    monitor-exit v13

    return-object v12

    .line 203
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 204
    :goto_1
    :try_start_9
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 188
    :catchall_1
    move-exception v12

    :goto_2
    monitor-exit v13

    throw v12

    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    .local v11, "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .local v4, "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .local v1, "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .local v7, "f":Ljava/io/FileInputStream;
    goto :goto_2

    .line 203
    .end local v7    # "f":Ljava/io/FileInputStream;
    .local v1, "b":Ljava/io/BufferedInputStream;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    .local v11, "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .local v1, "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v12

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .local v4, "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .line 200
    .end local v7    # "f":Ljava/io/FileInputStream;
    .local v1, "b":Ljava/io/BufferedInputStream;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    .restart local v11    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .local v1, "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .local v4, "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getLastThumbnailFromUriList(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "result"    # [Lcom/android/camera/Thumbnail;
    .param p3, "uriFromFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Lcom/android/camera/Thumbnail;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 561
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v3

    .line 563
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 564
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 565
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1, p0}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 566
    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    const/4 v2, -0x1

    return v2

    .line 569
    :cond_2
    invoke-static {p0, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v2

    aput-object v2, p1, v3

    .line 570
    const/4 v2, 0x1

    return v2

    .line 563
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 573
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    return v3
.end method

.method public static getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, 0x0

    .line 304
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v0

    .line 305
    .local v0, "image":Lcom/android/camera/Thumbnail$Media;
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;

    move-result-object v1

    .line 307
    .local v1, "video":Lcom/android/camera/Thumbnail$Media;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v4, v1, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 308
    :cond_0
    iget-object v2, v0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object v2

    .line 309
    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-wide v2, v1, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v4, v0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 310
    :cond_2
    iget-object v2, v1, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    return-object v2

    .line 312
    :cond_3
    return-object v6
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail$Media;
    .locals 20
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 367
    sget-object v16, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 369
    .local v16, "baseUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 370
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "_data"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    .line 371
    const-string/jumbo v1, "datetaken"

    const/4 v5, 0x2

    aput-object v1, v3, v5

    .line 372
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Thumbnail;->getVideoBucketIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "_size"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " > 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v6, "datetaken DESC,_id DESC"

    .line 375
    .local v6, "order":Ljava/lang/String;
    const/16 v17, 0x0

    .line 376
    .local v17, "cursor":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 377
    .local v18, "cursorAll":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 379
    .local v19, "firstMiss":Z
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 380
    .local v17, "cursor":Landroid/database/Cursor;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 382
    .local v8, "id":J
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 383
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 382
    if-eqz v1, :cond_1

    .line 384
    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 385
    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 384
    const/4 v10, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz v17, :cond_0

    .line 407
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_0
    return-object v7

    .line 388
    :cond_1
    const/16 v19, 0x1

    .line 392
    .end local v8    # "id":J
    :cond_2
    if-eqz v19, :cond_6

    .line 393
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, v16

    move-object v12, v3

    move-object v13, v4

    move-object v15, v6

    :try_start_1
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 394
    .local v18, "cursorAll":Landroid/database/Cursor;
    if-eqz v18, :cond_6

    .line 395
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 396
    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 397
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 396
    if-eqz v1, :cond_3

    .line 398
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 399
    .restart local v8    # "id":J
    new-instance v7, Lcom/android/camera/Thumbnail$Media;

    const/4 v1, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 400
    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 399
    const/4 v10, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    if-eqz v17, :cond_4

    .line 407
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_4
    if-eqz v18, :cond_5

    .line 410
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_5
    return-object v7

    .line 406
    .end local v8    # "id":J
    .end local v18    # "cursorAll":Landroid/database/Cursor;
    :cond_6
    if-eqz v17, :cond_7

    .line 407
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_7
    if-eqz v18, :cond_8

    .line 410
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_8
    const/4 v1, 0x0

    return-object v1

    .line 405
    .end local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 406
    if-eqz v17, :cond_9

    .line 407
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_9
    if-eqz v18, :cond_a

    .line 410
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_a
    throw v1
.end method

.method private static getVideoBucketIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/android/camera/storage/Storage;->secondaryStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    sget v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, ","

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    sget v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, ")"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 93
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 95
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    .local v5, "m1":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .local v7, "m2":Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 98
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 98
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 101
    :cond_1
    if-eqz p2, :cond_2

    .line 102
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    .line 102
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 104
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 108
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 107
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    const/4 v6, 0x1

    move-object v0, p0

    .line 107
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 111
    .local v9, "rotated":Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/android/camera/Thumbnail;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 112
    .local v8, "output":Landroid/graphics/Bitmap;
    if-eq v9, p0, :cond_3

    .line 113
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-object v8

    .line 117
    .end local v8    # "output":Landroid/graphics/Bitmap;
    .end local v9    # "rotated":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 118
    .local v10, "t":Ljava/lang/Exception;
    const-string/jumbo v0, "Thumbnail"

    const-string/jumbo v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v5    # "m1":Landroid/graphics/Matrix;
    .end local v7    # "m2":Landroid/graphics/Matrix;
    .end local v10    # "t":Ljava/lang/Exception;
    :cond_4
    invoke-static {p0}, Lcom/android/camera/Thumbnail;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 122
    .restart local v8    # "output":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    return-object v8
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 12
    .param p1, "filesDir"    # Ljava/io/File;

    .prologue
    .line 157
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "last_thumb"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v7, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 159
    .local v5, "f":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 160
    .local v0, "b":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 161
    .local v2, "d":Ljava/io/DataOutputStream;
    sget-object v9, Lcom/android/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 163
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .local v6, "f":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 165
    .local v1, "b":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 166
    .local v3, "d":Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .end local v2    # "d":Ljava/io/DataOutputStream;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    iget-object v8, p0, Lcom/android/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v8, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 168
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 172
    :try_start_4
    invoke-static {v6}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v6    # "f":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v9

    .line 156
    return-void

    .line 169
    .local v0, "b":Ljava/io/BufferedOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 170
    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string/jumbo v8, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fail to store bitmap. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    :try_start_6
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9

    throw v8

    .line 171
    :catchall_1
    move-exception v8

    .line 172
    :goto_3
    :try_start_7
    invoke-static {v5}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 171
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .local v5, "f":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 171
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 169
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .local v0, "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .local v2, "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setFromFile(Z)V
    .locals 0
    .param p1, "fromFile"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/camera/Thumbnail;->mFromFile:Z

    .line 84
    return-void
.end method
