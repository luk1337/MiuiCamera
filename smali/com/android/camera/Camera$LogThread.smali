.class Lcom/android/camera/Camera$LogThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogThread"
.end annotation


# instance fields
.field private mRunFlag:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/Camera;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    .line 546
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 555
    invoke-static {}, Lcom/android/camera/Util;->initRangeList()V

    .line 556
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    if-eqz v1, :cond_1

    .line 558
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 559
    iget-object v1, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    iget-boolean v1, v1, Lcom/android/camera/Camera;->mPaused:Z

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/camera/Camera$LogThread;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/Util;->getDebugInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setRunFlag(Z)V
    .locals 0
    .param p1, "run"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/camera/Camera$LogThread;->mRunFlag:Z

    .line 549
    return-void
.end method
