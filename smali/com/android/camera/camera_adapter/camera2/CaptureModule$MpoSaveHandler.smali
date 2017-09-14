.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpoSaveHandler"
.end annotation


# instance fields
.field private bayerImage:Landroid/media/Image;

.field private captureStartTime:Ljava/lang/Long;

.field private monoImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    .line 2730
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2729
    return-void
.end method

.method private processNewImage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2748
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MpoSaveHandler:processNewImage for cam id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    iget v0, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v0, v1, :cond_2

    .line 2750
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    .line 2755
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 2756
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->saveMpoImage()V

    .line 2747
    :cond_1
    return-void

    .line 2751
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    if-nez v0, :cond_0

    .line 2752
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    goto :goto_0
.end method

.method private saveMpoImage()V
    .locals 18

    .prologue
    .line 2761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    .line 2762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v15

    .line 2763
    .local v15, "namedEntity":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    if-nez v15, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2764
    .local v10, "date":J
    :goto_0
    if-nez v15, :cond_2

    .line 2765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_STEREO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2767
    .local v9, "title":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v5

    .line 2768
    .local v5, "bayerBytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)[B

    move-result-object v6

    .line 2770
    .local v6, "monoBytes":[B
    invoke-static {v5}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v2

    .line 2771
    .local v2, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    .line 2774
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    .line 2775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    .line 2776
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 2782
    .local v8, "height":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get15(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2783
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v12

    .line 2784
    .local v12, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    .line 2802
    .end local v12    # "loc":Landroid/location/Location;
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 2803
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    .line 2804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 2805
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->monoImage:Landroid/media/Image;

    .line 2806
    const/4 v15, 0x0

    .line 2760
    .local v15, "namedEntity":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    return-void

    .line 2763
    .end local v2    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v5    # "bayerBytes":[B
    .end local v6    # "monoBytes":[B
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v13    # "orientation":I
    .local v15, "namedEntity":Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    :cond_1
    iget-wide v10, v15, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    .restart local v10    # "date":J
    goto/16 :goto_0

    .line 2766
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_STEREO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 2778
    .restart local v2    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .restart local v5    # "bayerBytes":[B
    .restart local v6    # "monoBytes":[B
    .restart local v13    # "orientation":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 2779
    .restart local v7    # "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->bayerImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v8

    .restart local v8    # "height":I
    goto :goto_2

    .line 2787
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    .line 2788
    const/4 v4, 0x0

    .line 2787
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/storage/ImageSaver;->saveMpoImage([B[B[B)[B

    move-result-object v14

    .line 2789
    .local v14, "jpegData":[B
    if-eqz v14, :cond_0

    .line 2790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3, v14}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[B)[B

    .line 2791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    new-instance v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;I)V

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2735
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2734
    :goto_0
    return-void

    .line 2737
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->captureStartTime:Ljava/lang/Long;

    goto :goto_0

    .line 2740
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->processNewImage(Landroid/os/Message;)V

    goto :goto_0

    .line 2735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
