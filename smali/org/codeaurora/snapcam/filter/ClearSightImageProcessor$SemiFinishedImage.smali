.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemiFinishedImage"
.end annotation


# instance fields
.field mBayerImage:Landroid/graphics/YuvImage;

.field mBayerJpegData:[B

.field mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field mMonoJpegData:[B

.field mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method private constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    .line 1501
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1506
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1507
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1501
    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .prologue
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    return-void
.end method

.method private saveImage(Landroid/graphics/YuvImage;)Z
    .locals 10
    .param p1, "bayerImg"    # Landroid/graphics/YuvImage;

    .prologue
    .line 1551
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1552
    const/4 v0, 0x0

    return v0

    .line 1555
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1556
    .local v6, "date":J
    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 1557
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveYuv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1559
    .local v8, "loc":Landroid/location/Location;
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1560
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v9

    move-object v1, p1

    .line 1559
    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/storage/ImageSaver;->addYuv(Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;IILjava/lang/String;JLandroid/location/Location;I)V

    .line 1561
    const/4 v0, 0x1

    return v0
.end method

.method private saveImage([B[B)Z
    .locals 12
    .param p1, "bayerImg"    # [B
    .param p2, "monoImg"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1565
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1566
    return v3

    .line 1569
    :cond_0
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 1570
    .local v0, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v11

    .line 1573
    .local v11, "orientation":I
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 1574
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1575
    .local v5, "width":I
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 1581
    .local v6, "height":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1582
    .local v8, "date":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1583
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveJpeg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 1585
    .local v10, "loc":Landroid/location/Location;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v11}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1577
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "date":J
    .end local v10    # "loc":Landroid/location/Location;
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 1578
    .restart local v5    # "width":I
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .restart local v6    # "height":I
    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1591
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    .line 1592
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    .line 1593
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1594
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    .line 1595
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1596
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1590
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->saveImage([B[B)Z

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    invoke-direct {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->saveImage(Landroid/graphics/YuvImage;)Z

    goto :goto_0
.end method

.method public updateBayerImage(Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "state"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .prologue
    .line 1523
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    .line 1524
    :cond_0
    return-void

    .line 1526
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 1527
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createYuvImage(Landroid/media/Image;)Landroid/graphics/YuvImage;

    move-result-object v0

    .line 1528
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    if-eqz v0, :cond_3

    .line 1529
    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    .line 1530
    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1522
    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    :cond_3
    return-void
.end method

.method public updateEncodedImage(Landroid/media/Image;Landroid/media/Image;)V
    .locals 3
    .param p1, "bayerImage"    # Landroid/media/Image;
    .param p2, "monoImage"    # Landroid/media/Image;

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 1510
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1512
    :cond_0
    return-void

    .line 1511
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1514
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerJpegData:[B

    .line 1515
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-virtual {v0, p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mMonoJpegData:[B

    .line 1516
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerImage:Landroid/graphics/YuvImage;

    .line 1517
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1518
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ENCODED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mBayerState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1519
    sget-object v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1509
    return-void
.end method

.method public updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "state"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .prologue
    .line 1536
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->NONE:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1537
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1538
    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->mResultState:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    .line 1535
    :cond_1
    return-void
.end method
