.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

.field final synthetic val$camId:I


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
    .param p2, "val$camId"    # I

    .prologue
    .line 766
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->val$camId:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 772
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 773
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reprocess - onCaptureCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->val$camId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 775
    .local v0, "ts":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    .line 776
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->val$camId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    .line 775
    invoke-virtual {v1, v4, v2, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 771
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 785
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 786
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reprocess - onCaptureFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->val$camId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 788
    .local v0, "ts":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->this$1:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    .line 789
    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;->val$camId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    .line 788
    invoke-virtual {v1, v4, v2, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 784
    return-void
.end method
