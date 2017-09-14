.class public Lcom/android/camera/camera_adapter/camera2/FocusStateListener;
.super Ljava/lang/Object;
.source "FocusStateListener.java"


# instance fields
.field private mFocusView:Lcom/android/camera/ui/FocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 41
    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_ACTIVE_SCAN showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_FOCUSED_LOCKED showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    .line 56
    :pswitch_2
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_NOT_FOCUSED_LOCKED showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0

    .line 60
    :pswitch_3
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_FOCUSED showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_0

    .line 64
    :pswitch_4
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_SCAN showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_0

    .line 68
    :pswitch_5
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_UNFOCUSED showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0

    .line 72
    :pswitch_6
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_INACTIVE clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
