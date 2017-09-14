.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->capture(ZLandroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

.field final synthetic val$bayer:Z

.field final synthetic val$cam:I


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;IZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p2, "val$cam"    # I
    .param p3, "val$bayer"    # Z

    .prologue
    .line 369
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    iput-boolean p3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$bayer:Z

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
    .line 387
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "capture onCaptureCompleted - closing"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get14(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    move-result-object v0

    .line 392
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    .line 391
    const/4 v2, 0x2

    .line 392
    const/4 v3, 0x0

    .line 391
    invoke-virtual {v0, v2, v1, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 400
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "capture onCaptureFailed - closing"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get14(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;

    move-result-object v0

    .line 405
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    .line 404
    const/4 v2, 0x3

    .line 405
    const/4 v3, 0x0

    .line 404
    invoke-virtual {v0, v2, v1, v3, p3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .prologue
    .line 412
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureSequenceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .prologue
    .line 376
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture onCaptureStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$cam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->val$bayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightStarted()V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$1;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-set0(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Z)Z

    goto :goto_0
.end method
