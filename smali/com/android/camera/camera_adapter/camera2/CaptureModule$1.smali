.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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
    .line 282
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private onAfDone(Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "aeState"    # Ljava/lang/Integer;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x3

    .line 285
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v0, p2, :cond_1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 284
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    .line 303
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap29(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 11
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 311
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 315
    return-void

    .line 317
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 318
    .local v3, "id":I
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 319
    .local v1, "afState":Ljava/lang/Integer;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 320
    .local v0, "aeState":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 381
    :pswitch_0
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    :goto_0
    :pswitch_1
    return-void

    .line 325
    :pswitch_2
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_AF_LOCK id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v8, v4, :cond_3

    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v9, v4, :cond_4

    .line 333
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 334
    invoke-direct {p0, v0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->onAfDone(Ljava/lang/Integer;I)V

    goto :goto_0

    .line 329
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v10, v4, :cond_3

    .line 330
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-eq v5, v4, :cond_3

    .line 331
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 332
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 339
    :pswitch_3
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_PRECAPTURE id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v0, :cond_5

    .line 341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 344
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 345
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto/16 :goto_0

    .line 342
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 343
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_2

    goto :goto_2

    .line 351
    :pswitch_4
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_AE_LOCK id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 353
    :cond_7
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v5, 0x6

    invoke-static {v4, v3, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    .line 354
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 355
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aeAfTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v6

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v6

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v8

    aget-wide v8, v8, v3

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v4, v3, :cond_8

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 357
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 359
    :cond_8
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto/16 :goto_0

    .line 363
    :pswitch_5
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_TOUCH_FOCUS id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v2

    .line 365
    .local v2, "hasCode":I
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 366
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3, v7}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap31(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    .line 367
    const/4 v2, 0x0

    .line 369
    :cond_9
    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v8, v4, :cond_a

    .line 370
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v9, v4, :cond_2

    .line 371
    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->onAfDone(Ljava/lang/Integer;I)V

    goto/16 :goto_0

    .line 375
    .end local v2    # "hasCode":I
    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v8, v4, :cond_b

    .line 376
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v5, v4, :cond_2

    .line 377
    :cond_b
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_AF_AE_LOCKED id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 399
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 400
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, p3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V

    .line 401
    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 398
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 390
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, p3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V

    .line 392
    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 389
    return-void
.end method
