.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearsightImage"
.end annotation


# instance fields
.field private mImage:Landroid/media/Image;

.field private mRoiRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    .line 358
    return-void
.end method


# virtual methods
.method public getRoiRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVUBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getYBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setRoiRect([I)V
    .locals 6
    .param p1, "rect"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 371
    new-instance v0, Landroid/graphics/Rect;

    aget v1, p1, v3

    aget v2, p1, v5

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    add-int/2addr v3, v4

    aget v4, p1, v5

    .line 372
    const/4 v5, 0x3

    aget v5, p1, v5

    .line 371
    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    .line 373
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mImage:Landroid/media/Image;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$ClearsightImage;->mRoiRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    .line 370
    return-void
.end method
