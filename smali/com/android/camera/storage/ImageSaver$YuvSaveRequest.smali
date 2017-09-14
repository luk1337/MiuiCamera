.class Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;
.super Lcom/android/camera/storage/ImageSaver$SaveRequest;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvSaveRequest"
.end annotation


# instance fields
.field private mBayerImage:Landroid/graphics/YuvImage;

.field private mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field private mSize:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;Landroid/graphics/YuvImage;Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V
    .locals 21
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "bayerImg"    # Landroid/graphics/YuvImage;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "date"    # J
    .param p7, "loc"    # Landroid/location/Location;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p11, "orientation"    # I

    .prologue
    .line 575
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    .line 578
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 579
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    .line 578
    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 580
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    .line 581
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 577
    return-void
.end method

.method private calculateCropRect(IIII)Landroid/graphics/Rect;
    .locals 5
    .param p1, "requiredWidth"    # I
    .param p2, "requiredHeight"    # I
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 661
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 662
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 664
    :cond_1
    invoke-static {p1, v3, p3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 665
    invoke-static {p2, v3, p4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p2

    .line 666
    sub-int v2, p3, p1

    div-int/lit8 v0, v2, 0x2

    .line 667
    .local v0, "offsetX":I
    sub-int v2, p4, p2

    div-int/lit8 v1, v2, 0x2

    .line 668
    .local v1, "offsetY":I
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v0, p1

    add-int v4, v1, p2

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 586
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    if-eqz v0, :cond_0

    .line 588
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    invoke-virtual {v1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    .line 591
    :cond_0
    iget v0, p0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mSize:I

    return v0
.end method

.method public save()V
    .locals 24

    .prologue
    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->width:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->height:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v23

    .line 596
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->calculateCropRect(IIII)Landroid/graphics/Rect;

    move-result-object v8

    .line 598
    .local v8, "cropRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getJpegQuality()I

    move-result v18

    .line 599
    .local v18, "jpegQuality":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 600
    .local v7, "bayerStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 601
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 602
    .local v6, "bayerData":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 604
    new-instance v11, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v11}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 605
    .local v11, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 606
    .local v19, "tag":Lcom/android/gallery3d/exif/ExifTag;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 607
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 608
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 609
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 610
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->orientation:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 612
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->orientation:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    .line 612
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 614
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 616
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 618
    .local v15, "fn":Ljava/lang/Float;
    if-eqz v15, :cond_1

    .line 619
    new-instance v13, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    .line 620
    .local v13, "fNumber":Lcom/android/gallery3d/exif/Rational;
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    move/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 621
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 623
    .end local v13    # "fNumber":Lcom/android/gallery3d/exif/Rational;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 624
    .local v14, "fl":Ljava/lang/Float;
    if-eqz v14, :cond_2

    .line 625
    new-instance v16, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x64

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    .line 626
    .local v16, "focusLength":Lcom/android/gallery3d/exif/Rational;
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    move/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 627
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 629
    .end local v16    # "focusLength":Lcom/android/gallery3d/exif/Rational;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 630
    .local v17, "iso":Ljava/lang/Integer;
    if-eqz v17, :cond_3

    .line 631
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 632
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 634
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v20, v0

    sget-object v21, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 635
    .local v10, "et":Ljava/lang/Long;
    if-eqz v10, :cond_4

    .line 636
    new-instance v12, Lcom/android/gallery3d/exif/Rational;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/32 v22, 0x3b9aca00

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    .line 637
    .local v12, "exposureTime":Lcom/android/gallery3d/exif/Rational;
    sget v20, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    move/from16 v0, v20

    invoke-virtual {v11, v0, v12}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v19

    .line 638
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 641
    .end local v10    # "et":Ljava/lang/Long;
    .end local v12    # "exposureTime":Lcom/android/gallery3d/exif/Rational;
    .end local v14    # "fl":Ljava/lang/Float;
    .end local v15    # "fn":Ljava/lang/Float;
    .end local v17    # "iso":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 645
    :cond_5
    :try_start_0
    invoke-virtual {v11, v6, v7}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 646
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 651
    :goto_0
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->data:[B

    .line 652
    invoke-super/range {p0 .. p0}, Lcom/android/camera/storage/ImageSaver$SaveRequest;->save()V

    .line 654
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mBayerImage:Landroid/graphics/YuvImage;

    .line 655
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$YuvSaveRequest;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 656
    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 595
    return-void

    .line 647
    :catch_0
    move-exception v9

    .line 648
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v20, "ImageSaver"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
