.class Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonAudioSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonAudioSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-get3(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 134
    .local v0, "duration":J
    const-wide/16 v4, 0x1f4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    return-void

    .line 135
    :cond_0
    long-to-float v3, v0

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float v2, v3, v4

    .line 136
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-get2(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v5}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-get1(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-get2(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v6, v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-wrap0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;F)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-set1(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 137
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    const/high16 v4, -0x3c810000    # -255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit16 v4, v4, 0xff

    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-set0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->-get0(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x14

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->invalidate()V

    goto :goto_0

    .line 143
    .end local v0    # "duration":J
    .end local v2    # "t":F
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->invalidate()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
