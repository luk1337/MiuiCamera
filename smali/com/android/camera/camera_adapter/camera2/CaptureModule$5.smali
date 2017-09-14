.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->createSession(I)V
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
    .line 669
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 734
    const-string/jumbo v0, "CaptureModule"

    const-string/jumbo v1, "captureSession - onClosed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 733
    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 717
    const-string/jumbo v0, "CaptureModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureSession - onConfigureFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    const-string/jumbo v1, "Camera Initialization Failed"

    .line 718
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 720
    const-string/jumbo v1, "Closing Camera"

    .line 718
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 721
    new-instance v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$2;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V

    const v2, 0x1040013

    .line 718
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 727
    const/4 v1, 0x0

    .line 718
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 728
    const v1, 0x1080027

    .line 718
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 716
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 673
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 674
    :cond_0
    return-void

    .line 676
    :cond_1
    const-string/jumbo v3, "CaptureModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "captureSession - onConfigured "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aput-object p1, v3, v4

    .line 679
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap21(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 680
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/Camera;

    move-result-object v3

    new-instance v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;

    invoke-direct {v4, p0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5$1;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 689
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 690
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->linkBayerMono(I)V

    .line 691
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 696
    :cond_3
    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap0(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 701
    :cond_4
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    .line 702
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 703
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v6

    .line 701
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 706
    :goto_0
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap3(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 707
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    move-result-object v3

    .line 708
    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    if-nez v4, :cond_7

    .line 707
    :goto_1
    invoke-virtual {v3, v1, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->onCaptureSessionConfigured(ZLandroid/hardware/camera2/CameraCaptureSession;)V

    .line 672
    :cond_5
    :goto_2
    return-void

    .line 697
    :cond_6
    iget-object v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get10(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v3, v3, v4

    .line 698
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 699
    iget-object v5, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get9(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Landroid/os/Handler;

    move-result-object v6

    .line 697
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$5;->val$id:I

    invoke-static {v1, v2, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap24(Lcom/android/camera/camera_adapter/camera2/CaptureModule;ILandroid/hardware/camera2/CameraAccessException;)V

    goto :goto_2

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_7
    move v1, v2

    .line 708
    goto :goto_1
.end method
