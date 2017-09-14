.class Lcom/android/camera/module/CameraModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    .line 344
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "open_camera_times_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->prepareOpenCamera()V

    .line 356
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 357
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    .line 358
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_1

    return-void

    .line 360
    :cond_1
    const-string/jumbo v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CameraStartUpThread mCameraDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v4, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 365
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap12(Lcom/android/camera/module/CameraModule;)V

    .line 366
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get8(Lcom/android/camera/module/CameraModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_3

    .line 368
    :cond_2
    new-instance v2, Lcom/android/camera/CameraHardwareException;

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Failed to get parameters"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2, v6}, Lcom/android/camera/module/CameraModule;->-set2(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 393
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v7, v2, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    .line 394
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    .end local v1    # "e":Lcom/android/camera/CameraHardwareException;
    :goto_0
    return-void

    .line 370
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-get22(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 371
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->-wrap14(Lcom/android/camera/module/CameraModule;)V

    .line 372
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_5

    return-void

    .line 375
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 376
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 378
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v2, :cond_6

    return-void

    .line 380
    :cond_6
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 381
    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 385
    :goto_1
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->onCameraStartPreview()V

    .line 386
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/camera/module/CameraModule;->-set12(Lcom/android/camera/module/CameraModule;J)J

    .line 388
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "CameraStartUpThread done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 395
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v2, v6}, Lcom/android/camera/module/CameraModule;->-set2(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 397
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v7, v2, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    .line 398
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 383
    .end local v0    # "e":Lcom/android/camera/CameraDisabledException;
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1e

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
