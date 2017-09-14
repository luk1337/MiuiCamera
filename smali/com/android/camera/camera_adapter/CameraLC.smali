.class public Lcom/android/camera/camera_adapter/CameraLC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraLC.java"


# static fields
.field private static sProxy:Lcom/android/camera/hardware/LCCameraProxy;


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/LCCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 17
    return-void
.end method

.method private getZSL()Z
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    .line 149
    if-eqz v0, :cond_1

    .line 151
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCameraProxy;->getZslSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lcUpdateCameraParametersPreference()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setBeautyParams()V

    .line 26
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v7, "pref_camera_show_gender_age_key"

    .line 28
    const v8, 0x7f0e0156

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SetShowGenderAndAge ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "xiaomi-preview-rotation"

    .line 34
    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    move v5, v6

    .line 33
    :goto_0
    invoke-virtual {v7, v8, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 39
    .end local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v5

    :goto_1
    if-nez v5, :cond_1

    .line 40
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 43
    :cond_1
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "off"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 47
    :goto_2
    const-string/jumbo v5, "pref_qc_camera_iso_key"

    .line 48
    const v7, 0x7f0e00c1

    invoke-virtual {p0, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {p0, v5, v7}, Lcom/android/camera/camera_adapter/CameraLC;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "iso":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ISO value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 55
    :cond_2
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 56
    const-string/jumbo v7, "pref_qc_camera_saturation_key"

    .line 57
    const v8, 0x7f0e00ad

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "saturationStr":Ljava/lang/String;
    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Saturation value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v2}, Lcom/android/camera/hardware/LCCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 62
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 63
    const-string/jumbo v7, "pref_qc_camera_contrast_key"

    .line 64
    const v8, 0x7f0e00ab

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "contrastStr":Ljava/lang/String;
    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Contrast value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 70
    const-string/jumbo v7, "pref_qc_camera_sharpness_key"

    .line 71
    const v8, 0x7f0e00af

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-virtual {v5, v7, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "sharpnessStr":Ljava/lang/String;
    const-string/jumbo v5, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sharpness value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/hardware/LCCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v5}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 77
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->getZSL()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    .line 78
    sget-object v7, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v8, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 79
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "true"

    .line 78
    :goto_3
    invoke-virtual {v7, v8, v5}, Lcom/android/camera/hardware/LCCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 81
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mMultiSnapStatus:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_8

    .line 84
    :cond_3
    iget-boolean v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v5, :cond_9

    .line 85
    iput-boolean v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 86
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 90
    :goto_4
    const-string/jumbo v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Long Shot mode value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isLongShotMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 34
    .end local v0    # "contrastStr":Ljava/lang/String;
    .end local v1    # "iso":Ljava/lang/String;
    .end local v2    # "saturationStr":Ljava/lang/String;
    .end local v3    # "sharpnessStr":Ljava/lang/String;
    .restart local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_4
    iget v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mOrientation:I

    goto/16 :goto_0

    .end local v4    # "showGenderAndAge":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 39
    goto/16 :goto_1

    .line 40
    :cond_6
    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 41
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v8, "on"

    invoke-virtual {v5, v7, v8}, Lcom/android/camera/hardware/LCCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    .restart local v0    # "contrastStr":Ljava/lang/String;
    .restart local v1    # "iso":Ljava/lang/String;
    .restart local v2    # "saturationStr":Ljava/lang/String;
    .restart local v3    # "sharpnessStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "false"

    goto :goto_3

    .line 82
    :cond_8
    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 83
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v7, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_4

    .line 88
    :cond_9
    sget-object v5, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_4
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 174
    :goto_0
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/LCCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3
    .param p1, "startshut"    # Z

    .prologue
    .line 94
    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/CameraLC;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    .line 93
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelContinuousShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->applyMultiShutParameters(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    .line 157
    if-nez v1, :cond_1

    .line 159
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 157
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected needSetupPreview(Z)Z
    .locals 1
    .param p1, "zslMode"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isPreviewEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    return-void

    .line 129
    :cond_0
    const-string/jumbo v1, "pref_qc_camera_iso_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 131
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    .line 132
    const v3, 0x7f0e00c1

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraLC;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "iso":Ljava/lang/String;
    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/CameraLC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISO value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/LCCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraLC;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 127
    .end local v0    # "iso":Ljava/lang/String;
    :goto_0
    return-void

    .line 139
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraLC;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraLC;->setTimeWatermarkIfNeed()V

    .line 103
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/LCCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "aeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/android/camera/camera_adapter/CameraLC;->sProxy:Lcom/android/camera/hardware/LCCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/LCCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraLC;->lcUpdateCameraParametersPreference()V

    .line 163
    return-void
.end method
