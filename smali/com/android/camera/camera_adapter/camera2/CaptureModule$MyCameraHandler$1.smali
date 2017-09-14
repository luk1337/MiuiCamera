.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    .prologue
    .line 2707
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->setFocusType(Z)V

    .line 2711
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MyCameraHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 2709
    return-void
.end method
