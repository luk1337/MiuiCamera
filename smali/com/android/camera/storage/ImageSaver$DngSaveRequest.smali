.class Lcom/android/camera/storage/ImageSaver$DngSaveRequest;
.super Lcom/android/camera/storage/ImageSaver$SaveRequest;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DngSaveRequest"
.end annotation


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mImage:Landroid/media/Image;

.field private mMetadata:Landroid/hardware/camera2/CaptureResult;

.field private mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable",
            "<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;Ljava/lang/String;JLandroid/location/Location;IIILandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 21
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "image"    # Landroid/media/Image;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "date"    # J
    .param p7, "loc"    # Landroid/location/Location;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "orientation"    # I
    .param p11, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p12, "metadata"    # Landroid/hardware/camera2/CaptureResult;
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
    .line 459
    .local p3, "reader":Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;, "Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable<Landroid/media/ImageReader;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    .line 462
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 463
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v15, p10

    .line 462
    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 464
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    .line 465
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    .line 466
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 467
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mMetadata:Landroid/hardware/camera2/CaptureResult;

    .line 461
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    .line 474
    :cond_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mSize:I

    return v0
.end method

.method public save()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 478
    const/4 v3, 0x0

    .line 480
    .local v3, "imageFileStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->title:Ljava/lang/String;

    const-string/jumbo v7, ".dng"

    invoke-static {v6, v7}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .local v4, "imageFileStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Landroid/hardware/camera2/DngCreator;

    .line 483
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mMetadata:Landroid/hardware/camera2/CaptureResult;

    .line 482
    invoke-direct {v0, v6, v7}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 485
    .local v0, "dngImageCreator":Landroid/hardware/camera2/DngCreator;
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v0, v4, v6}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    .line 486
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 487
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 488
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 489
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v6}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->title:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 496
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    .line 497
    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    .line 498
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 477
    .end local v0    # "dngImageCreator":Landroid/hardware/camera2/DngCreator;
    .end local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 492
    .restart local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 493
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 496
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    .line 497
    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    .line 498
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 490
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 491
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 495
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 496
    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v6}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    .line 497
    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    .line 498
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 495
    :goto_3
    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->close()V

    .line 496
    iget-object v7, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mReader:Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;

    invoke-virtual {v7}, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->close()V

    .line 497
    iput-object v8, p0, Lcom/android/camera/storage/ImageSaver$DngSaveRequest;->mImage:Landroid/media/Image;

    .line 498
    invoke-static {v3}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 494
    throw v6

    .restart local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    .local v3, "imageFileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 490
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 492
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "imageFileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "imageFileStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
