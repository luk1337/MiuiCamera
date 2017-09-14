.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, "id":I
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 466
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 467
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 462
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, "id":I
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 443
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 444
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 445
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 446
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 439
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, "id":I
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 454
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 455
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z

    move-result-object v1

    aput-boolean v4, v1, v0

    .line 456
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 457
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 458
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap25(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 450
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "id":I
    const-string/jumbo v2, "CaptureModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onOpened "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    aput-object p1, v2, v0

    .line 412
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get7(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Z

    move-result-object v2

    aput-boolean v6, v2, v0

    .line 413
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get6(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 414
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v2

    sget v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 423
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v2

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;

    invoke-direct {v3, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Ljava/util/List;)V

    .line 434
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$2;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    goto :goto_0
.end method
