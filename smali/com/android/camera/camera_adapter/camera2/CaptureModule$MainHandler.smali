.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;
.super Landroid/os/Handler;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    .prologue
    .line 3088
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3091
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3090
    :goto_0
    return-void

    .line 3093
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MainHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap20(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    goto :goto_0

    .line 3091
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
