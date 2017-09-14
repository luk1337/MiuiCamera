.class public Lcom/android/camera/camera_adapter/VideoLC;
.super Lcom/android/camera/module/VideoModule;
.source "VideoLC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateVideoParametersPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 12
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 13
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoLC;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 14
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoLC;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 18
    aget v2, v0, v3

    .line 19
    aget v3, v0, v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 11
    :cond_0
    return-void
.end method
