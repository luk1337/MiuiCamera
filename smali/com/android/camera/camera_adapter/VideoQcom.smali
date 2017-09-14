.class public Lcom/android/camera/camera_adapter/VideoQcom;
.super Lcom/android/camera/module/VideoModule;
.source "VideoQcom.java"


# static fields
.field private static final VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/high16 v7, -0x80000000

    .line 18
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "90"

    :goto_0
    sput-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    .line 23
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const-string/jumbo v2, "android.media.CamcorderProfile"

    const-string/jumbo v5, "QUALITY_HIGH_SPEED_480P"

    const-string/jumbo v6, "I"

    invoke-static {v2, v8, v5, v6}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 25
    .local v0, "highSpeed480":I
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 26
    if-eq v0, v7, :cond_2

    .end local v0    # "highSpeed480":I
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v2, "android.media.CamcorderProfile"

    const-string/jumbo v3, "QUALITY_HIGH_SPEED_720P"

    const-string/jumbo v5, "I"

    invoke-static {v2, v8, v3, v5}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, "highSpeed720":I
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 30
    if-eq v1, v7, :cond_3

    .end local v1    # "highSpeed720":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    return-void

    .line 18
    :cond_1
    const-string/jumbo v2, "120"

    goto :goto_0

    .restart local v0    # "highSpeed480":I
    :cond_2
    move v0, v3

    .line 26
    goto :goto_1

    .end local v0    # "highSpeed480":I
    .restart local v1    # "highSpeed720":I
    :cond_3
    move v1, v4

    .line 30
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 8
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 81
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    const-string/jumbo v5, "slow"

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "captureRate":I
    const/4 v2, 0x0

    .line 85
    .local v2, "hfr":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/QcomCameraProxy;->getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "hfr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    .end local v2    # "hfr":Ljava/lang/String;
    :goto_0
    if-lez v1, :cond_0

    .line 92
    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting capture-rate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    int-to-double v6, v1

    invoke-virtual {p1, v6, v7}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 97
    :cond_0
    const/16 v4, 0x1e

    .line 98
    .local v4, "targetFrameRate":I
    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting target fps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 101
    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 102
    .local v0, "bitrate":I
    sget-boolean v5, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/camera/Device;->IS_MI5:Z

    :goto_1
    if-nez v5, :cond_1

    .line 107
    iget-object v5, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v5, v5, 0x1e

    iget-object v6, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v5, v6

    .line 109
    :cond_1
    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Scaled Video bitrate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 79
    .end local v0    # "bitrate":I
    .end local v1    # "captureRate":I
    .end local v4    # "targetFrameRate":I
    :cond_2
    return-void

    .line 87
    .restart local v1    # "captureRate":I
    :catch_0
    move-exception v3

    .line 88
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "VideoQcom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid hfr("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "bitrate":I
    .restart local v4    # "targetFrameRate":I
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method protected isShowHFRDuration()Z
    .locals 2

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateVideoParametersPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 38
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 39
    .local v0, "fpsRange":[I
    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v2, :cond_5

    :cond_0
    array-length v2, v0

    if-lez v2, :cond_5

    .line 40
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 41
    aget v3, v0, v5

    .line 42
    const/4 v4, 0x1

    aget v4, v0, v4

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 47
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 49
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    const-string/jumbo v2, "on"

    .line 48
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "preview-format"

    .line 56
    iget v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mQuality:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    const-string/jumbo v2, "nv12-venus"

    .line 55
    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const-string/jumbo v2, "slow"

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v1, "off"

    .line 64
    .local v1, "highFrameRate":Ljava/lang/String;
    :goto_3
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/VideoQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    const-string/jumbo v2, "VideoQcom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HighFrameRate value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 71
    .end local v1    # "highFrameRate":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 72
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "denoise-on"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 75
    :cond_4
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    .line 76
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "still-more-off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setStillMore(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 36
    return-void

    .line 44
    :cond_5
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 50
    :cond_6
    const-string/jumbo v2, "off"

    goto/16 :goto_1

    .line 58
    :cond_7
    const-string/jumbo v2, "yuv420sp"

    goto :goto_2

    .line 62
    :cond_8
    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    .restart local v1    # "highFrameRate":Ljava/lang/String;
    goto :goto_3
.end method
