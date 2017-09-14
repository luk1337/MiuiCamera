.class Lcom/android/camera/ui/SkinBeautyButton$1;
.super Landroid/os/Handler;
.source "SkinBeautyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SkinBeautyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/SkinBeautyButton;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$1;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton$1;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
