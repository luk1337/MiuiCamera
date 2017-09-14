.class Lcom/android/camera/SensorStateManager$2;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 347
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get2(Lcom/android/camera/SensorStateManager;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 348
    .local v2, "elapseTime":J
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/SensorStateManager$SensorStateListener;->isWorking()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5f5e100

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 350
    :cond_0
    return-void

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4}, Lcom/android/camera/SensorStateManager;->-get2(Lcom/android/camera/SensorStateManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 354
    :cond_2
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v4, v6, v7}, Lcom/android/camera/SensorStateManager;->-set0(Lcom/android/camera/SensorStateManager;J)J

    .line 355
    return-void

    .line 358
    :cond_3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    .line 359
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    .line 358
    add-float/2addr v4, v5

    .line 359
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    .line 358
    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 361
    .local v0, "a":D
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v4, v6, v7}, Lcom/android/camera/SensorStateManager;->-set0(Lcom/android/camera/SensorStateManager;J)J

    .line 363
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    .line 364
    iget-object v4, p0, Lcom/android/camera/SensorStateManager$2;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v4, v0, v1}, Lcom/android/camera/SensorStateManager;->-wrap4(Lcom/android/camera/SensorStateManager;D)V

    .line 346
    :cond_4
    return-void
.end method
