.class Lcom/android/camera/SensorStateManager$MainHandler;
.super Landroid/os/Handler;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SensorStateManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    .line 537
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 536
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 541
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 540
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->-wrap2(Lcom/android/camera/SensorStateManager;)V

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_0

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/camera/SensorStateManager;->-wrap5(Lcom/android/camera/SensorStateManager;IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
