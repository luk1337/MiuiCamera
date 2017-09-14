.class public Lcom/android/camera/module/Base2Module;
.super Ljava/lang/Object;
.source "Base2Module.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Base2Module$DecodeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDisplayOrientation:I

.field protected mDisplayRotation:I

.field protected mIgnoreFocusChanged:Z

.field private mIgnoreTouchEvent:Z

.field protected mImageCaptureShowing:Z

.field protected mIsImageCaptureIntent:Z

.field protected mJpegImageData:[B

.field protected mJpegRotation:I

.field protected mMainThreadId:J

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mPaused:Z

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field private mRestoring:Z

.field protected mSaveUri:Landroid/net/Uri;

.field protected mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

.field protected mUIStyle:I

.field private mZoomEnabled:Z

.field private mZoomMax:F

.field private mZoomScaled:F

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/camera/module/Base2Module;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    .line 70
    iput v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    .line 80
    iput v1, p0, Lcom/android/camera/module/Base2Module;->mUIStyle:I

    .line 49
    return-void
.end method


# virtual methods
.method public IsIgnoreTouchEvent()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreTouchEvent:Z

    return v0
.end method

.method public canIgnoreFocusChanged()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreFocusChanged:Z

    return v0
.end method

.method protected changePreviewSurfaceSize()V
    .locals 3

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "width":I
    const/4 v0, 0x0

    .line 439
    .local v0, "height":I
    iget v2, p0, Lcom/android/camera/module/Base2Module;->mUIStyle:I

    packed-switch v2, :pswitch_data_0

    .line 445
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 446
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v2, 0x3

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/Camera;->onLayoutChange(II)V

    .line 436
    return-void

    .line 441
    :pswitch_0
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    .line 442
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public checkActivityOrientation()V
    .locals 2

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/module/Base2Module;->mDisplayRotation:I

    iget-object v1, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->setDisplayOrientation()V

    .line 326
    :cond_0
    return-void
.end method

.method public dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

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
    .line 218
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

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
    .line 371
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 372
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->ignoreTouchEvent(Z)V

    .line 370
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()F
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    return v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreTouchEvent(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mIgnoreTouchEvent:Z

    .line 377
    return-void
.end method

.method protected initializeZoom(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initializeZoom: zoom unsupported!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getMaxZoom(Ljava/util/List;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    .line 387
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mSettingsManager:Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isZoomSupported(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mZoomEnabled:Z

    .line 381
    return-void
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized isPaused()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isRestoring()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mRestoring:Z

    return v0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mZoomEnabled:Z

    return v0
.end method

.method public notifyError()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 132
    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 85
    sget-object v0, Lcom/android/camera/module/Base2Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Base2Module;->mMainThreadId:J

    .line 88
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Base2Module;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onGestureTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->startFromSecureKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->openSettingActivity()V

    goto :goto_0
.end method

.method public onLongPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onNewIntent()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 233
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 234
    :cond_0
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->checkActivityOrientation()V

    .line 240
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    iget v2, p0, Lcom/android/camera/module/Base2Module;->mDisplayRotation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 241
    .local v0, "orientationCompensation":I
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    if-eq v1, v0, :cond_1

    .line 242
    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    .line 243
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/Base2Module;->setOrientationIndicator(IZ)V

    .line 229
    :cond_1
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 121
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setZoomValue(F)V

    .line 116
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setPaused(Z)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->enableCameraControls(Z)V

    .line 110
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 98
    :cond_0
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->setPaused(Z)V

    .line 93
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    const-string/jumbo v0, "killed-moduleIndex"

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->getCurrentModule()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    .line 196
    iget v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/Base2Module;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    .line 200
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F

    .prologue
    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mZoomScaled:F

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/Base2Module;->mIgnoreFocusChanged:Z

    .line 255
    :cond_0
    return-void
.end method

.method protected onZoomChanged(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module;->setZoomValue(F)V

    .line 423
    const-string/jumbo v0, "pref_camera_zoom_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/Base2Module;->updateStatusBar(Ljava/lang/String;F)V

    .line 417
    return-void
.end method

.method protected openSettingActivity()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .param p1, "soundId"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 430
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->isNeedRestore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 356
    invoke-static {}, Lcom/android/camera/module/BaseModule$CameraMode;->values()[Lcom/android/camera/module/BaseModule$CameraMode;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 357
    .local v1, "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    const/4 v0, 0x0

    .line 358
    .local v0, "cameraId":I
    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, v1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 359
    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 360
    const/4 v0, 0x1

    .line 361
    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v6, v1, Lcom/android/camera/module/BaseModule$CameraMode;->value:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 362
    iget-object v5, p0, Lcom/android/camera/module/Base2Module;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "cameraId":I
    .end local v1    # "cameraMode":Lcom/android/camera/module/BaseModule$CameraMode;
    :cond_0
    const-string/jumbo v2, "pref_camera_panoramamode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->resetPreference(Ljava/lang/String;)V

    .line 353
    :cond_1
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 4
    .param p1, "contrast"    # F

    .prologue
    .line 395
    iget v2, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    mul-float v0, v2, p1

    .line 396
    .local v0, "delta":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 397
    const/4 v2, 0x0

    return v2

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getZoomValue()F

    move-result v2

    add-float v1, v2, v0

    .line 400
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 401
    const/high16 v1, 0x3f800000    # 1.0f

    .line 405
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/Base2Module;->onZoomChanged(F)V

    .line 406
    const/4 v2, 0x1

    return v2

    .line 402
    :cond_2
    iget v2, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 403
    iget v1, p0, Lcom/android/camera/module/Base2Module;->mZoomMax:F

    goto :goto_0
.end method

.method protected setDisplayOrientation()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v3, 0x2

    new-array v1, v3, [Lcom/android/camera/ui/Rotatable;

    invoke-virtual {p0}, Lcom/android/camera/module/Base2Module;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 249
    .local v1, "indicators":[Lcom/android/camera/ui/Rotatable;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 250
    .local v0, "indicator":Lcom/android/camera/ui/Rotatable;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "indicator":Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method protected declared-synchronized setPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 124
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRestoring(Z)V
    .locals 0
    .param p1, "restoring"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/camera/module/Base2Module;->mRestoring:Z

    .line 335
    return-void
.end method

.method protected setZoomValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 414
    iput p1, p0, Lcom/android/camera/module/Base2Module;->mZoomValue:F

    .line 413
    return-void
.end method

.method public transferOrientationCompensation(Lcom/android/camera/module/Module;)V
    .locals 1
    .param p1, "lastModule"    # Lcom/android/camera/module/Module;

    .prologue
    move-object v0, p1

    .line 311
    check-cast v0, Lcom/android/camera/module/BaseModule;

    iget v0, v0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientation:I

    .line 312
    check-cast p1, Lcom/android/camera/module/BaseModule;

    .end local p1    # "lastModule":Lcom/android/camera/module/Module;
    iget v0, p1, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/Base2Module;->mOrientationCompensation:I

    .line 310
    return-void
.end method

.method protected updateStatusBar(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/camera/module/Base2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus(Ljava/lang/String;F)V

    .line 426
    return-void
.end method
