.class Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;
.super Ljava/lang/Object;
.source "MTKCameraProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotCallbackProxy"
.end annotation


# instance fields
.field private mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field final synthetic this$0:Lcom/android/camera/hardware/MTKCameraProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCameraProxy;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/hardware/MTKCameraProxy;
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->this$0:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .line 153
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onConinuousShotDone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/hardware/MTKCameraProxy$ContinuousShotCallbackProxy;->mContinuousCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;->onContinuousShotDone(I)V

    .line 162
    :cond_0
    return-object v2
.end method
