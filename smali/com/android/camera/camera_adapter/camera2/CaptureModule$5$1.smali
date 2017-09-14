.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    .line 683
    return-void
.end method
