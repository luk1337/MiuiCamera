.class public Lcom/android/camera/storage/ImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveRequest"
.end annotation


# instance fields
.field public data:[B

.field public date:J

.field public exif:Lcom/android/gallery3d/exif/ExifInterface;

.field public finalImage:Z

.field public height:I

.field public info:Lcom/android/camera/PictureInfo;

.field public isHide:Z

.field public isMap:Z

.field public loc:Landroid/location/Location;

.field public oldTitle:Ljava/lang/String;

.field public orientation:I

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;

.field public title:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "oldTitle"    # Ljava/lang/String;
    .param p5, "date"    # J
    .param p7, "uri"    # Landroid/net/Uri;
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p12, "orientation"    # I
    .param p13, "isHide"    # Z
    .param p14, "isMapFile"    # Z
    .param p15, "finalImage"    # Z
    .param p16, "info"    # Lcom/android/camera/PictureInfo;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    .line 436
    iput-wide p5, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    .line 437
    iput-object p7, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    .line 438
    iput-object p3, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 439
    iput-object p4, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    .line 440
    if-nez p8, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    .line 441
    iput p9, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    .line 442
    iput p10, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    .line 443
    iput-object p11, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 444
    iput p12, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    .line 445
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    .line 446
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    .line 447
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    .line 448
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->info:Lcom/android/camera/PictureInfo;

    .line 434
    return-void

    .line 440
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 19

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->exif:Lcom/android/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->oldTitle:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    .line 392
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    invoke-static {v2, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v16

    .line 395
    .local v16, "needThumbnail":Z
    if-eqz v16, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v17, v0

    .line 399
    .local v17, "ratio":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    .line 400
    .local v15, "inSampleSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    if-eqz v2, :cond_4

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v18

    .line 403
    .local v18, "t":Lcom/android/camera/Thumbnail;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/camera/storage/ImageSaver;->-wrap3(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    .line 406
    .end local v15    # "inSampleSize":I
    .end local v17    # "ratio":I
    .end local v18    # "t":Lcom/android/camera/Thumbnail;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->finalImage:Z

    invoke-static {v2, v3, v4}, Lcom/android/camera/storage/ImageSaver;->-wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V

    .line 382
    .end local v16    # "needThumbnail":Z
    :cond_2
    return-void

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    if-eqz v2, :cond_0

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v2}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->title:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->loc:Landroid/location/Location;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->height:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isHide:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->isMap:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->info:Lcom/android/camera/PictureInfo;

    const/4 v11, 0x0

    .line 386
    invoke-static/range {v2 .. v14}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZLcom/android/camera/PictureInfo;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 402
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "needThumbnail":Z
    .restart local v17    # "ratio":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->orientation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/storage/ImageSaver$SaveRequest;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v2, v3, v15, v4, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v18

    .restart local v18    # "t":Lcom/android/camera/Thumbnail;
    goto :goto_1
.end method
