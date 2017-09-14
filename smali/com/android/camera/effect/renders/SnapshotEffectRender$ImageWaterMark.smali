.class Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;
.super Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageWaterMark"
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPadding:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 291
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;III)V

    .line 293
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 294
    .local v1, "shotL":I
    int-to-float v2, v1

    const/high16 v3, 0x44870000    # 1080.0f

    div-float v0, v2, v3

    .line 295
    .local v0, "ratio":F
    float-to-double v2, v0

    const-wide v4, 0x404ca5afdf676a59L    # 57.294429708

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    .line 296
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mWidth:I

    .line 297
    float-to-double v2, v0

    const-wide v4, 0x4047469ee5848fd8L    # 46.551724138

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    .line 299
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, p2}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 300
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->calcCenterAxis()V

    .line 290
    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 307
    :sswitch_0
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 308
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 311
    :sswitch_1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 312
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 315
    :sswitch_2
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 316
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 319
    :sswitch_3
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 320
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPadding:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mWidth:I

    return v0
.end method
