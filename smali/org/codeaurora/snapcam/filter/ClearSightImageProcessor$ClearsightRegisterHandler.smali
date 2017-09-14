.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearsightRegisterHandler"
.end annotation


# instance fields
.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 945
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    .line 946
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 945
    return-void
.end method

.method private onFailure()V
    .locals 1

    .prologue
    .line 995
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    .line 996
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    .line 997
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    .line 994
    :cond_0
    return-void
.end method

.method private registerImage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 980
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 981
    .local v1, "isBayer":Z
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    .line 983
    .local v0, "image":Landroid/media/Image;
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->hasReferenceImage(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 985
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceImage(ZLandroid/media/Image;)V

    .line 979
    :cond_0
    :goto_1
    return-void

    .line 980
    .end local v0    # "image":Landroid/media/Image;
    .end local v1    # "isBayer":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isBayer":Z
    goto :goto_0

    .line 988
    .restart local v0    # "image":Landroid/media/Image;
    :cond_2
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->registerImage(ZLandroid/media/Image;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 989
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "registerImage : terminal error with input image"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 951
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 956
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 950
    :goto_0
    return-void

    .line 958
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    goto :goto_0

    .line 961
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->registerImage(Landroid/os/Message;)V

    goto :goto_0

    .line 965
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_1

    .line 966
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ClearsightRegisterHandler - handleTimeout"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->onFailure()V

    goto :goto_0

    .line 968
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2

    .line 969
    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ClearsightRegisterHandler - handleFailure"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->onFailure()V

    goto :goto_0

    .line 972
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    .line 972
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method
