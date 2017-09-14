.class Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationSensorEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 417
    const-string/jumbo v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 377
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    .line 378
    :cond_0
    const/high16 v6, -0x40800000    # -1.0f

    .line 380
    .local v6, "orientation":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 381
    .local v7, "y":F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v8, v9, v10

    .line 382
    .local v8, "z":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 383
    .local v0, "absY":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 385
    .local v1, "absZ":F
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x5

    .line 386
    .local v2, "hysteresis":I
    :goto_0
    add-int/lit8 v5, v2, 0x1a

    .line 387
    .local v5, "minBound":I
    rsub-int v4, v2, 0x99

    .line 388
    .local v4, "maxBound":I
    int-to-float v9, v5

    cmpg-float v9, v0, v9

    if-lez v9, :cond_1

    int-to-float v9, v4

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_9

    .line 389
    :cond_1
    int-to-float v9, v5

    cmpg-float v9, v1, v9

    if-lez v9, :cond_2

    int-to-float v9, v4

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_8

    :cond_2
    const/4 v9, 0x1

    :goto_1
    move v3, v9

    .line 390
    .local v3, "isLying":Z
    :goto_2
    if-eqz v3, :cond_3

    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 391
    cmpl-float v9, v0, v1

    if-lez v9, :cond_b

    .line 392
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_a

    const/4 v9, 0x0

    :goto_3
    int-to-float v6, v9

    .line 399
    :cond_3
    :goto_4
    const/high16 v9, 0x42b40000    # 90.0f

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {}, Lcom/android/camera/SensorStateManager;->-get0()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_e

    .line 400
    iget-object v10, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_d

    const/4 v9, 0x1

    :goto_5
    invoke-static {v10, v9}, Lcom/android/camera/SensorStateManager;->-wrap1(Lcom/android/camera/SensorStateManager;I)V

    .line 405
    :goto_6
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-ne v3, v9, :cond_4

    if-eqz v3, :cond_6

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v9

    cmpl-float v9, v6, v9

    if-eqz v9, :cond_6

    .line 406
    :cond_4
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9, v3}, Lcom/android/camera/SensorStateManager;->-set4(Lcom/android/camera/SensorStateManager;Z)Z

    .line 407
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 408
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9, v6}, Lcom/android/camera/SensorStateManager;->-set5(Lcom/android/camera/SensorStateManager;F)F

    .line 409
    :cond_5
    const-string/jumbo v9, "SensorStateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SensorEventListenerImpl TYPE_ORIENTATION mOrientation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 410
    const-string/jumbo v11, " mIsLying="

    .line 409
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 410
    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v11

    .line 409
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v10}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v10

    iget-object v11, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v11}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v11

    invoke-interface {v9, v10, v11}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    .line 376
    :cond_6
    return-void

    .line 385
    .end local v2    # "hysteresis":I
    .end local v3    # "isLying":Z
    .end local v4    # "maxBound":I
    .end local v5    # "minBound":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 389
    .restart local v2    # "hysteresis":I
    .restart local v4    # "maxBound":I
    .restart local v5    # "minBound":I
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 388
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 392
    .restart local v3    # "isLying":Z
    :cond_a
    const/16 v9, 0xb4

    goto/16 :goto_3

    .line 393
    :cond_b
    cmpg-float v9, v0, v1

    if-gez v9, :cond_3

    .line 394
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_c

    const/16 v9, 0x5a

    :goto_7
    int-to-float v6, v9

    goto/16 :goto_4

    :cond_c
    const/16 v9, 0x10e

    goto :goto_7

    .line 400
    :cond_d
    const/4 v9, 0x2

    goto/16 :goto_5

    .line 402
    :cond_e
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;->this$0:Lcom/android/camera/SensorStateManager;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/camera/SensorStateManager;->-wrap1(Lcom/android/camera/SensorStateManager;I)V

    goto/16 :goto_6
.end method
