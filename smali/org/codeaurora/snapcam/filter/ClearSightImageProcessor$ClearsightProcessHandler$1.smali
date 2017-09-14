.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->sendReprocessRequest(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/Image;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

.field final synthetic val$camType:I


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;
    .param p2, "val$camType"    # I

    .prologue
    .line 1128
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->val$camType:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 1134
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1135
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encode - onCaptureCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->val$camType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v0, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v0

    .line 1137
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->val$camType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1136
    invoke-virtual {v0, v2, v1, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 1146
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 1147
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encode - onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->val$camType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    iget-object v0, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v0

    .line 1149
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler$1;->val$camType:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1148
    invoke-virtual {v0, v2, v1, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    return-void
.end method
