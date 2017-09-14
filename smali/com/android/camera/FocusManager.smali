.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$Listener;,
        Lcom/android/camera/FocusManager$MainHandler;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mFrameView:Lcom/android/camera/ui/FrameView;

.field private mHandler:Landroid/os/Handler;

.field private mKeepFocusUIState:Z

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/FocusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/android/camera/preferences/CameraSettingPreferences;
    .param p3, "defaultFocusModes"    # [Ljava/lang/String;
    .param p4, "focusView"    # Lcom/android/camera/ui/FocusView;
    .param p5, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p6, "listener"    # Lcom/android/camera/FocusManager$Listener;
    .param p7, "mirror"    # Z
    .param p8, "looper"    # Landroid/os/Looper;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 150
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    .line 152
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 154
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 155
    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 156
    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 149
    return-void
.end method

.method private autoFocus(I)V
    .locals 5
    .param p1, "from"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 640
    const-string/jumbo v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start autoFocus from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 643
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 646
    :cond_0
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    instance-of v0, v0, Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_2

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 653
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_3

    .line 654
    invoke-static {}, Lcom/android/camera/CameraSettings;->needStopFaceinFocusing()Z

    move-result v0

    .line 653
    if-eqz v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 657
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 658
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 659
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 663
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 664
    const-wide/16 v2, 0x1388

    .line 663
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    return-void

    :cond_4
    move v0, v2

    .line 644
    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 669
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 678
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 680
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 681
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    const-string/jumbo v0, "FocusManager"

    const-string/jumbo v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 690
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 692
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 693
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    :cond_1
    return-void
.end method

