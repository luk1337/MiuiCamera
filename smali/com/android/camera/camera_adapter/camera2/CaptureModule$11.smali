.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

.field final synthetic val$extra1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "val$extra1"    # Ljava/lang/Object;

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;->val$extra1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeBefore()V

    .line 1912
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$11;->val$extra1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap35(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1910
    return-void
.end method
