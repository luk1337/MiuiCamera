.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->updateFocusStateChange(Landroid/hardware/camera2/CaptureResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

.field final synthetic val$resultAFState:I


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "val$resultAFState"    # I

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;->val$resultAFState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2568
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get13(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/FocusStateListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$12;->val$resultAFState:I

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->onFocusStatusUpdate(I)V

    .line 2566
    :cond_0
    return-void
.end method
