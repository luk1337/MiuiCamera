.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
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
    .line 721
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 724
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    .line 722
    return-void
.end method
