.class Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;
.super Lcom/android/camera/storage/ImageSaver$SaveRequest;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveRequest"
.end annotation


# instance fields
.field private mCsImage:[B

.field private mMonoImage:[B

.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;[B[B[BLjava/lang/String;JLandroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V
    .locals 20
    .param p1, "this$0"    # Lcom/android/camera/storage/ImageSaver;
    .param p2, "csImage"    # [B
    .param p3, "bayerImg"    # [B
    .param p4, "monoImg"    # [B
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "date"    # J
    .param p8, "loc"    # Landroid/location/Location;
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p12, "orientation"    # I

    .prologue
    .line 521
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    .line 523
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 524
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    .line 523
    invoke-direct/range {v3 .. v19}, Lcom/android/camera/storage/ImageSaver$SaveRequest;-><init>(Lcom/android/camera/storage/ImageSaver;[BLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 525
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mCsImage:[B

    .line 526
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mMonoImage:[B

    .line 522
    return-void
.end method

.method private saveMpo([B[B[B)V
    .locals 12
    .param p1, "csData"    # [B
    .param p2, "bayerData"    # [B
    .param p3, "monoData"    # [B

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/storage/ImageSaver;->-wrap1(Lcom/android/camera/storage/ImageSaver;[B[B[B)Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    move-result-object v0

    .line 554
    .local v0, "mpo":Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->title:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "path":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->orientation:I

    iget-wide v4, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->date:J

    iget-object v6, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->loc:Landroid/location/Location;

    iget v7, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->width:I

    iget v8, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->height:I

    invoke-static/range {v1 .. v8}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v11

    .line 557
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap0(Lcom/android/camera/storage/ImageSaver;Z)Z

    move-result v9

    .line 559
    .local v9, "needThumbnail":Z
    if-eqz v9, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1}, Lcom/android/camera/storage/ImageSaver;->-get0(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v11, v3}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v10

    .line 562
    .local v10, "t":Lcom/android/camera/Thumbnail;
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-static {v1, v10}, Lcom/android/camera/storage/ImageSaver;->-wrap3(Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/Thumbnail;)V

    .line 565
    .end local v10    # "t":Lcom/android/camera/Thumbnail;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->this$0:Lcom/android/camera/storage/ImageSaver;

    const/4 v3, 0x1

    invoke-static {v1, v11, v3}, Lcom/android/camera/storage/ImageSaver;->-wrap2(Lcom/android/camera/storage/ImageSaver;Landroid/net/Uri;Z)V

    .line 550
    .end local v9    # "needThumbnail":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->data:[B

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->data:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mMonoImage:[B

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mMonoImage:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mCsImage:[B

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mCsImage:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 541
    :cond_2
    return v0
.end method

.method public save()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mCsImage:[B

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->data:[B

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->mMonoImage:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/storage/ImageSaver$MpoSaveRequest;->saveMpo([B[B[B)V

    .line 545
    return-void
.end method
