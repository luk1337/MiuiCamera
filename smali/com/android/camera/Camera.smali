.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$1;,
        Lcom/android/camera/Camera$LogThread;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$WatchDogThread;
    }
.end annotation


# instance fields
.field private mCameraErrorShown:Z

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentInflated:Z

.field private mCurrentModuleIndex:I

.field private mDebugThread:Lcom/android/camera/Camera$LogThread;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mIntentChanged:Z

.field private mIsFromLauncher:Z

.field private mIsGoingToCamera2:Z

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

.field private mSensorStateManager:Lcom/android/camera/SensorStateManager;

.field private mTick:I

.field private mWatchDog:Ljava/lang/Thread;

.field private final tickerRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/camera/Camera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/Camera;->mTick:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/Camera;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/Camera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/Camera;->mTick:I

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 48
    iput v2, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 58
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    .line 70
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 287
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 288
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 289
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 290
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 285
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    return-object v0

    .line 318
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    return-object v0

    .line 320
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    return-object v0

    .line 322
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    return-object v0

    .line 324
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    return-object v0

    .line 328
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    return-object v0
.end method

.method private getDualcamByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;-><init>()V

    return-object v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "module":Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 296
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 297
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 298
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule;

    .end local v0    # "module":Lcom/android/camera/module/Module;
    invoke-direct {v0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    .line 312
    .local v0, "module":Lcom/android/camera/module/Module;
    :goto_0
    return-object v0

    .line 299
    .local v0, "module":Lcom/android/camera/module/Module;
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 300
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 301
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 302
    invoke-direct {p0}, Lcom/android/camera/Camera;->getDualcamByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .local v0, "module":Lcom/android/camera/module/Module;
    goto :goto_0

    .line 303
    .local v0, "module":Lcom/android/camera/module/Module;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 304
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 305
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .local v0, "module":Lcom/android/camera/module/Module;
    goto :goto_0

    .line 308
    .local v0, "module":Lcom/android/camera/module/Module;
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 309
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .local v0, "module":Lcom/android/camera/module/Module;
    goto :goto_0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    return-object v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    return-object v0

    .line 336
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    return-object v0

    .line 338
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    return-object v0

    .line 340
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    return-object v0

    .line 344
    :cond_4
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method private isFromKeyguard()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 142
    return v2

    .line 144
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v2

    :cond_1
    return v2
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->transferOrientationCompensation(Lcom/android/camera/module/Module;)V

    .line 278
    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 280
    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 281
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 282
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 275
    return-void
.end method

.method private resetDualMode()V
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 122
    :cond_0
    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 125
    :cond_1
    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 131
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 133
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 134
    const/16 v2, 0x300

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 130
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private showDebug()V
    .locals 2

    .prologue
    .line 538
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string/jumbo v0, "CameraDebug"

    const-string/jumbo v1, "ready to start show debug info "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->showDebugView()V

    .line 541
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    .line 542
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$LogThread;->start()V

    .line 537
    :cond_0
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 497
    if-eqz p1, :cond_2

    .line 498
    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$WatchDogThread;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 499
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 492
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 503
    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    .prologue
    .line 585
    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    .line 584
    :goto_0
    return-void

    .line 589
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public couldShowErrorDialog()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mCameraErrorShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createContentView()V
    .locals 3

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    const v2, 0x7f040020

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 148
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0, p1}, Lcom/android/camera/ProximitySensorLock;->intercept(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    return v0

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 429
    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->active()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    return v0

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public isGoingToCamera2()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    return v0
.end method

.method public isStable()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->isStable()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 356
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 616
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Base2Module;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 615
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Lcom/android/camera/ProximitySensorLock;

    invoke-direct {v2, p0}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    .line 83
    iget-object v2, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v2}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    .line 85
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    .line 86
    const v2, 0x7f040026

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z

    .line 91
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 92
    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    .line 93
    new-instance v2, Lcom/android/camera/ui/UIController;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    .line 94
    const/4 v1, -0x1

    .line 95
    .local v1, "restoreModuleIndex":I
    if-eqz p1, :cond_3

    const-string/jumbo v2, "killed-moduleIndex"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 96
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 97
    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2, v4}, Lcom/android/camera/module/Module;->setRestoring(Z)V

    .line 98
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreModuleIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 107
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 108
    new-instance v2, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 109
    iget-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v2, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 110
    new-instance v2, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v2, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 111
    new-instance v3, Lcom/android/camera/storage/ImageSaver;

    iget-object v5, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    :goto_1
    invoke-direct {v3, p0, v5, v2}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 114
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    .line 115
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    .line 78
    return-void

    .line 100
    :cond_3
    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    .line 101
    .local v0, "moduleIndex":I
    if-gez v0, :cond_4

    move v0, v3

    .end local v0    # "moduleIndex":I
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 102
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetDualMode()V

    goto :goto_0

    :cond_5
    move v2, v4

    .line 111
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 231
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 232
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestory()V

    .line 233
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 234
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestroy(Lcom/android/camera/ActivityBase;)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    .line 228
    :cond_1
    return-void
