.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->onCaptureDone(I)V
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
    .line 1398
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$10;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->enableCameraControls(Z)V

    .line 1400
    return-void
.end method
