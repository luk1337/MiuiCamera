.class public Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field protected mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1031
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 44
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1043
    return-void

    .line 1045
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/module/CameraModule;->-set6(Lcom/android/camera/module/CameraModule;J)J

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get11(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->-get16(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 1051
    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1060
    :goto_0
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1061
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 1060
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1061
    const-string/jumbo v5, "ms"

    .line 1060
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-wrap0(Lcom/android/camera/module/CameraModule;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1067
    :cond_1
    if-nez p1, :cond_5

    .line 1068
    :cond_2
    return-void

    .line 1053
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get19(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_4

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get11(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->-get19(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 1054
    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto :goto_0

    .line 1057
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get11(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v8}, Lcom/android/camera/module/CameraModule;->-get22(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 1057
    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_0

    .line 1071
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isHDRFreeze()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_c

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_7

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ne v3, v4, :cond_7

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-wrap24(Lcom/android/camera/module/CameraModule;Z)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-wrap5(Lcom/android/camera/module/CameraModule;)V

    .line 1082
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v43

    .line 1083
    .local v43, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v15

    .line 1085
    .local v15, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v3, v15

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_d

    .line 1086
    move-object/from16 v0, v43

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1087
    .local v6, "width":I
    move-object/from16 v0, v43

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1092
    .local v7, "height":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-wrap2(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get1(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v11

    .line 1094
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v18

    .line 1095
    .local v18, "info":Lcom/android/camera/PictureInfo;
    const/4 v2, 0x0

    .line 1096
    .local v2, "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1097
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 1099
    .end local v2    # "jpeg":Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    if-le v6, v7, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1101
    :goto_3
    if-le v7, v6, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1105
    :goto_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v8

    .line 1106
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-result-object v9

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_10

    const/4 v10, 0x0

    .line 1109
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v14}, Lcom/android/camera/module/CameraModule;->-get20(Lcom/android/camera/module/CameraModule;)I

    move-result v14

    invoke-static {v3, v14}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v14

    .line 1112
    sget v3, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v16

    move/from16 v0, v16

    if-ne v3, v0, :cond_11

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get21(Lcom/android/camera/module/CameraModule;)F

    move-result v3

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v3, v3, v16

    if-nez v3, :cond_11

    const/16 v16, 0x0

    .line 1114
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/camera/module/CameraModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_8
    const/16 v17, 0x0

    :goto_7
    move-object/from16 v3, p1

    .line 1097
    invoke-direct/range {v2 .. v18}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLcom/android/camera/PictureInfo;)V

    .line 1118
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_13

    const/4 v8, 0x1

    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/module/CameraModule;->trackPictureTaken(IZIIZ)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1d

    .line 1121
    if-eqz v2, :cond_15

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set9(Lcom/android/camera/module/CameraModule;Z)Z

    .line 1177
    :goto_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "pref_camera_stereo_mode_key"

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1207
    :cond_a
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 1208
    .local v40, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get11(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    sub-long v4, v40, v4

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    .line 1209
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v4, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v4, v40, v4

    iput-wide v4, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1212
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v8, v5, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1212
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1213
    const-string/jumbo v5, "ms"

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1041
    :cond_b
    return-void

    .line 1071
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v11    # "title":Ljava/lang/String;
    .end local v15    # "orientation":I
    .end local v18    # "info":Lcom/android/camera/PictureInfo;
    .end local v40    # "now":J
    .end local v43    # "s":Landroid/hardware/Camera$Size;
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1089
    .restart local v15    # "orientation":I
    .restart local v43    # "s":Landroid/hardware/Camera$Size;
    :cond_d
    move-object/from16 v0, v43

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1090
    .restart local v6    # "width":I
    move-object/from16 v0, v43

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v7    # "height":I
    goto/16 :goto_2

    .line 1100
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v18    # "info":Lcom/android/camera/PictureInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_3

    .line 1102
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get18(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_4

    .line 1107
    :cond_10
    new-instance v10, Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_5

    .line 1113
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/module/CameraModule;->-get21(Lcom/android/camera/module/CameraModule;)F

    move-result v16

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v16

    goto/16 :goto_6

    .line 1114
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_7

    .line 1118
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 1126
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set1(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 1128
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-wrap0(Lcom/android/camera/module/CameraModule;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get7(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/camera/groupshot/GroupShot;->attach([B)I

    move-result v42

    .line 1130
    .local v42, "result":I
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "mGroupShot attach() = 0x%08x index=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v8, v8, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v3, v4, :cond_1a

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v4, "pref_groupshot_with_primitive_picture_key"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1132
    if-eqz v3, :cond_16

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v19

    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 1137
    const/16 v24, 0x0

    .line 1141
    const/16 v28, 0x0

    .line 1143
    const/16 v30, 0x0

    .line 1144
    const/16 v31, 0x0

    .line 1145
    const/16 v32, 0x1

    move-object/from16 v20, p1

    move-object/from16 v21, v11

    move/from16 v26, v6

    move/from16 v27, v7

    move/from16 v29, v15

    move-object/from16 v33, v18

    .line 1134
    invoke-virtual/range {v19 .. v33}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    .line 1148
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 1151
    :cond_17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const v4, 0x7f0e016e

    invoke-virtual {v3, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1153
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v4

    .line 1152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1153
    :cond_18
    const/16 v37, 0x64

    .line 1154
    .local v37, "delay":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    move/from16 v0, v37

    int-to-long v4, v0

    const/16 v8, 0x1e

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1155
    return-void

    .line 1153
    .end local v37    # "delay":I
    :cond_19
    const/16 v37, 0x0

    .restart local v37    # "delay":I
    goto :goto_b

    .line 1157
    .end local v37    # "delay":I
    :cond_1a
    new-instance v20, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get7(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v29

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v15

    move-object/from16 v28, v11

    .line 1157
    invoke-direct/range {v20 .. v29}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;-><init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V

    .line 1159
    .local v20, "saveOutputImageTask":Lcom/android/camera/module/CameraModule$SaveOutputImageTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get8(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set4(Lcom/android/camera/module/CameraModule;I)I

    goto/16 :goto_9

    .line 1163
    .end local v20    # "saveOutputImageTask":Lcom/android/camera/module/CameraModule$SaveOutputImageTask;
    .end local v42    # "result":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v21

    .line 1165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v27, v0

    .line 1166
    const/16 v26, 0x0

    .line 1170
    const/16 v30, 0x0

    .line 1172
    const/16 v32, 0x0

    .line 1173
    const/16 v33, 0x0

    .line 1174
    const/16 v34, 0x1

    move-object/from16 v22, p1

    move-object/from16 v23, v11

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v31, v15

    move-object/from16 v35, v18

    .line 1163
    invoke-virtual/range {v21 .. v35}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZLcom/android/camera/PictureInfo;)V

    goto/16 :goto_9

    .line 1178
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    goto/16 :goto_a

    .line 1181
    :cond_1d
    if-eqz v2, :cond_1e

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get5(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v2, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;[B)[B

    .line 1189
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v3, v3, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    if-nez v3, :cond_20

    .line 1190
    int-to-double v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get17(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v39, v0

    .line 1191
    .local v39, "ratio":I
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v38

    .line 1193
    .local v38, "inSampleSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get10(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v3

    .line 1194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-get20(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    rsub-int v4, v4, 0x168

    add-int/2addr v4, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    add-int/2addr v4, v5

    .line 1195
    const/4 v5, 0x0

    .line 1193
    move/from16 v0, v38

    invoke-static {v3, v4, v5, v0}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 1197
    .local v36, "cover":Landroid/graphics/Bitmap;
    if-eqz v36, :cond_a

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-wrap18(Lcom/android/camera/module/CameraModule;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set7(Lcom/android/camera/module/CameraModule;Z)Z

    goto/16 :goto_a

    .line 1184
    .end local v36    # "cover":Landroid/graphics/Bitmap;
    .end local v38    # "inSampleSize":I
    .end local v39    # "ratio":I
    :cond_1e
    if-eqz v18, :cond_1f

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/PictureInfo;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_c

    .line 1187
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_c

    .line 1203
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-wrap7(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_a
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 1035
    return-void
.end method
