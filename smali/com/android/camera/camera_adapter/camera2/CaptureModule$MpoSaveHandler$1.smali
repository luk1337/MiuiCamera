.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->saveMpoImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;
    .param p2, "val$orientation"    # I

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2794
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v2, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v4, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get16(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[B

    move-result-object v5

    iget v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->val$orientation:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;-><init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;[BIZ)V

    invoke-static {v2, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-set2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    .line 2795
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get12(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2796
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler$1;->this$1:Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;

    iget-object v0, v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$MpoSaveHandler;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap33(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    .line 2793
    return-void

    .line 2794
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
