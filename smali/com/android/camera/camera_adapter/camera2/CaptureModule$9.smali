.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;
.super Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;->setUpCameraOutputs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 1344
    const-string/jumbo v1, "CaptureModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "raw image available for cam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;->mCamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$9;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/media/Image;)Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :goto_0
    return-void

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "CaptureModule"

    const-string/jumbo v2, "shot too fast "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