.end method

.method public onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 436
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 439
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 374
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 375
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 376
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    .line 381
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 390
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 390
    :goto_1
    return v0

    .line 377
    :cond_2
    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    .line 378
    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    .line 379
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    .line 380
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 387
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v0, :cond_1

    .line 388
    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_0

    .line 384
    :cond_4
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 385
    return v6

    :cond_5
    move v0, v6

    .line 390
    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 396
    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_0

    .line 397
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 398
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 399
    return v0

    .line 401
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 402
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 402
    :cond_1
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onNewIntent()V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 219
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 223
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    .line 224
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 213
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Base2Module;->onPreviewUIDestroyed()V

    .line 608
    :cond_0
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    instance-of v0, v0, Lcom/android/camera/module/Base2Module;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    check-cast v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Base2Module;->onPreviewUIReady()V

    .line 602
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 572
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 574
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 577
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v1, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 579
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 571
    .end local v0    # "recordLocation":Z
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {p0}, Lcom/android/camera/Util;->getWindowAttribute(Landroid/content/Context;)V

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/camera/Camera;->mProximitySensorLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1}, Lcom/android/camera/ProximitySensorLock;->onResume()V

    .line 178
    :cond_2
    const-string/jumbo v1, "CameraActivity"

    invoke-static {p0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 180
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 181
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 182
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 183
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 184
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 185
    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    .line 186
    .local v0, "switchToModuleIndex":I
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    if-eqz v1, :cond_3

    if-gez v0, :cond_6

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 188
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 189
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 198
    :goto_1
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-nez v1, :cond_4

    .line 199
    invoke-static {p0}, Lcom/android/camera/Util;->replaceStartEffectRender(Landroid/app/Activity;)I

    .line 201
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 202
    iget-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 203
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 164
    return-void

    .line 168
    .end local v0    # "switchToModuleIndex":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 186
    .restart local v0    # "switchToModuleIndex":I
    :cond_6
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-eq v0, v1, :cond_3

    .line 191
    if-nez v0, :cond_7

    .line 192
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetDualMode()V

    .line 194
    :cond_7
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 196
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    goto :goto_1

    :cond_8
    move v1, v2

    .line 202
    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 207
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 445
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 443
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 408
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 415
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    .line 417
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    .line 407
    :cond_1
    :goto_1
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 251
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 244
    :cond_0
    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 3
    .param p1, "blurred"    # Z

    .prologue
    const/4 v1, 0x4

    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 477
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    .line 474
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 480
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showErrorDialog()V
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mCameraErrorShown:Z

    .line 597
    return-void
.end method

.method public switchToOtherModule(I)V
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 265
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 266
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    .line 268
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mIsGoingToCamera2:Z

    .line 261
    return-void

    :cond_1
    move v0, v1

    .line 263
    goto :goto_0
.end method
