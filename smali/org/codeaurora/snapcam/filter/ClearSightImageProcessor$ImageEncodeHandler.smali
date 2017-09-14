.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEncodeHandler"
.end annotation


# instance fields
.field private mBayerImage:Landroid/media/Image;

.field private mClearSightImage:Landroid/media/Image;

.field private mEncodeRequest:S

.field private mEncodeResults:S

.field private mHasFailure:Z

.field private mMonoImage:Landroid/media/Image;

.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field private mReadyToSave:Z

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method public constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1173
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 1174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1173
    return-void
.end method

.method private processNewEvent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1207
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_3

    .line 1208
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newImg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    .line 1210
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    .line 1211
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1219
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-static {v1, v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Landroid/media/Image;)V

    .line 1206
    :cond_0
    :goto_1
    return-void

    .line 1212
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-nez v1, :cond_2

    .line 1213
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    .line 1214
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_0

    .line 1216
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    .line 1217
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_0

    .line 1222
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1223
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1225
    :cond_4
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewEncodeEvent - newFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    .line 1227
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_5

    .line 1228
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto :goto_1

    .line 1230
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureFailure;

    .line 1231
    .local v0, "failure":Landroid/hardware/camera2/CaptureFailure;
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1232
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto/16 :goto_1

    .line 1234
    :cond_6
    iget-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    goto/16 :goto_1
.end method

.method private saveMpoImage()V
    .locals 26

    .prologue
    .line 1241
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    move-object/from16 v0, p0

    iget-short v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    if-eq v2, v3, :cond_1

    .line 1242
    :cond_0
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage - not yet ready to save"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1246
    :cond_1
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    if-eqz v2, :cond_3

    .line 1249
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "saveMpoImage has failure - aborting."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    .line 1254
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1255
    return-void

    .line 1258
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v17

    .line 1261
    .local v17, "bayerBytes":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v18

    .line 1262
    .local v18, "monoBytes":[B
    invoke-static/range {v17 .. v17}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v12

    .line 1263
    .local v12, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v12}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v13

    .line 1267
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get18(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_6

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    .line 1269
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    .line 1275
    .local v11, "height":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object v16

    .line 1276
    .local v16, "clearSightBytes":[B
    if-eqz v16, :cond_7

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightSuccess()V

    .line 1290
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v2, v14, v15}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-set1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;J)J

    .line 1291
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get17(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v20

    sub-long v14, v14, v20

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " csTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get6(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v20

    sub-long v14, v14, v20

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    if-nez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1294
    .local v6, "date":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    if-nez v2, :cond_a

    invoke-static {v6, v7}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 1295
    .local v5, "title":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    .line 1296
    .local v9, "loc":Landroid/location/Location;
    if-nez v18, :cond_c

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    .line 1298
    if-eqz v16, :cond_b

    move-object/from16 v4, v16

    .line 1299
    :goto_4
    const/4 v8, 0x0

    .line 1300
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1297
    invoke-virtual/range {v3 .. v17}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 1306
    .end local v16    # "clearSightBytes":[B
    .end local v17    # "bayerBytes":[B
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1240
    return-void

    .line 1271
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v9    # "loc":Landroid/location/Location;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .restart local v17    # "bayerBytes":[B
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 1272
    .restart local v10    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get12(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v11

    .restart local v11    # "height":I
    goto/16 :goto_0

    .line 1280
    .restart local v16    # "clearSightBytes":[B
    :cond_7
    if-eqz v17, :cond_8

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto/16 :goto_1

    .line 1285
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v2

    invoke-interface {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto/16 :goto_1

    .line 1293
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iget-wide v6, v2, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    .restart local v6    # "date":J
    goto :goto_2

    .line 1294
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iget-object v5, v2, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_3

    .restart local v9    # "loc":Landroid/location/Location;
    :cond_b
    move-object/from16 v4, v17

    .line 1298
    goto :goto_4

    .line 1301
    :cond_c
    if-eqz v17, :cond_5

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v15

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide/from16 v22, v6

    move-object/from16 v24, v9

    move/from16 v25, v13

    .line 1302
    invoke-virtual/range {v15 .. v25}, Lcom/android/camera/storage/ImageSaver;->addMpo([B[B[BIILjava/lang/String;JLandroid/location/Location;I)V

    goto/16 :goto_5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1179
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encode - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    .line 1182
    return-void

    .line 1185
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1178
    :goto_0
    :pswitch_0
    return-void

    .line 1187
    :pswitch_1
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ImageEncodeEvent - START_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->resetParams()V

    goto :goto_0

    .line 1191
    :pswitch_2
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ImageEncodeEvent - END_CAPTURE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 1193
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-short v0, v0

    iput-short v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    .line 1195
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveMpoImage()V

    goto :goto_0

    .line 1200
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->processNewEvent(Landroid/os/Message;)V

    .line 1201
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->saveMpoImage()V

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method resetParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1310
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1312
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mBayerImage:Landroid/media/Image;

    .line 1314
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1316
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mMonoImage:Landroid/media/Image;

    .line 1318
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1320
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mClearSightImage:Landroid/media/Image;

    .line 1322
    :cond_2
    iput-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 1323
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mReadyToSave:Z

    .line 1324
    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mHasFailure:Z

    .line 1325
    iput-short v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeRequest:S

    .line 1326
    iput-short v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->mEncodeResults:S

    .line 1309
    return-void
.end method
