.class public Lcom/android/camera/hardware/CameraHardwareProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mHalCoordinate:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public static declared-synchronized getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/hardware/CameraHardwareProxy;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/QcomCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    .line 110
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Lcom/android/camera/hardware/LCCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/LCCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 102
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/MTKCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 107
    :cond_4
    new-instance v0, Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p0, :cond_0

    return-object v4

    .line 273
    :cond_0
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 274
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 538
    if-nez p2, :cond_0

    return-object v6

    .line 540
    :cond_0
    const/16 v3, 0x78

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 541
    .local v1, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 542
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    invoke-virtual {p1}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 544
    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    return-object v3

    .line 547
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "CameraHardwareProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid size parameter string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v6
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 453
    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 513
    return-void
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRotation(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 412
    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "rotation":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 414
    const/4 v1, -0x1

    return v1

    .line 416
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 338
    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Lcom/android/camera/portability/ICameraParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/portability/ICameraParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-interface {p1}, Lcom/android/camera/portability/ICameraParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "listOld":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 291
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v4, v5, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v4, v5, :cond_0

    .line 292
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "size$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getSupportedWhiteBalance(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Lcom/android/camera/portability/ICameraParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/portability/ICameraParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-interface {p1}, Lcom/android/camera/portability/ICameraParameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 354
    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 400
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 135
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getFlashOn"

    const-string/jumbo v6, "()I"

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 137
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p1, v6}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 139
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraHardwareProxy"

    const-string/jumbo v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v4
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 114
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string/jumbo v0, "xiaomi-beauty-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string/jumbo v0, "xiaomi-beauty-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string/jumbo v0, "xiaomi-beauty-skin-smooth"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string/jumbo v0, "xiaomi-beauty-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 487
    const-string/jumbo v1, "xiaomi-face-beauty-rank"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void

    .line 487
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "speed"    # I

    .prologue
    .line 179
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 188
    return-void
.end method

.method public setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 494
    const-string/jumbo v1, "xiaomi-face-watermark"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v1, "watermark_age"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    .line 494
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 496
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_1
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v5, 0x0

    .line 367
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 368
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 369
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 372
    return-void

    .line 376
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 366
    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "hdr"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string/jumbo v0, "mi-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "enable"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 153
    invoke-static {}, Lcom/android/camera/Device;->isSupportedASD()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 157
    :try_start_0
    const-string/jumbo v6, "android.hardware.Camera$CameraMetaDataCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 159
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v8, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;

    invoke-direct {v8, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 158
    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 162
    .local v5, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v6, "setMetadataCb"

    .line 163
    const-string/jumbo v7, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    .line 162
    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 164
    .local v4, "method":Lmiui/reflect/Method;
    if-eqz v4, :cond_1

    .line 165
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, p1, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v4    # "method":Lmiui/reflect/Method;
    .end local v5    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "ClassNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "IllegalArgumentException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v5, 0x0

    .line 380
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 381
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 382
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 385
    return-void

    .line 389
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 379
    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string/jumbo v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string/jumbo v0, "night-anti-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "prameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string/jumbo v0, "night-shot"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 468
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 119
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 117
    :cond_0
    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 509
    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 511
    return-void
.end method

.method public setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setStillMore(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 499
    return-void
.end method

.method public setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 345
    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string/jumbo v0, "xiaomi-time-watermark-value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v0, "watermark_value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 473
    return-void
.end method

.method protected splitSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraManager$CameraProxy;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 522
    if-nez p2, :cond_0

    return-object v6

    .line 524
    :cond_0
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 525
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->strToSize(Lcom/android/camera/CameraManager$CameraProxy;Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 529
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    return-object v6

    .line 532
    :cond_3
    return-object v3
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 196
    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 200
    return-void
.end method
