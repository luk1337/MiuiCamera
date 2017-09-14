.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;
.super Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setUpCameraOutputs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 22
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1286
    const-string/jumbo v3, "CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "image available for cam: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v18

    .line 1288
    .local v18, "image":Landroid/media/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v3

    .line 1290
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 1289
    move-object/from16 v0, v18

    invoke-virtual {v3, v12, v8, v14, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1285
    :goto_0
    return-void

    .line 1292
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1293
    .local v20, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v19

    .line 1295
    .local v19, "name":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    if-nez v19, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "title":Ljava/lang/String;
    :goto_1
    if-nez v19, :cond_3

    const-wide/16 v6, -0x1

    .line 1298
    .local v6, "date":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v4

    .line 1299
    .local v4, "bytes":[B
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    .line 1300
    .local v2, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    .line 1303
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v3

    add-int/2addr v3, v13

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_4

    .line 1304
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getWidth()I

    move-result v10

    .line 1305
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getHeight()I

    move-result v11

    .line 1310
    .local v11, "height":I
    :goto_3
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 1311
    .local v9, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v8, 0x0

    .line 1313
    const/4 v12, 0x0

    .line 1314
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1312
    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 1321
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->close()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->mCamId:I

    invoke-static {v3, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap30(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1328
    :cond_1
    const-string/jumbo v3, "CaptureModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "singleJpegTime="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v12}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1295
    .end local v2    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v4    # "bytes":[B
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v9    # "loc":Landroid/location/Location;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v13    # "orientation":I
    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    .restart local v5    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 1296
    :cond_3
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    .restart local v6    # "date":J
    goto/16 :goto_2

    .line 1307
    .restart local v2    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .restart local v4    # "bytes":[B
    .restart local v13    # "orientation":I
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getHeight()I

    move-result v10

    .line 1308
    .restart local v10    # "width":I
    invoke-virtual/range {v18 .. v18}, Landroid/media/Image;->getWidth()I

    move-result v11

    .restart local v11    # "height":I
    goto :goto_3

    .line 1316
    .restart local v9    # "loc":Landroid/location/Location;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B

    .line 1317
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    new-instance v12, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_5
    invoke-direct {v12, v14, v15, v13, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[BIZ)V

    invoke-static {v8, v12}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    .line 1318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$8;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap33(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    goto/16 :goto_4

    .line 1317
    :cond_6
    const/4 v3, 0x1

    goto :goto_5
.end method
