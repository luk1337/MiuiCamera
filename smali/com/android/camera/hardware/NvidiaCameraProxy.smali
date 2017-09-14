.class public Lcom/android/camera/hardware/NvidiaCameraProxy;
.super Lcom/android/camera/hardware/CameraHardwareProxy;
.source "NvidiaCameraProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    return-void
.end method

.method private static areaListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v5, 0x0

    .line 455
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 456
    :cond_0
    return-object v5

    .line 458
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 459
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 460
    .local v3, "windowsString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 461
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 462
    .local v0, "area":Landroid/hardware/Camera$Area;
    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_2

    .line 474
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 85
    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 86
    .local v3, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v4, "cancelPicture"

    const-string/jumbo v5, "()V"

    invoke-static {v3, v4, v5}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 87
    .local v2, "method":Lmiui/reflect/Method;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "NvidiaCameraProxy"

    const-string/jumbo v5, "cancelContinuousMode IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    goto :goto_0
.end method

.method public getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 210
    const-string/jumbo v1, "nv-aohdr-enable"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAutoRotation(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 125
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getISOValue(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 186
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNSLNumBuffers(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 237
    const-string/jumbo v0, "nv-nsl-num-buffers"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
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
    .line 412
    const-string/jumbo v1, "flash-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->getAohdrEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string/jumbo v1, "off,on,auto,red-eye,torch"

    invoke-static {v1}, Lcom/android/camera/hardware/NvidiaCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getNvExposureTime(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 372
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "exposure":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 301
    const-string/jumbo v1, "nv-disable-preview-pause"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;
    .locals 2
    .param p1, "parameter"    # Lcom/android/camera/portability/ICameraParameters;
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
    .line 388
    invoke-interface {p1}, Lcom/android/camera/portability/ICameraParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 390
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    const-string/jumbo v1, "manual"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 392
    const-string/jumbo v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_2
    const-string/jumbo v1, "lock"

    invoke-static {v1, v0}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const-string/jumbo v1, "lock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
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
    .line 407
    const-string/jumbo v1, "nv-picture-iso-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    .line 102
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 103
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v3, "getWbCCT"

    const-string/jumbo v4, "()I"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 104
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_0

    .line 105
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 107
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NvidiaCameraProxy"

    const-string/jumbo v4, "getWBCurrentCCT IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return v5
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 402
    const-string/jumbo v0, "horizontal"

    const-string/jumbo v1, "nv-flip-still"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 10
    .param p1, "cameraId"    # I

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "camera":Landroid/hardware/Camera;
    const/4 v6, 0x1

    :try_start_0
    new-array v5, v6, [Ljava/lang/Class;

    const-string/jumbo v6, "com.nvidia.NvCamera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 49
    .local v5, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v6, "open"

    const-string/jumbo v7, "(I)Lcom/nvidia/NvCamera;"

    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 50
    .local v4, "method":Lmiui/reflect/Method;
    if-eqz v4, :cond_0

    .line 51
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0

    .line 60
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v4    # "method":Lmiui/reflect/Method;
    .end local v5    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 53
    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v4    # "method":Lmiui/reflect/Method;
    .restart local v5    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v6, "NvidiaCameraProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "openCamera fail NoSuchMethodException ownerClazz="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 55
    .end local v4    # "method":Lmiui/reflect/Method;
    .end local v5    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "NvidiaCameraProxy"

    const-string/jumbo v7, "no class found com.nvidia.NvCamera"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "NvidiaCameraProxy"

    const-string/jumbo v7, "openCamera IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAohdrEnable(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 218
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-aohdr-enable"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setAutoRotation(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Z

    .prologue
    .line 117
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-auto-rotation"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "count"    # I

    .prologue
    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-burst-picture-count"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setColorTemperature(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "awbRangeValue":Ljava/lang/String;
    const-string/jumbo v1, "nv-awb-cct-range"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string/jumbo v0, "nv-contrast"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public setEdgeEnhancement(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-edge-enhancement"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setExposureTime(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 364
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-exposure-time"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public setFlipStill(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "flip"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string/jumbo v0, "nv-flip-still"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
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
    .line 424
    .local p2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 425
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 426
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v3, p0, Lcom/android/camera/hardware/NvidiaCameraProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFocusAreas fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void

    .line 433
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 435
    const-string/jumbo v3, "focus-areas"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_2
    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string/jumbo v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string/jumbo p2, "auto"

    .line 379
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    .line 383
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 376
    return-void

    .line 380
    :cond_1
    const-string/jumbo v0, "lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string/jumbo p2, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "position"    # I

    .prologue
    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-focus-position"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setHandNight(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 141
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "hand-night"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string/jumbo v0, "nv-picture-iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 95
    return-void
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
    .line 440
    .local p2, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 441
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 442
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v3, p0, Lcom/android/camera/hardware/NvidiaCameraProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 443
    const-string/jumbo v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMeteringAreas fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 449
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {p2}, Lcom/android/camera/hardware/NvidiaCameraProxy;->areaListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 451
    const-string/jumbo v3, "metering-areas"

    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2
    return-void
.end method

.method public setMorphoHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-still-hdr-morpho"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setNSLBurstCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "count"    # I

    .prologue
    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-burst-picture-count"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setNSLNumBuffers(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "num"    # I

    .prologue
    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-nsl-num-buffers"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setNVShotMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "retVal":Z
    if-eqz p2, :cond_0

    .line 315
    const-string/jumbo v1, "shot2shot"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "shot2shot"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string/jumbo v1, "nv-capture-mode"

    const-string/jumbo v2, "normal"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 66
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 67
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v3, "native_setCustomParameters"

    const-string/jumbo v4, "(Ljava/lang/String;)V"

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 68
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 69
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, p1, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    sget-boolean v3, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 64
    :cond_0
    return-void

    .line 71
    .restart local v1    # "method":Lmiui/reflect/Method;
    .restart local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "NvidiaCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParameters NoSuchMethodException ownerClazz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "NvidiaCameraProxy"

    const-string/jumbo v4, "setParameters IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreviewPauseDisabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "disable"    # Z

    .prologue
    .line 293
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-disable-preview-pause"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setRawDumpFlag(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "flag"    # I

    .prologue
    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-raw-dump-flag"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setSaturation(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "saturation"    # I

    .prologue
    .line 333
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "nv-saturation"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v0, "manual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;->setColorTemperature(Landroid/hardware/Camera$Parameters;I)V

    .line 166
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 162
    return-void
.end method
