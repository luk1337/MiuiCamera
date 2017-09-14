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

.field private mLastIgnoreKey:I

.field private mLastKeyEventTime:J

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

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
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 62
    new-instance v0, Lcom/android/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->tickerRunnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 264
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 265
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 266
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 267
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 262
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    return-object v0

    .line 291
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    return-object v0

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance v0, Lcom/android/camera/camera_adapter/CameraLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraLC;-><init>()V

    return-object v0

    .line 295
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    new-instance v0, Lcom/android/camera/camera_adapter/CameraNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraNv;-><init>()V

    return-object v0

    .line 297
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraMTK;-><init>()V

    return-object v0

    .line 301
    :cond_4
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    return-object v0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .param p1, "moduleIndex"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "module":Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 273
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 274
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 275
    new-instance v0, Lcom/android/camera/module/MorphoPanoramaModule;

    .end local v0    # "module":Lcom/android/camera/module/Module;
    invoke-direct {v0}, Lcom/android/camera/module/MorphoPanoramaModule;-><init>()V

    .line 285
    .local v0, "module":Lcom/android/camera/module/Module;
    :goto_0
    return-object v0

    .line 276
    .local v0, "module":Lcom/android/camera/module/Module;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 277
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 278
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 279
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .local v0, "module":Lcom/android/camera/module/Module;
    goto :goto_0

    .line 281
    .local v0, "module":Lcom/android/camera/module/Module;
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 282
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentModule(I)V

    .line 283
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .local v0, "module":Lcom/android/camera/module/Module;
    goto :goto_0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    return-object v0

    .line 307
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/android/camera/camera_adapter/VideoLC;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoLC;-><init>()V

    return-object v0

    .line 309
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    new-instance v0, Lcom/android/camera/camera_adapter/VideoNv;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoNv;-><init>()V

    return-object v0

    .line 311
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    new-instance v0, Lcom/android/camera/camera_adapter/VideoMTK;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoMTK;-><init>()V

    return-object v0

    .line 313
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    return-object v0

    .line 317
    :cond_4
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/android/camera/module/Module;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p1, v0}, Lcom/android/camera/module/Module;->transferOrientationCompensation(Lcom/android/camera/module/Module;)V

    .line 255
    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 257
    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 258
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 259
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 252
    return-void
.end method

