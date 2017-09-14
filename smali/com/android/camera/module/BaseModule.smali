.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;
.implements Lcom/android/camera/CameraManager$HardwareErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$1;,
        Lcom/android/camera/module/BaseModule$CameraMode;,
        Lcom/android/camera/module/BaseModule$CameraOpenThread;
    }
.end annotation


# static fields
.field protected static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraDisplayOrientation:I

.field protected mCameraHardwareError:Z

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDeviceRotation:F

.field protected mDisplayRotation:I

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field private mHandler:Landroid/os/Handler;

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mNumberOfCameras:I

.field protected mObjectTrackingStarted:Z

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field private mRestoring:Z

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSwitchingCamera:Z

.field protected mUIStyle:I

.field protected mWaitForRelease:Z

.field protected mZoomMax:I

.field private mZoomScaled:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 81
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 82
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDeviceRotation:F

    .line 138
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 154
    new-instance v0, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public static getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I
    .locals 1
    .param p0, "cameraId"    # I
    .param p1, "mode"    # Lcom/android/camera/module/BaseModule$CameraMode;

    .prologue
    .line 677
    iget v0, p1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 693
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private renderRectWithEdgeSlop()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 733
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 734
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Util;->calculateDefaultPreviewEdgeSlop(Landroid/content/Context;)I

    move-result v0

    .line 735
    .local v0, "defaultSlop":I
    const-string/jumbo v4, "camera_touch_edge_slop"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 737
    .local v2, "fromProp":I
    if-ne v2, v5, :cond_0

    .line 738
    move v1, v0

    .line 742
    .local v1, "edgeSlop":I
    :goto_0
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 743
    return-object v3

    .line 740
    .end local v1    # "edgeSlop":I
    :cond_0
    int-to-float v4, v2

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    .restart local v1    # "edgeSlop":I
    goto :goto_0
.end method


# virtual methods
.method public IsIgnoreTouchEvent()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    return v0
.end method

.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 639
    const-string/jumbo v0, "camera-service-mute"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method protected addT2TParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 643
    invoke-static {}, Lcom/android/camera/Device;->isSupportedObjectTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-string/jumbo v0, "t2t"

    const-string/jumbo v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    return-void
.end method

.method protected addZoom(I)V
    .locals 4
    .param p1, "add"    # I

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 550
    .local v0, "value":I
    add-int/2addr v0, p1

    .line 551
    if-gez v0, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 556
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 557
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 559
    const-string/jumbo v1, "pref_camera_zoom_key"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 560
    const-string/jumbo v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 553
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_0

    .line 554
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method public canIgnoreFocusChanged()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    return v0
.end method

.method protected changeConflictPreference()V
    .locals 5

    .prologue
    .line 928
    const-string/jumbo v4, "pref_camera_stereo_mode_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v3

    .line 930
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 931
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 932
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 933
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 934
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 937
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 927
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected changePreviewSurfaceSize()V
    .locals 3

    .prologue
    .line 884
    const/4 v1, 0x0

    .line 885
    .local v1, "width":I
    const/4 v0, 0x0

    .line 886
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    packed-switch v2, :pswitch_data_0

    .line 896
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 883
    return-void

    .line 888
    :pswitch_0
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 889
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x3

    goto :goto_0

    .line 892
    :pswitch_1
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 893
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setDisplayOrientation()V

    .line 442
    :cond_0
    return-void
.end method

