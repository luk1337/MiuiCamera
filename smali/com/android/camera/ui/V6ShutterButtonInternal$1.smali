.class Lcom/android/camera/ui/V6ShutterButtonInternal$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6ShutterButtonInternal;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 77
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-wrap1(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    goto :goto_0

    .line 81
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->invalidate()V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get5(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 83
    .local v0, "duration":J
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get2(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-wrap0(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    .line 85
    return-void

    .line 87
    :cond_0
    long-to-float v3, v0

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get2(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 88
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get1(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get0(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get1(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 89
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get4(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    .end local v2    # "t":F
    :goto_1
    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-set0(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F

    .line 90
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->-get3(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x14

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    .restart local v2    # "t":F
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    goto :goto_1

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
