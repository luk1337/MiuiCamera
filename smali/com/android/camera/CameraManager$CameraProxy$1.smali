.class Lcom/android/camera/CameraManager$CameraProxy$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraManager$CameraProxy;

.field final synthetic val$jpeg:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$postview:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$raw:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$shutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraManager$CameraProxy;
    .param p2, "val$shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p3, "val$raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "val$postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p5, "val$jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$1;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v0}, Lcom/android/camera/CameraManager;->-get10(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 540
    return-void
.end method