.method private setTranslucentNavigation(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 109
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 110
    const/16 v2, 0x300

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 111
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 106
    .end local v0    # "win":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private showDebug()V
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/android/camera/Util;->isShowDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v0, "CameraDebug"

    const-string/jumbo v1, "ready to start show debug info "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->showDebugView()V

    .line 493
    new-instance v0, Lcom/android/camera/Camera$LogThread;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$LogThread;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    .line 494
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    invoke-virtual {v0}, Lcom/android/camera/Camera$LogThread;->start()V

    .line 489
    :cond_0
    return-void
.end method

.method private switchEdgeFingerMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-static {}, Lcom/android/camera/Device;->isSupportedEdgeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->setEdgeMode(Landroid/content/Context;Z)V

    .line 449
    if-eqz p1, :cond_2

    .line 450
    new-instance v0, Lcom/android/camera/Camera$WatchDogThread;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$WatchDogThread;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$WatchDogThread;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    .line 451
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 455
    iput-object v1, p0, Lcom/android/camera/Camera;->mWatchDog:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private trackLaunchEvent()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 117
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 118
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v5

    const-string/jumbo v6, "launch_normal_times_key"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 125
    .local v1, "flags":I
    const/high16 v5, 0x800000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 126
    .local v2, "fromKeyguard":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    const-string/jumbo v4, "launch_keyguard_times_key"

    .line 138
    .end local v1    # "flags":I
    .end local v2    # "fromKeyguard":Z
    .local v4, "key":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 115
    return-void

    .line 129
    .end local v4    # "key":Ljava/lang/String;
    .restart local v1    # "flags":I
    .restart local v2    # "fromKeyguard":Z
    :cond_2
    const-string/jumbo v4, "launch_volume_key_times_key"

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v1    # "flags":I
    .end local v2    # "fromKeyguard":Z
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    const-string/jumbo v4, "launch_capture_intent_times_key"

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    const-string/jumbo v4, "launch_video_intent_times_key"

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "launch_normal_times_key"

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public changeRequestOrientation()V
    .locals 1

    .prologue
    .line 536
    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    .line 535
    :goto_0
    return-void

    .line 536
    :cond_1
    return-void

    .line 540
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public couldShowErrorDialog()Z
    .locals 1

    .prologue
    .line 545
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
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    const v2, 0x7f04001e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 141
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->getCapturePosture()I

    move-result v0

    return v0
.end method

.method public getImageSaver()Lcom/android/camera/storage/ImageSaver;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method public getSensorStateManager()Lcom/android/camera/SensorStateManager;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 321
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/android/camera/effect/EffectController;->releaseInstance()V

    .line 73
    const v1, 0x7f040024

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraRuntimePermissions(Landroid/app/Activity;)Z

    .line 78
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/Camera;->mContentInflated:Z

    .line 79
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/Camera;->mContentFrame:Landroid/widget/FrameLayout;

    .line 80
    new-instance v1, Lcom/android/camera/ui/UIController;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, "restoreModuleIndex":I
    if-eqz p1, :cond_1

    const-string/jumbo v1, "killed-moduleIndex"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 83
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 84
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, v2}, Lcom/android/camera/module/Module;->setRestoring(Z)V

    .line 85
    const-string/jumbo v1, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreModuleIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 93
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 94
    new-instance v1, Lcom/android/camera/SensorStateManager;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/camera/SensorStateManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    .line 95
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 96
    new-instance v1, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 97
    new-instance v3, Lcom/android/camera/storage/ImageSaver;

    iget-object v4, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    :goto_1
    invoke-direct {v3, p0, v4, v1}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 100
    invoke-direct {p0}, Lcom/android/camera/Camera;->showDebug()V

    .line 101
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setTranslucentNavigation(Z)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/Camera;->trackLaunchEvent()V

    .line 70
    return-void

    .line 86
    :cond_1
    const-string/jumbo v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 88
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0

    .line 90
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0

    :cond_4
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostDestroy()V

    .line 218
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->onDestory()V

    .line 219
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 220
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->onDestory(Lcom/android/camera/ActivityBase;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/Camera;->mDebugThread:Lcom/android/camera/Camera$LogThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera$LogThread;->setRunFlag(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 331
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 332
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 333
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    .line 336
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    const-wide/16 v4, 0x96

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 345
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 346
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 345
    :goto_1
    return v0

    .line 334
    :cond_2
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    .line 335
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 342
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v0, :cond_1

    .line 343
    iput v7, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    goto :goto_0

    .line 339
    :cond_4
    iput p1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 340
    return v6

    :cond_5
    move v0, v6

    .line 345
    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    if-ne p1, v1, :cond_0

    .line 352
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 353
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/Camera;->mLastIgnoreKey:I

    .line 354
    return v0

    .line 356
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/Camera;->mLastKeyEventTime:J

    .line 357
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 357
    :cond_1
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onNewIntent()V

    .line 154
    invoke-direct {p0}, Lcom/android/camera/Camera;->trackLaunchEvent()V

    .line 149
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 205
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 206
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 207
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 210
    iget-object v0, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->onHostPause()V

    .line 200
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 523
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->getCameraRuntimePermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 525
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 528
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v1, :cond_1

    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 530
    .local v0, "recordLocation":Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 522
    .end local v0    # "recordLocation":Z
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getKeyguardFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-static {p0}, Lcom/android/camera/Util;->getWindowAttribute(Landroid/content/Context;)V

    .line 169
    :cond_1
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 170
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 171
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mActivityPaused:Z

    .line 172
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->switchEdgeFingerMode(Z)V

    .line 173
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 175
    invoke-static {p0}, Lcom/android/camera/Util;->getStartModuleIndex(Landroid/app/Activity;)I

    move-result v0

    .line 176
    .local v0, "switchToModuleIndex":I
    iget-boolean v1, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    if-eqz v1, :cond_2

    if-gez v0, :cond_5

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 178
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 179
    iget-object v1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 185
    :goto_1
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-nez v1, :cond_3

    .line 186
    invoke-static {p0}, Lcom/android/camera/Util;->replaceStartEffectRender(Landroid/app/Activity;)I

    .line 188
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/camera/Camera;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/camera/storage/ImageSaver;->onHostResume(Z)V

    .line 190
    invoke-static {p0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    .line 158
    return-void

    .line 162
    .end local v0    # "switchToModuleIndex":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 176
    .restart local v0    # "switchToModuleIndex":I
    :cond_5
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    if-eq v0, v1, :cond_2

    .line 181
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 183
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mIntentChanged:Z

    goto :goto_1

    :cond_6
    move v1, v2

    .line 189
    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 196
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 194
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 397
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 395
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->canIgnoreFocusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 370
    invoke-static {p0}, Lcom/android/camera/Util;->checkLockedOrientation(Landroid/app/Activity;)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->checkActivityOrientation()V

    .line 372
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->register()V

    .line 362
    :cond_1
    :goto_1
    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraBrightness:Lcom/android/camera/CameraBrightness;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraBrightness;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/camera/Camera;->mSensorStateManager:Lcom/android/camera/SensorStateManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 234
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 227
    :cond_0
    return-void
.end method

.method public setBlurFlag(Z)V
    .locals 3
    .param p1, "blurred"    # Z

    .prologue
    const/4 v1, 0x4

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setBackgroundColor(I)V

    .line 426
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 432
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
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mCameraErrorShown:Z

    .line 548
    return-void
.end method

.method public switchToOtherModule(I)V
    .locals 1
    .param p1, "moduleIndex"    # I

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 243
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 244
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    .line 240
    return-void
.end method
