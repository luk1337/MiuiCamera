.class public Lcom/android/camera/module/VideoModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/VideoModule;

    .prologue
    .line 3473
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    .line 3476
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3483
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 3486
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3487
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    .line 3488
    return-void

    .line 3490
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_2

    return-void

    .line 3492
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 3493
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3494
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraOpen()V

    .line 3495
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 3496
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap9(Lcom/android/camera/module/VideoModule;)V

    .line 3497
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_3

    return-void

    .line 3498
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 3499
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3481
    return-void
.end method
