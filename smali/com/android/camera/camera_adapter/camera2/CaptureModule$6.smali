.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->captureStillPicture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "val$id"    # I

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 1131
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longShot onCaptureCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 1138
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longsShot onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 1145
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longsShot onCaptureSequenceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 1147
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$6;->val$id:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap26(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 1144
    return-void
.end method
