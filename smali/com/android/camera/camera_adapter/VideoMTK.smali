.class public Lcom/android/camera/camera_adapter/VideoMTK;
.super Lcom/android/camera/module/VideoModule;
.source "VideoMTK.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/high16 v7, -0x80000000

    .line 27
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    .line 31
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string/jumbo v2, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string/jumbo v5, "SLOW_MOTION_480P_120FPS"

    const-string/jumbo v6, "I"

    invoke-static {v2, v8, v5, v6}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "highSpeed480":I
    sget-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 35
    if-eq v0, v7, :cond_1

    .end local v0    # "highSpeed480":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "com.mediatek.camcorder.CamcorderProfileEx"

    const-string/jumbo v3, "SLOW_MOTION_HD_120FPS"

    const-string/jumbo v5, "I"

    invoke-static {v2, v8, v3, v5}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "highSpeed720":I
    sget-object v2, Lcom/android/camera/camera_adapter/VideoMTK;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    if-eq v1, v7, :cond_2

    .end local v1    # "highSpeed720":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    return-void

    .restart local v0    # "highSpeed480":I
    :cond_1
    move v0, v3

    .line 35
    goto :goto_0

    .end local v0    # "highSpeed480":I
    .restart local v1    # "highSpeed720":I
    :cond_2
    move v1, v4

    .line 40
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    .line 28
    new-instance v0, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v0}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    .line 18
    return-void
.end method

.method private setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 7
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v5, "android.media.MediaRecorder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "setParametersExtra"

    const-string/jumbo v6, "(Ljava/lang/String;)V"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 141
    .local v4, "pauseMethod":Lmiui/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v0, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method setParametersExtra"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v3    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "android.media.MediaRecorder"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 188
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 9
    .param p1, "cameraId"    # I
    .param p2, "quality"    # I

    .prologue
    const/4 v8, 0x0

    .line 80
    :try_start_0
    const-string/jumbo v5, "com.mediatek.camcorder.CamcorderProfileEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getProfile"

    const-string/jumbo v6, "(II)Landroid/media/CamcorderProfile;"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 82
    .local v4, "method":Lmiui/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 87
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Lmiui/reflect/Method;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v8

    .line 85
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method getProfile"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v3    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "com.mediatek.camcorder.CamcorderProfileEx"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getNormalVideoFrameRate()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x1e

    return v0
.end method

.method protected isProfileExist(ILjava/lang/Integer;)Z
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "quality"    # Ljava/lang/Integer;

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method protected onCameraOpen()V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown(Lcom/android/camera/preferences/CameraSettingPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_0
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 165
    const-string/jumbo v2, "pref_camera_stereo_key"

    .line 166
    const v3, 0x7f0e01e1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/VideoMTK;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "vfLevel":Ljava/lang/String;
    const-string/jumbo v1, "VideoMTK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vfLevel value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 170
    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/VideoMTK;->updateStatusBar(Ljava/lang/String;)V

    .line 159
    .end local v0    # "vfLevel":Ljava/lang/String;
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 7
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 97
    :try_start_0
    const-string/jumbo v5, "com.mediatek.media.MediaRecorderEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "pause"

    const-string/jumbo v6, "(Landroid/media/MediaRecorder;)V"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 99
    .local v4, "pauseMethod":Lmiui/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pauseMethod":Lmiui/reflect/Method;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "Illegal argument"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 103
    .local v3, "e":Lmiui/reflect/NoSuchMethodException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "no method pause"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v3    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, "VideoMTK"

    const-string/jumbo v6, "com.mediatek.media.MediaRecorderEx"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected prepareOpenCamera()V
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    goto :goto_0
.end method

.method protected setHFRSpeed(Landroid/media/MediaRecorder;I)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "speed"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media-param-slowmotion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 126
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected startRecordVideo()Z
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    .line 111
    .local v0, "result":Z
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string/jumbo v2, "media-param-audio-stop-first=1"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/VideoMTK;->setParameterExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 117
    :cond_0
    return v0
.end method

.method protected updateVideoParametersPreference()V
    .locals 5

    .prologue
    const/16 v4, 0x1388

    .line 46
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 47
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 48
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "slow"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mHfr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string/jumbo v1, "pref_camera_stereo_mode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x5dc0

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 64
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 65
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 66
    const-string/jumbo v2, "pref_camera_stereo_key"

    .line 67
    const v3, 0x7f0e01e1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/VideoMTK;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "vfLevel":Ljava/lang/String;
    const-string/jumbo v1, "VideoMTK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vfLevel value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 45
    .end local v0    # "vfLevel":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 54
    :cond_2
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlowMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->set3dnrMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    sget-object v1, Lcom/android/camera/camera_adapter/VideoMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x7530

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1
.end method
