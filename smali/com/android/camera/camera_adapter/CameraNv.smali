.class public Lcom/android/camera/camera_adapter/CameraNv;
.super Lcom/android/camera/module/CameraModule;
.source "CameraNv.java"


# static fields
.field private static RAW_META_DATA:I

.field private static sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNSLBurstCount:I

.field private mPreviewPausedDisabled:Z

.field private mRawBuffer:[B

.field private mRawBufferSize:I

.field private mSetAohdrLater:Z

.field private mSkipSetNSLAfterMultiShot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const v0, 0xf4240

    sput v0, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    .line 23
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 14
    const-string/jumbo v0, "CameraNv"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 13
    return-void
.end method

.method private allocRawBufferIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 258
    sget v2, Lcom/android/camera/camera_adapter/CameraNv;->RAW_META_DATA:I

    const v3, 0x190aa00

    add-int v1, v2, v3

    .line 259
    .local v1, "sizeWanted":I
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    if-ge v2, v1, :cond_1

    .line 261
    :cond_0
    :try_start_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 262
    iput v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 265
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 266
    const-string/jumbo v2, "CameraNv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Raw OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNSLBuffersNeededCount()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v1, :cond_0

    .line 296
    return v4

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getZSL()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e010f

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    return v3

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 303
    if-nez v1, :cond_2

    .line 305
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    :cond_2
    return v3

    .line 306
    :cond_3
    sget-object v1, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e00ca

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    .line 303
    if-nez v1, :cond_2

    .line 310
    :cond_4
    return v4
.end method

.method private getPreviewPausedDisabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 277
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    .line 281
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreviewPausedDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    const-string/jumbo v2, " "

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string/jumbo v2, " "

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNvExposureTime(Landroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string/jumbo v2, " "

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    const-string/jumbo v2, " "

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    return v0

    .line 278
    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mIsImageCaptureIntent:Z

    .line 277
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private updateNvCameraParametersPreference()V
    .locals 14

    .prologue
    .line 28
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 29
    const-string/jumbo v11, "pref_qc_camera_saturation_key"

    .line 30
    const v12, 0x7f0e00ad

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "saturationStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 32
    .local v5, "saturation":I
    const/16 v10, -0x64

    if-lt v5, v10, :cond_0

    const/16 v10, 0x64

    if-gt v5, v10, :cond_0

    .line 33
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v5}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;I)V

    .line 35
    :cond_0
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Saturation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 39
    const-string/jumbo v11, "pref_qc_camera_contrast_key"

    .line 40
    const v12, 0x7f0e00ab

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "contrastStr":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Contrast = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 46
    const-string/jumbo v11, "pref_qc_camera_sharpness_key"

    .line 47
    const v12, 0x7f0e00af

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "sharpnessStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 49
    .local v7, "sharpness":I
    const/16 v10, -0x64

    if-lt v7, v10, :cond_1

    const/16 v10, 0x64

    if-gt v7, v10, :cond_1

    .line 50
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v7}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V

    .line 52
    :cond_1
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sharpness = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAutoRotation(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 55
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V

    .line 59
    :cond_2
    const-string/jumbo v10, "pref_qc_camera_iso_key"

    .line 60
    const v11, 0x7f0e00c1

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "iso":Ljava/lang/String;
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v4}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PictureISO = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v10, "pref_qc_camera_exposuretime_key"

    .line 66
    const v11, 0x7f0e013c

    invoke-virtual {p0, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual {p0, v10, v11}, Lcom/android/camera/camera_adapter/CameraNv;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "exposureTime":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "exposure":I
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    .line 69
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ExposureTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 73
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 74
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-nez v10, :cond_c

    .line 75
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 76
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 77
    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Hand Nigh = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    :goto_0
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    if-eqz v10, :cond_4

    .line 117
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    .line 121
    :cond_4
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 122
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getNSLBuffersNeededCount()I

    move-result v0

    .line 123
    .local v0, "NSLBuffersNeeded":I
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_6

    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eq v10, v0, :cond_6

    .line 124
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 125
    if-nez v0, :cond_5

    .line 126
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 127
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 128
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 130
    :cond_5
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 132
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    .line 133
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Allocate NSLNumBuffers = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_6
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    if-eqz v10, :cond_10

    .line 138
    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_f

    .line 139
    if-lez v0, :cond_f

    .line 140
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "shot2shot"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 144
    :goto_1
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 145
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    sget v12, Lcom/android/camera/camera_adapter/CameraNv;->BURST_SHOOTING_COUNT:I

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 160
    :goto_2
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    if-eqz v10, :cond_8

    .line 163
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 164
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 165
    const-string/jumbo v10, "off"

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 166
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "off"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 167
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 168
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 175
    :cond_7
    :goto_3
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 176
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 177
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 180
    :cond_8
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getPreviewPausedDisabled()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 181
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preview disabled = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/camera/Device;->isEffectWatermarkFilted()Z

    move-result v10

    :goto_4
    if-nez v10, :cond_14

    .line 184
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->isTimeWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v10

    .line 183
    if-eqz v10, :cond_14

    .line 185
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 189
    :goto_5
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SetTimeWatermark ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v13, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v12, v13}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->setBeautyParams()V

    .line 194
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v11, "pref_camera_show_gender_age_key"

    .line 195
    const v12, 0x7f0e0156

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraNv;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 194
    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "showGenderAndAge":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v10, "CameraNv"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SetShowGenderAndAge ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "SetMultiFaceBeautify =on"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 78
    .end local v0    # "NSLBuffersNeeded":I
    .end local v9    # "showGenderAndAge":Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 79
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v12, 0xd

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    .line 80
    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Raw Data = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->allocRawBufferIfNeeded()V

    goto/16 :goto_0

    .line 82
    :cond_a
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 83
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 86
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSetAohdrLater:Z

    .line 87
    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "AO HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :cond_b
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 90
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 91
    const-string/jumbo v10, "CameraNv"

    const-string/jumbo v11, "Morpho HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 99
    :cond_c
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    if-eqz v10, :cond_d

    .line 100
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBuffer:[B

    .line 101
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mRawBufferSize:I

    .line 102
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 104
    :cond_d
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setHandNight(Landroid/hardware/Camera$Parameters;Z)V

    .line 105
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V

    .line 106
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 107
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V

    .line 110
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 111
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 113
    :cond_e
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 142
    .restart local v0    # "NSLBuffersNeeded":I
    :cond_f
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 147
    :cond_10
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v10, :cond_11

    .line 148
    iget v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v10, :cond_11

    .line 149
    if-lez v0, :cond_11

    .line 150
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    .line 147
    if-eqz v10, :cond_11

    .line 151
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 152
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 157
    :goto_6
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "normal"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 154
    :cond_11
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 155
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setBurstCount(Landroid/hardware/Camera$Parameters;I)V

    goto :goto_6

    .line 169
    :cond_12
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I

    move-result v10

    if-eqz v10, :cond_7

    .line 170
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V

    .line 171
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V

    .line 172
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 173
    iget-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v10}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_3

    .line 183
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 187
    :cond_14
    sget-object v10, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v11, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStatus:Z

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 234
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 240
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
    .line 254
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mPreviewPausedDisabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMultiSnapStopRequest:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "flashMode":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mSkipSetNSLAfterMultiShot:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mNSLBurstCount:I

    if-lez v3, :cond_2

    .line 248
    const-string/jumbo v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 247
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 322
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onPauseBeforeSuper()V

    .line 317
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    const-string/jumbo v0, "pref_focus_position_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 219
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string/jumbo v0, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraNv;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraNv;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "horizontal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 210
    :goto_0
    const-string/jumbo v0, "CameraNv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set JPEG horizontal flip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/NvidiaCameraProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraNv;->sProxy:Lcom/android/camera/hardware/NvidiaCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraNv;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 215
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraNv;->updateNvCameraParametersPreference()V

    .line 213
    return-void
.end method
