.class public Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;,
        Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
    }
.end annotation


# static fields
.field private static final mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;


# instance fields
.field private mIsFrontCameraPresent:Z

.field private mIsMonoCameraPresent:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsMonoCameraPresent:Z

    .line 89
    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsFrontCameraPresent:Z

    .line 96
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    .line 97
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 98
    iget-object v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 100
    const-string/jumbo v9, "camera"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraManager;

    .line 102
    .local v7, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "cameraIdList":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v1

    if-ge v6, v9, :cond_2

    .line 104
    aget-object v0, v1, v6

    .line 106
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 107
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v8, 0x0

    .line 109
    .local v8, "monoOnly":B
    :try_start_1
    sget-object v9, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 113
    .end local v8    # "monoOnly":B
    :goto_1
    if-ne v8, v11, :cond_0

    .line 114
    :try_start_2
    sput v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    .line 115
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsMonoCameraPresent:Z

    .line 117
    :cond_0
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    .local v5, "facing":I
    if-nez v5, :cond_1

    .line 119
    sput v6, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    .line 120
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mIsFrontCameraPresent:Z

    .line 122
    :cond_1
    sget-object v9, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v9, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    .end local v5    # "facing":I
    .restart local v8    # "monoOnly":B
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SettingsManager"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 124
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraIdList":[Ljava/lang/String;
    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v8    # "monoOnly":B
    :catch_1
    move-exception v3

    .line 125
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v9, "SettingsManager"

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->sInstance:Lcom/android/camera/camera_adapter/camera2/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLongshotShotLimit()I
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "persist.camera.longshot_shotlimit"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPersistSceneMode(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1
    .param p0, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 137
    const-string/jumbo v0, "persist.camera.scene_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureSizeRatio()F
    .locals 9

    .prologue
    .line 401
    const v3, 0x3faaaaab

    .line 402
    .local v3, "ratio":F
    const-string/jumbo v6, "pref_camera_picturesize_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 404
    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, "index":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 407
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, "width":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    .local v1, "height":I
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 416
    .end local v1    # "height":I
    .end local v2    # "index":I
    .end local v5    # "width":I
    :cond_0
    :goto_0
    return v3

    .line 410
    .restart local v2    # "index":I
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "SettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid picture size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPreferredCameraId(Landroid/app/Activity;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, -0x1

    .line 524
    invoke-static {p1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 525
    .local v0, "intentCameraId":I
    if-ne v0, v1, :cond_0

    .line 526
    invoke-static {p1}, Lcom/android/camera/Util;->getStartCameraId(Landroid/app/Activity;)I

    move-result v0

    .line 528
    :cond_0
    if-ne v0, v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 532
    return v0
.end method

.method public static isClearSightOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 145
    const-string/jumbo v0, "persist.camera.clear_sight"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMonoPreviewOn()Z
    .locals 2

    .prologue
    .line 141
    const-string/jumbo v0, "persist.camera.mono_preview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMpoOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 149
    const-string/jumbo v0, "persist.camera.mpo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private mapToCamera2Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "camera1Value"    # Ljava/lang/String;

    .prologue
    .line 261
    if-eqz p1, :cond_4

    .line 262
    const-string/jumbo v0, "pref_camera_antibanding_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2AntiBanding(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2FlashMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1
    const-string/jumbo v0, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2WhiteBalance(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_2
    const-string/jumbo v0, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_3
    const-string/jumbo v0, "pref_camera_scenemode_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2SceneMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_4
    return-object p2
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;>;"
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;

    .line 283
    .local v0, "listener":Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;
    invoke-interface {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;->onSettingsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 281
    .end local v0    # "listener":Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;
    :cond_0
    return-void
.end method

.method private setLocalIdAndInitialize(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 169
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 167
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    goto :goto_0
.end method


# virtual methods
.method public getAeCompensationRange(I)Landroid/util/Range;
    .locals 2
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    .line 313
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 312
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public getAeCompensationStep(I)F
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 317
    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 318
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 317
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    .line 319
    .local v0, "rational":Landroid/util/Rational;
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v1

    return v1
.end method

.method public getCharacteristics(I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 288
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getJpegQuality()I
    .locals 5

    .prologue
    .line 248
    :try_start_0
    const-string/jumbo v3, "pref_camera_jpegquality_key"

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "jpegQuality":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
    .local v2, "qualityPercentile":I
    if-ltz v2, :cond_0

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    .line 251
    return v2

    .line 253
    .end local v0    # "jpegQuality":Ljava/lang/String;
    .end local v2    # "qualityPercentile":I
    :catch_0
    move-exception v1

    .line 254
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SettingsManager"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    const/16 v3, 0x57

    return v3
.end method

.method public getMaxPictureSize(II)Landroid/util/Size;
    .locals 9
    .param p1, "cameraId"    # I
    .param p2, "format"    # I

    .prologue
    .line 376
    const/4 v5, 0x0

    .line 378
    .local v5, "size":Landroid/util/Size;
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPictureSizeRatio()F

    move-result v1

    .line 379
    .local v1, "expectedRatio":F
    sget-object v7, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CameraCharacteristics;

    .line 380
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 379
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 381
    .local v3, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v3, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 382
    .local v6, "sizes":[Landroid/util/Size;
    new-instance v7, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;

    invoke-direct {v7}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$CompareSizesByArea;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 383
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 384
    aget-object v7, v6, v2

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 385
    .local v4, "ratio":F
    sub-float v7, v1, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 386
    aget-object v5, v6, v2

    .line 391
    .end local v4    # "ratio":F
    .end local v5    # "size":Landroid/util/Size;
    :cond_0
    if-nez v5, :cond_1

    .line 392
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v5, v6, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1    # "expectedRatio":F
    .end local v2    # "i":I
    .end local v3    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v6    # "sizes":[Landroid/util/Size;
    :cond_1
    :goto_1
    return-object v5

    .line 383
    .restart local v1    # "expectedRatio":F
    .restart local v2    # "i":I
    .restart local v3    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v4    # "ratio":F
    .restart local v5    # "size":Landroid/util/Size;
    .restart local v6    # "sizes":[Landroid/util/Size;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 394
    .end local v1    # "expectedRatio":F
    .end local v2    # "i":I
    .end local v3    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v4    # "ratio":F
    .end local v5    # "size":Landroid/util/Size;
    .end local v6    # "sizes":[Landroid/util/Size;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Landroid/util/Size;

    const/16 v7, 0x1040

    const/16 v8, 0xc30

    invoke-direct {v5, v7, v8}, Landroid/util/Size;-><init>(II)V

    .local v5, "size":Landroid/util/Size;
    goto :goto_1
.end method

.method public getMaxZoom(I)F
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 296
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxZoom(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 301
    .local v2, "zoomMax":F
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxZoom(I)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    .line 304
    .end local v0    # "id":I
    :cond_0
    return v2
.end method

.method public getSensorActiveArraySize(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 292
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 185
    const/4 v4, 0x0

    .line 186
    .local v4, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 187
    const-string/jumbo v5, "pref_camera_antibanding_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    const v5, 0x7f0e00d3

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getDefaultPreferenceId(I)I

    move-result v2

    .line 190
    .local v2, "resId":I
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "defaultAntiBanding":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 192
    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v6, p1, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2AntiBanding(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .end local v0    # "defaultAntiBanding":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v5, "SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v4, :cond_1

    .line 229
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v5, p1, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "SettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "pref_camera_flashmode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "off"

    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2FlashMode(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto :goto_0

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/CameraSettings;->getWhiteBalance()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2WhiteBalance(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "pref_camera_exposure_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "pref_qc_camera_iso_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 205
    const-string/jumbo v4, "auto"

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 208
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->getJpegQuality(Lcom/android/camera/preferences/CameraSettingPreferences;Z)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "jpegQuality":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .end local v1    # "jpegQuality":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "pref_camera2_redeyereduction_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    const-string/jumbo v4, "disable"

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .local v4, "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "pref_camera_scenemode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    .line 216
    const v6, 0x7f0e00b2

    .line 215
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "sceneMode":Ljava/lang/String;
    const-string/jumbo v5, "pref_camera_scenemode_setting_key"

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 218
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v6, "pref_camera_scenemode_key"

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera2SceneMode(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 157
    const-string/jumbo v1, "SettingsManager"

    const-string/jumbo v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getPreferredCameraId(Landroid/app/Activity;)I

    move-result v0

    .line 159
    .local v0, "cameraId":I
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 156
    return-void
.end method

.method public isAutoExposureRegionSupported(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 350
    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 351
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 350
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    .local v0, "maxAERegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isAutoExposureRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoExposureRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    const/4 v2, 0x0

    return v2

    .line 337
    .end local v0    # "id":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isAutoFocusRegionSupported(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 356
    sget-object v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 357
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 356
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 358
    .local v0, "maxAfRegions":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isAutoFocusRegionSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 324
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isAutoFocusRegionSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    return v2

    .line 328
    .end local v0    # "id":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isFlashSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 372
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 308
    sget-object v0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomSupported(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    const/4 v2, 0x0

    return v2

    .line 346
    .end local v0    # "id":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "camera1Value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "changedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mapToCamera2Value(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "value":Ljava/lang/String;
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    invoke-direct {v3, v2, v4}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v3}, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;-><init>(Ljava/lang/String;Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;)V

    .line 242
    .local v1, "state":Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->notifyListeners(Ljava/util/List;)V

    .line 235
    return-void
.end method

.method public registerListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public reinit(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 163
    const-string/jumbo v0, "SettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reinit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->setLocalIdAndInitialize(I)V

    .line 162
    return-void
.end method

.method public unregisterListener(Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/camera_adapter/camera2/SettingsManager$Listener;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method
