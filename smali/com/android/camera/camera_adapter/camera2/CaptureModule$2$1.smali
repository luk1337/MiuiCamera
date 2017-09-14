.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    iget-object v1, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 428
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    iget-object v1, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    iget-object v2, v2, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->getAeCompensationRange(I)Landroid/util/Range;

    move-result-object v0

    .line 429
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    iget-object v1, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;

    iget-object v3, v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    .line 430
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 429
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/camera/ui/FocusView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;II)V

    .line 425
    return-void
.end method
