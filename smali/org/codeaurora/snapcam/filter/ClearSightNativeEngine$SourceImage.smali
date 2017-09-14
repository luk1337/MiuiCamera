.class Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceImage"
.end annotation


# instance fields
.field mMetadata:[F

.field mVU:Ljava/nio/ByteBuffer;

.field mY:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;II)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
    .param p2, "ySize"    # I
    .param p3, "vuSize"    # I

    .prologue
    .line 347
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mY:Ljava/nio/ByteBuffer;

    .line 349
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mVU:Ljava/nio/ByteBuffer;

    .line 350
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$SourceImage;->mMetadata:[F

    .line 347
    return-void
.end method
