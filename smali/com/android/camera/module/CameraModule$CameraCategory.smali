.class public Lcom/android/camera/module/CameraModule$CameraCategory;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 5571
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public takePicture(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 5573
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 5574
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v4, v0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 5575
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_0

    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5576
    :cond_0
    new-instance v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {v0, v5, p1}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    .line 5573
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 5572
    return-void

    .line 5577
    :cond_1
    new-instance v0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$CameraCategory;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {v0, v5, p1}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    goto :goto_0
.end method
