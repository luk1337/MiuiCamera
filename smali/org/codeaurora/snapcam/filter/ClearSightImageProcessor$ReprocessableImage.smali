.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;
.super Ljava/lang/Object;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReprocessableImage"
.end annotation


# instance fields
.field final mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field final mImage:Landroid/media/Image;


# direct methods
.method constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    .line 479
    iput-object p2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 477
    return-void
.end method
