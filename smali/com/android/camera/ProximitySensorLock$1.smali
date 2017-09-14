.class Lcom/android/camera/ProximitySensorLock$1;
.super Landroid/os/Handler;
.source "ProximitySensorLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ProximitySensorLock;


# direct methods
.method constructor <init>(Lcom/android/camera/ProximitySensorLock;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ProximitySensorLock;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "proximity_lock_keyguard_timeout_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->-wrap2(Lcom/android/camera/ProximitySensorLock;)V

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ProximitySensorLock$1;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->-get1(Lcom/android/camera/ProximitySensorLock;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v0, "ProximitySensorLock"

    const-string/jumbo v1, "delay check timeout, callback not returned, take it as far"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "proximity_lock_sensor_delay_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ProximitySensorLock;->-set0(Lcom/android/camera/ProximitySensorLock;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 107
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->-wrap0(Lcom/android/camera/ProximitySensorLock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->-get2(Lcom/android/camera/ProximitySensorLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/ProximitySensorLock$1;->this$0:Lcom/android/camera/ProximitySensorLock;

    invoke-static {v0}, Lcom/android/camera/ProximitySensorLock;->-wrap3(Lcom/android/camera/ProximitySensorLock;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
