.class Lcom/android/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    sparse-switch v1, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get10(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 135
    return-void

    .line 142
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set0(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set2(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v10

    .line 335
    .local v10, "e":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConcurrentModificationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v10    # "e":Ljava/util/ConcurrentModificationException;
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set7(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 150
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 151
    :catch_1
    move-exception v11

    .line 152
    .local v11, "ex":Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1, v11}, Lcom/android/camera/CameraManager;->-set7(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 336
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 337
    .local v9, "e":Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    .line 338
    .local v13, "hardwareFail":Z
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :try_start_5
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "camera hardware state test, use getParameters, msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 343
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "camera hardware state is normal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 350
    :cond_1
    :goto_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 355
    :goto_2
    if-eqz v13, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get3(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->notifyHardwareError()V

    .line 358
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set0(Lcom/android/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set2(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 361
    :cond_3
    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in camerahandler, mCameraError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get1(Lcom/android/camera/CameraManager;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v13, :cond_0

    .line 363
    throw v9

    .line 157
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "hardwareFail":Z
    :sswitch_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 161
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V
    :try_end_7
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 166
    :sswitch_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 167
    :catch_3
    move-exception v7

    .line 168
    .local v7, "e":Ljava/io/IOException;
    :try_start_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v7    # "e":Ljava/io/IOException;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 174
    return-void

    .line 177
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_0

    .line 181
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    .line 182
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    .line 181
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 186
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    .line 187
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    .line 186
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 191
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .line 195
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    .line 199
    :sswitch_c
    const-string/jumbo v14, "cancelAutoFocus failed"
    :try_end_9
    .catch Ljava/util/ConcurrentModificationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 201
    .local v14, "paramEmptyException":Ljava/lang/String;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 202
    :catch_4
    move-exception v8

    .line 203
    .local v8, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "paramEmptyException":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    .line 214
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 213
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 218
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    .line 222
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    .line 223
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$OnZoomChangeListener;

    .line 222
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    .line 227
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    .line 228
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$FaceDetectionListener;

    .line 227
    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    .line 232
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_0

    .line 236
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 240
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    .line 244
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    goto/16 :goto_0

    .line 248
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 251
    :sswitch_16
    const-string/jumbo v14, "getParameters failed (empty parameters)"
    :try_end_b
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 252
    .restart local v14    # "paramEmptyException":Ljava/lang/String;
    const/16 v16, 0x3

    .local v16, "retry_cnt":I
    move/from16 v17, v16

    .line 253
    .end local v16    # "retry_cnt":I
    .local v17, "retry_cnt":I
    :goto_3
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "retry_cnt":I
    .restart local v16    # "retry_cnt":I
    if-lez v17, :cond_0

    .line 255
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set5(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/util/ConcurrentModificationException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 257
    :catch_5
    move-exception v8

    .line 258
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    if-eqz v16, :cond_4

    move/from16 v17, v16

    .end local v16    # "retry_cnt":I
    .restart local v17    # "retry_cnt":I
    goto :goto_3

    .line 262
    .end local v17    # "retry_cnt":I
    .restart local v16    # "retry_cnt":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "paramEmptyException":Ljava/lang/String;
    .end local v16    # "retry_cnt":I
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    .line 273
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addRawImageCallbackBuffer([B)V

    goto/16 :goto_0

    .line 276
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isNeedFlashOn(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set3(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 279
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isFocusSuccessful(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set4(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 282
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->cancelContinuousMode(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 285
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set8(Lcom/android/camera/CameraManager;I)I

    goto/16 :goto_0

    .line 288
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setLongshotMode(Landroid/hardware/Camera;Z)V

    goto/16 :goto_0

    .line 291
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 292
    return-void

    .line 294
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/RectF;

    .line 295
    .local v15, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, v15, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v15, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/hardware/CameraHardwareProxy;->startObjectTrack(Landroid/hardware/Camera;IIII)V

    goto/16 :goto_0

    .line 298
    .end local v15    # "rect":Landroid/graphics/RectF;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->stopObjectTrack(Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 301
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    goto/16 :goto_0

    .line 304
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v3}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->isPreviewEnabled(Landroid/hardware/Camera;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/CameraManager;->-set6(Lcom/android/camera/CameraManager;Z)Z

    goto/16 :goto_0

    .line 307
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setBurstShotSpeed(Landroid/hardware/Camera;I)V
    :try_end_d
    .catch Ljava/util/ConcurrentModificationException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 311
    :sswitch_24
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/util/ConcurrentModificationException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 312
    :catch_6
    move-exception v7

    .line 313
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 317
    .end local v7    # "e":Ljava/io/IOException;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/CameraHardwareProxy;->setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    goto/16 :goto_0

    .line 324
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 331
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v1}, Lcom/android/camera/CameraManager;->-get8(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraManager$CameraHandler;->this$0:Lcom/android/camera/CameraManager;

    invoke-static {v2}, Lcom/android/camera/CameraManager;->-get0(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/util/ConcurrentModificationException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    .line 344
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v13    # "hardwareFail":Z
    :catch_7
    move-exception v12

    .line 345
    .local v12, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "camera hardware crashed "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 351
    .end local v12    # "ex":Ljava/lang/Exception;
    :catch_8
    move-exception v12

    .line 352
    .restart local v12    # "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "CameraManager"

    const-string/jumbo v2, "Fail to release the camera."

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_16
        0x15 -> :sswitch_1e
        0x16 -> :sswitch_0
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_13
        0x64 -> :sswitch_19
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1d
        0x6a -> :sswitch_1f
        0x6b -> :sswitch_20
        0x6c -> :sswitch_21
        0x6d -> :sswitch_1a
        0x6e -> :sswitch_22
        0x6f -> :sswitch_23
        0x70 -> :sswitch_24
        0x71 -> :sswitch_25
        0x72 -> :sswitch_9
        0x73 -> :sswitch_26
        0x74 -> :sswitch_27
        0x75 -> :sswitch_28
    .end sparse-switch
.end method