.method protected configOisParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 649
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setOIS(Landroid/hardware/Camera$Parameters;Z)V

    .line 648
    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableCameraControls(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 582
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->ignoreTouchEvent(Z)V

    .line 580
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected enterMutexMode()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getPictureInfo()Lcom/android/camera/PictureInfo;
    .locals 3

    .prologue
    .line 948
    invoke-static {}, Lcom/android/camera/Util;->isSaveDebugInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    const/4 v1, 0x0

    return-object v1

    .line 951
    :cond_0
    new-instance v0, Lcom/android/camera/PictureInfo;

    invoke-direct {v0}, Lcom/android/camera/PictureInfo;-><init>()V

    .line 952
    .local v0, "info":Lcom/android/camera/PictureInfo;
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setSensorType(I)V

    .line 953
    sget-object v1, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFrontMirror(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PictureInfo;->setMirror(Z)V

    .line 954
    invoke-virtual {v0}, Lcom/android/camera/PictureInfo;->getIQProperty()V

    .line 955
    return-object v0
.end method

.method protected getPreferencesLocalId()I
    .locals 3

    .prologue
    .line 663
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 664
    .local v0, "preferencesLocalId":I
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ImageCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    .line 673
    :goto_0
    return v0

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->VideoCapture:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->ScanQRCode:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0

    .line 671
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    sget-object v2, Lcom/android/camera/module/BaseModule$CameraMode;->Normal:Lcom/android/camera/module/BaseModule$CameraMode;

    invoke-static {v1, v2}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v0

    goto :goto_0
.end method

.method protected getPreferredCameraId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 681
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 682
    .local v0, "intentCameraId":I
    if-ne v0, v2, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getStartCameraId(Landroid/app/Activity;)I

    move-result v0

    .line 685
    :cond_0
    if-ne v0, v2, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 689
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDelay()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    :cond_0
    const/16 v0, 0x7530

    .line 867
    :goto_0
    return v0

    .line 868
    :cond_1
    const v0, 0xea60

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    return v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 210
    packed-switch p2, :pswitch_data_0

    .line 232
    :cond_0
    return v3

    .line 213
    :pswitch_0
    if-ne p1, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 215
    .local v1, "value":I
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "extra2":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    .local v0, "state":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 222
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 223
    if-ne v0, v5, :cond_2

    .line 224
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2, v1}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 225
    const-string/jumbo v2, "pref_camera_exposure_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 227
    :cond_2
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EV = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v5

    .line 218
    :cond_3
    if-ne v0, v5, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 220
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x7f090088
        :pswitch_0
    .end packed-switch
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 7
    .param p1, "up"    # Z
    .param p2, "pressed"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 507
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v2, "pref_camera_volumekey_function_key"

    .line 508
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0e011e

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 510
    :cond_0
    return v5

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011b

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    .line 513
    return v5

    .line 514
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v1

    if-nez v1, :cond_5

    .line 515
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0e011c

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 514
    if-eqz v1, :cond_5

    .line 516
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 517
    if-nez p3, :cond_3

    .line 518
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string/jumbo v2, "zoom_volume_times"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 520
    :cond_3
    if-eqz p1, :cond_4

    .line 521
    invoke-virtual {p0, v5}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    .line 525
    :goto_0
    return v5

    .line 523
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 528
    :cond_5
    return v6
.end method

.method protected hasCameraException()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideFrontCameraFirstUseHint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 436
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isShowingFrontCameraFirstUseHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public ignoreTouchEvent(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIgnoreTouchEvent:Z

    .line 292
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 544
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 545
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    .line 542
    return-void
.end method

.method protected initializeMutexMode()V
    .locals 8

    .prologue
    .line 590
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_0

    return-void

    .line 591
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    new-instance v2, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 600
    .local v2, "enterHDR":Ljava/lang/Runnable;
    new-instance v4, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v4, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 607
    .local v4, "exitHDR":Ljava/lang/Runnable;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 608
    .local v0, "HDRRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string/jumbo v7, "enter"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v7, "exit"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const/4 v7, 0x7

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v3, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 624
    .local v3, "enterRAW":Ljava/lang/Runnable;
    new-instance v5, Lcom/android/camera/module/BaseModule$5;

    invoke-direct {v5, p0}, Lcom/android/camera/module/BaseModule$5;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 631
    .local v5, "exitRAW":Ljava/lang/Runnable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 632
    .local v1, "RAWRunnable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string/jumbo v7, "enter"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v7, "exit"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v7, Lcom/android/camera/MutexModeManager;

    invoke-direct {v7, v6}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    .line 589
    return-void
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 535
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 531
    return-void
.end method

.method protected isBackCamera()Z
    .locals 2

    .prologue
    .line 701
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    .line 697
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInTapableRect(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 711
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 712
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 713
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 714
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 715
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;->renderRectWithEdgeSlop()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRestoring()Z
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method protected isSquareModeChange()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 943
    const-string/jumbo v2, "pref_camera_square_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    .line 944
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderTargeRatio()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 943
    :goto_0
    if-eq v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 944
    goto :goto_0

    :cond_1
    move v0, v1

    .line 943
    goto :goto_1
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    .line 720
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    .line 719
    invoke-static {v1, v2}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 721
    .local v0, "relativeLocation":[I
    instance-of v1, p1, Landroid/graphics/Point;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 722
    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 723
    check-cast p1, Landroid/graphics/Point;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/Point;->y:I

    aget v2, v0, v5

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 724
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 725
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    move-object v1, p1

    .line 726
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    move-object v1, p1

    .line 727
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    aget v3, v0, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 728
    check-cast p1, Landroid/graphics/RectF;

    .end local p1    # "object":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aget v2, v0, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->setCameraError()V

    .line 782
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    .line 783
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onCameraException()V

    .line 778
    :goto_0
    return-void

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 410
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method protected onCameraException()V
    .locals 6

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraHardwareError:Z

    if-eqz v0, :cond_3

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    .line 371
    const-string/jumbo v1, "open_camera_fail_key"

    .line 370
    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 375
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->isInVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    const v0, 0x7f0e0225

    .line 374
    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 380
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showErrorDialog()V

    .line 384
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->couldShowErrorDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 386
    const v1, 0x7f0e0006

    .line 385
    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 387
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->showErrorDialog()V

    .line 366
    :cond_4
    :goto_1
    return-void

    .line 377
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 378
    const v0, 0x7f0e0005

    goto :goto_0

    .line 379
    :cond_6
    const v0, 0x7f0e0004

    goto :goto_0

    .line 390
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    goto :goto_1
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 182
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    .line 184
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 185
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 186
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->onDestory()V

    .line 197
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 849
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingButton()Lcom/android/camera/ui/V6SettingButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingButton;->isEnabled()Z

    move-result v0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->openSettingActivity()V

    goto :goto_0
.end method

.method public onLongPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 404
    return-void
.end method

.method public onNewIntent()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 417
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 418
    :cond_0
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 420
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    .line 421
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    .line 425
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 427
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_1

    .line 428
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 429
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/BaseModule;->setOrientationIndicator(IZ)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hideFrontCameraFirstUseHint()V

    .line 413
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 255
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 253
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 248
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 241
    :cond_0
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 236
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 872
    const-string/jumbo v0, "killed-moduleIndex"

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->getCurrentModule()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 332
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 336
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 324
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 473
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 848
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 263
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 749
    :cond_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 752
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 754
    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateStatusBar(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zoom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method protected openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->prepareOpenCamera()V

    .line 98
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 99
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iput-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    goto :goto_0

    .line 103
    .end local v0    # "e":Lcom/android/camera/CameraDisabledException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    iput-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 846
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 656
    :cond_0
    return-void
.end method

.method protected prepareOpenCamera()V
    .locals 4

    .prologue
    .line 920
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isNeedFrontCameraFirstUseHint(Lcom/android/camera/preferences/CameraSettingPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 919
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->isNeedRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 566
    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 567
    .local v0, "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    iput v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 568
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v6, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 569
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 570
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 571
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v6, v0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId(ILcom/android/camera/module/BaseModule$CameraMode;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 572
    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    :cond_0
    const-string/jumbo v1, "pref_camera_panoramamode_key"

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 563
    :cond_1
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 653
    sget-object v0, Lcom/android/camera/module/BaseModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    const v1, 0x7f0e016e

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 4
    .param p1, "contrast"    # F

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 354
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 355
    return v3

    .line 357
    :cond_0
    if-gez v0, :cond_2

    .line 358
    const/4 v0, 0x0

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 363
    const/4 v1, 0x1

    return v1

    .line 359
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_1

    .line 360
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method protected setDisplayOrientation()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    .line 450
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    .line 453
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 448
    :cond_0
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 459
    const/4 v3, 0x2

    new-array v1, v3, [Lcom/android/camera/ui/Rotatable;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 460
    .local v1, "indicators":[Lcom/android/camera/ui/Rotatable;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 461
    .local v0, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "indicator":Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method public setRestoring(Z)V
    .locals 0
    .param p1, "restoring"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mRestoring:Z

    .line 875
    return-void
.end method

.method protected setZoomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 766
    return-void
.end method

.method protected trackPictureTaken(IZIIZ)V
    .locals 4
    .param p1, "takenNum"    # I
    .param p2, "burst"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "location"    # Z

    .prologue
    .line 798
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "camera_picture_taken_key"

    .line 799
    int-to-long v2, p1

    .line 798
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 800
    if-eqz p2, :cond_0

    .line 801
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_nums_burst"

    .line 802
    int-to-long v2, p1

    .line 801
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 806
    :cond_0
    invoke-static {p3, p4}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_size_16_9"

    .line 808
    int-to-long v2, p1

    .line 807
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 815
    :goto_0
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->isRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    if-eqz p5, :cond_2

    .line 817
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "picture_with_location_key"

    .line 818
    int-to-long v2, p1

    .line 817
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 823
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "picture_with_location_on_key"

    .line 824
    int-to-long v2, p1

    .line 823
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 831
    :goto_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    .line 832
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "front_camera_picture_taken_key"

    .line 833
    :goto_3
    int-to-long v2, p1

    .line 831
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 797
    return-void

    .line 810
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_size_4_3"

    .line 811
    int-to-long v2, p1

    .line 810
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_0

    .line 820
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "picture_without_location_key"

    .line 821
    int-to-long v2, p1

    .line 820
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_1

    .line 826
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "picture_with_location_off_key"

    .line 827
    int-to-long v2, p1

    .line 826
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_2

    .line 832
    :cond_4
    const-string/jumbo v0, "back_camera_picture_taken_key"

    goto :goto_3
.end method

.method public transferOrientationCompensation(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "lastModule"    # Lcom/android/camera/module/Module;

    .prologue
    .line 480
    instance-of v0, p1, Lcom/android/camera/module/BaseModule;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 481
    check-cast v0, Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 482
    check-cast p1, Lcom/android/camera/module/BaseModule;

    .end local p1    # "lastModule":Lcom/android/camera/module/Module;
    iget v0, p1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 479
    :cond_0
    return-void
.end method

.method protected updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "focusManager"    # Lcom/android/camera/FocusManagerAbstract;

    .prologue
    .line 900
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 901
    move v0, p1

    .line 902
    .local v0, "tmp":I
    move p1, p2

    .line 903
    move p2, v0

    .line 906
    .end local v0    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getPreviewWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 907
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getPreviewHeight()I

    move-result v1

    if-eq v1, p2, :cond_4

    .line 909
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 910
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    .line 911
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 910
    invoke-virtual {p3, v1, v2}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 914
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 915
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getObjectView()Lcom/android/camera/ui/ObjectView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/ObjectView;->setPreviewSize(II)V

    .line 899
    :cond_3
    return-void

    .line 908
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mSwitchingCamera:Z

    .line 906
    if-nez v1, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSquareModeChange()Z

    move-result v1

    .line 906
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method protected updateStatusBar(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus(Ljava/lang/String;)V

    .line 758
    return-void
.end method
