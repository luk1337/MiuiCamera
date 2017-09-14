.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->createEncodeImageReader(III)Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

.field final synthetic val$cam:I


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
    .param p2, "val$cam"    # I

    .prologue
    .line 454
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iput p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;->val$cam:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 457
    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jpeg image available for cam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;->val$cam:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get13(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;

    move-result-object v0

    .line 459
    iget v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$3;->val$cam:I

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 458
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageEncodeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    return-void
.end method
