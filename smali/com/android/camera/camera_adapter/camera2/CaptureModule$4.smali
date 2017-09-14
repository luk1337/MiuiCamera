.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


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
    .line 2857
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .prologue
    .line 2905
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    .prologue
    .line 2914
    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    .prologue
    .line 2894
    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    .prologue
    .line 2860
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .param p1, "a"    # D

    .prologue
    const/4 v6, 0x0

    .line 2866
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->isTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2865
    :cond_0
    :goto_0
    return-void

    .line 2867
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->isEvAdjustedTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get18(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v2

    .line 2869
    const-wide/16 v4, 0xbb8

    .line 2868
    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Z)Z

    .line 2871
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2872
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2874
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    .line 2875
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 2878
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 2881
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 2887
    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$4;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    sget v1, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->FRONT_ID:I

    invoke-static {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_0

    .line 2872
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 0
    .param p1, "orientation"    # F
    .param p2, "isLying"    # Z

    .prologue
    .line 2909
    return-void
.end method
