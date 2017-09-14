.class Lcom/android/camera/ui/V6EdgeShutterView$1;
.super Landroid/os/Handler;
.source "V6EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EdgeShutterView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-wrap1(Lcom/android/camera/ui/V6EdgeShutterView;)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-wrap0(Lcom/android/camera/ui/V6EdgeShutterView;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
