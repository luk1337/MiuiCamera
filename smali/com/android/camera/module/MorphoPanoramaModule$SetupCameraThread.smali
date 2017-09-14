.class Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCameraThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;-><init>(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    .line 343
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 352
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-eqz v2, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    .line 358
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string/jumbo v3, "open_camera_times_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget v4, v4, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 360
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setHardwareListener(Lcom/android/camera/CameraManager$HardwareErrorListener;)V

    .line 361
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetupCameraThread mCameraDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v4, v4, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 365
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap6(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 366
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get13(Lcom/android/camera/module/MorphoPanoramaModule;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 367
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-eqz v2, :cond_2

    return-void

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-virtual {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->setDisplayOrientation()V

    .line 371
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap10(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 373
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v3, v3, Lcom/android/camera/module/MorphoPanoramaModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v3}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap2(Lcom/android/camera/module/MorphoPanoramaModule;Landroid/hardware/Camera$Parameters;)V

    .line 374
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    iget-boolean v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->mCancelled:Z

    if-eqz v2, :cond_3

    return-void

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap12(Lcom/android/camera/module/MorphoPanoramaModule;)V

    .line 377
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 378
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SetupCameraThread done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2, v7}, Lcom/android/camera/module/MorphoPanoramaModule;->-set5(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 385
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v5, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mCameraDisabled:Z

    .line 386
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 379
    .end local v0    # "e":Lcom/android/camera/CameraDisabledException;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {v2, v7}, Lcom/android/camera/module/MorphoPanoramaModule;->-set5(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;)Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;

    .line 381
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-boolean v5, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mOpenCameraFail:Z

    .line 382
    iget-object v2, p0, Lcom/android/camera/module/MorphoPanoramaModule$SetupCameraThread;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iget-object v2, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