.method private focusPoint(IIIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "from"    # I
    .param p4, "onlyAe"    # Z

    .prologue
    const/4 v2, 0x1

    .line 528
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 530
    :cond_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 537
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/FocusManager;->initializeParameters(IIIZ)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 542
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    if-eqz p4, :cond_7

    .line 546
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    .line 548
    const/4 v0, 0x3

    if-ne v0, p3, :cond_5

    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 551
    :cond_5
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 552
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 553
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 555
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    :cond_6
    :goto_0
    return-void

    .line 543
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 544
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0
.end method

.method private getTapAction()I
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "focusMode":Ljava/lang/String;
    const-string/jumbo v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    const-string/jumbo v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 881
    if-nez v1, :cond_0

    .line 883
    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 881
    if-nez v1, :cond_0

    .line 884
    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 881
    if-nez v1, :cond_0

    .line 885
    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 881
    if-eqz v1, :cond_1

    .line 886
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 888
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 463
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 467
    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 460
    return-void
.end method

.method private initializeFocusIndicator(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 491
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10
    .param p1, "focusWidth"    # I
    .param p2, "focusHeight"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I
    .param p7, "from"    # I

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 475
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 487
    const v4, 0x3fe66666    # 1.8f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 472
    return-void

    .line 481
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 482
    return-void
.end method

.method private initializeParameters(IIIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "from"    # I
    .param p4, "onlyAe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 500
    move v3, p1

    .line 501
    .local v3, "previewX":I
    move v4, p2

    .line 503
    .local v4, "previewY":I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isFishEye()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x2

    new-array v8, v0, [F

    int-to-float v0, p1

    aput v0, v8, v1

    int-to-float v0, p2

    aput v0, v8, v2

    .line 505
    .local v8, "pts":[F
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mPreviewChangeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 506
    aget v0, v8, v1

    float-to-int v3, v0

    .line 507
    aget v0, v8, v2

    float-to-int v4, v0

    .line 510
    .end local v8    # "pts":[F
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_3

    .line 515
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 516
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    .line 517
    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v7, p3

    .line 516
    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    .line 519
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 499
    return-void

    .line 511
    :cond_3
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    .line 512
    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    .line 511
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    goto :goto_0
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 893
    const-string/jumbo v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    const-string/jumbo v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFocusEnabled()Z
    .locals 2

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 930
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    .line 929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValid(I)Z
    .locals 8
    .param p1, "from"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 626
    .local v0, "now":J
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 627
    :cond_0
    const/16 v2, 0x1388

    .line 626
    :goto_0
    int-to-long v4, v2

    .line 628
    .local v4, "timeout":J
    if-ge p1, v7, :cond_1

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-lt p1, v2, :cond_3

    .line 630
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    .line 631
    return v6

    .line 627
    .end local v4    # "timeout":J
    :cond_2
    const/16 v2, 0xfa0

    goto :goto_0

    .line 629
    .restart local v4    # "timeout":J
    :cond_3
    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    .line 628
    if-nez v2, :cond_1

    .line 633
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_4

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 636
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 908
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 908
    if-nez v1, :cond_0

    .line 910
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 908
    :cond_0
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
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

    .line 872
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

.method private multiCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 698
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 703
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 704
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 697
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .prologue
    .line 453
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    .line 454
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    .line 455
    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    .line 453
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 456
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 452
    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 8

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 437
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 440
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 441
    iput-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 442
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    .line 443
    .local v3, "x":I
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    .line 444
    .local v4, "y":I
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    .line 445
    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    .line 444
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 446
    const/4 v0, 0x1

    return v0

    .line 449
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v7    # "rect":Landroid/graphics/RectF;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setFocusState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 183
    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 187
    return-void
.end method


# virtual methods
.method public cancelMultiSnapPending()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 847
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_0

    .line 848
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 849
    const/4 v0, 0x1

    return v0

    .line 851
    :cond_0
    return v2
.end method

.method public doMultiSnap(Z)V
    .locals 3
    .param p1, "checkFocusState"    # Z

    .prologue
    const/4 v2, 0x1

    .line 304
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    if-nez p1, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 313
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 314
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 303
    :cond_3
    :goto_0
    return-void

    .line 313
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 319
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 320
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_0

    .line 321
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 3

    .prologue
    .line 281
    const-string/jumbo v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doSnap mInitialized is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    .line 280
    :cond_2
    :goto_0
    return-void

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 293
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    .line 294
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 10

    .prologue
    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 588
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 590
    .local v0, "rect":Landroid/graphics/RectF;
    if-nez v0, :cond_1

    return v6

    .line 588
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_0
    return v6

    .line 591
    .restart local v0    # "rect":Landroid/graphics/RectF;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v7, :cond_2

    .line 592
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_2

    .line 593
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    .line 594
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    .line 593
    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_2

    .line 595
    return v6

    .line 598
    :cond_2
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 599
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int v1, v3

    .line 600
    .local v1, "x":I
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int v2, v3

    .line 601
    .local v2, "y":I
    invoke-direct {p0, v1, v2, v7, v6}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    .line 602
    return v7
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 723
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    return-object v5

    .line 725
    :cond_0
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v5

    .line 726
    new-instance v6, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v6, v7}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 725
    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v4

    .line 728
    .local v4, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 730
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 731
    const-string/jumbo v5, "manual"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 732
    const-string/jumbo v5, "manual"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 740
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 742
    const/4 v1, 0x0

    .line 743
    .local v1, "find":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 744
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 745
    .local v3, "mode":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 746
    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 747
    const/4 v1, 0x1

    .line 751
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 754
    const-string/jumbo v5, "auto"

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 756
    const-string/jumbo v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 761
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 762
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 763
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "pref_camera_focus_mode_key"

    .line 764
    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 763
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 765
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 768
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "find":Z
    .end local v2    # "i":I
    :cond_4
    const-string/jumbo v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 769
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 771
    :cond_5
    const-string/jumbo v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FocusMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    return-object v5

    .line 733
    :cond_6
    const-string/jumbo v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 734
    const-string/jumbo v5, "continuous-video"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 733
    if-nez v5, :cond_7

    .line 735
    const-string/jumbo v5, "macro"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 733
    if-eqz v5, :cond_1

    .line 736
    :cond_7
    const-string/jumbo v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 743
    .restart local v1    # "find":Z
    .restart local v2    # "i":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 758
    .end local v3    # "mode":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 835
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 331
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 335
    if-eqz p1, :cond_1

    .line 336
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 337
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 343
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_2

    .line 344
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 330
    :cond_0
    :goto_1
    return-void

    .line 339
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 340
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    .line 348
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_7

    .line 352
    if-eqz p1, :cond_5

    .line 353
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 354
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 358
    const-string/jumbo v0, "continuous-picture"

    .line 359
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 360
    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_4

    .line 361
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 367
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 370
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1

    .line 364
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 365
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 364
    goto :goto_3

    .line 373
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZZ)V
    .locals 11
    .param p1, "moving"    # Z
    .param p2, "isSuccessful"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 380
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 381
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x1

    .line 386
    .local v0, "showFocusIndicator":Z
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 388
    const/4 v0, 0x0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_2

    .line 393
    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 394
    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v8, :cond_3

    .line 395
    :cond_2
    return-void

    .line 397
    :cond_3
    if-eqz p1, :cond_6

    .line 398
    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v8, :cond_4

    .line 399
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 401
    :cond_4
    const-string/jumbo v2, "FocusManager"

    const-string/jumbo v3, "Camera KPI: CAF start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    .line 403
    if-eqz v0, :cond_5

    .line 404
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 379
    :cond_5
    :goto_0
    return-void

    .line 407
    :cond_6
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 408
    .local v1, "state":I
    const-string/jumbo v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p2, :cond_8

    .line 410
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 411
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 416
    :goto_1
    if-eqz v0, :cond_7

    .line 417
    if-eqz p2, :cond_9

    .line 418
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 424
    :cond_7
    :goto_2
    if-ne v1, v8, :cond_5

    .line 425
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 426
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 427
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v2, :cond_a

    .line 428
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 413
    :cond_8
    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 414
    invoke-direct {p0, v10}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_1

    .line 420
    :cond_9
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_2

    .line 430
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 620
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .param p1, "a"    # D

    .prologue
    const/4 v6, 0x0

    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    .line 920
    const-wide/16 v4, 0xbb8

    .line 919
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 922
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 610
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 616
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 617
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 614
    return-void
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 605
    return-void
.end method

.method public onShutterDown()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 523
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->getTapAction()I

    move-result v0

    .line 524
    .local v0, "tapAction":I
    if-ne v1, v0, :cond_0

    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/camera/FocusManager;->focusPoint(IIIZ)V

    .line 522
    return-void

    .line 524
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 859
    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 8
    .param p1, "autoFocus"    # Z
    .param p2, "fromWhat"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    iget-boolean v4, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v4, :cond_0

    return-void

    .line 197
    :cond_0
    const/4 v3, 0x1

    .line 198
    .local v3, "tryAutoFocus":Z
    const/4 v0, 0x0

    .line 199
    .local v0, "autoFocusCalled":Z
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "focusMode":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 201
    const-string/jumbo v4, "auto"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 202
    const-string/jumbo v4, "macro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 200
    if-eqz v4, :cond_2

    .line 204
    :cond_1
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v4, v5, :cond_2

    .line 205
    const/4 v3, 0x0

    .line 209
    :cond_2
    const-string/jumbo v4, "continuous-picture"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 210
    .local v2, "isCaf":Z
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_5

    .line 232
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 234
    invoke-static {}, Lcom/android/camera/Device;->isHalDoesCafWhenFlashOn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 235
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v4, v7, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 195
    :cond_4
    :goto_1
    return-void

    .line 210
    :cond_5
    if-eqz v3, :cond_3

    .line 212
    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    .line 214
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v4}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 219
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_7
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    iput-boolean v7, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    .line 225
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 226
    iput-boolean v6, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 240
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    return-void
.end method

.method public requestAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 561
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 562
    :cond_0
    return-void

    .line 564
    :cond_1
    const/4 v0, 0x4

    .line 566
    .local v0, "from":I
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 569
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 570
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 571
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 572
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 577
    const/4 v0, 0x1

    .line 582
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 583
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 584
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 559
    return-void

    .line 579
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_0
.end method

.method public resetAfterCapture(Z)V
    .locals 2
    .param p1, "forceFocusCapture"    # Z

    .prologue
    .line 820
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    if-eqz p1, :cond_0

    .line 824
    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 825
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 826
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 827
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->removeMessages()V

    goto :goto_0

    .line 829
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0
.end method

.method public resetFocusIndicator()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 495
    return-void
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 709
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 710
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 711
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 712
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 713
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 717
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 708
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 811
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 812
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 814
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    .line 808
    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 863
    return-void
.end method

.method public setFrameView(Lcom/android/camera/ui/FrameView;)V
    .locals 0
    .param p1, "frameView"    # Lcom/android/camera/ui/FrameView;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 179
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 161
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    .line 162
    const-string/jumbo v0, "auto"

    .line 163
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    .line 164
    new-instance v4, Lcom/android/camera/portability/Camera1Parameters;

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {v4, v5}, Lcom/android/camera/portability/Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    .line 163
    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Lcom/android/camera/portability/ICameraParameters;)Ljava/util/List;

    move-result-object v3

    .line 161
    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 166
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    .line 166
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 159
    return-void

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 173
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 174
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 171
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 784
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mKeepFocusUIState:Z

    if-eqz v1, :cond_1

    .line 785
    :cond_0
    return-void

    .line 789
    :cond_1
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 791
    .local v0, "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    :goto_0
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v1, :cond_4

    .line 792
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 783
    :cond_2
    :goto_1
    return-void

    .line 790
    .end local v0    # "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    .restart local v0    # "focusIndicator":Lcom/android/camera/ui/FocusIndicator;
    goto :goto_0

    .line 793
    :cond_4
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v2, :cond_5

    .line 794
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 795
    :cond_5
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_1

    .line 797
    :cond_6
    const-string/jumbo v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 799
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_1

    .line 800
    :cond_7
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 801
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_1

    .line 802
    :cond_8
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 803
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_1
.end method
